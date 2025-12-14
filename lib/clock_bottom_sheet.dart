import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// ================= ENUM =================
enum ClockMode { timer, stopwatch }

/// ================= CONTROLLER =================
class ClockController extends GetxController {
  final mode = ClockMode.timer.obs;
  final isRunning = false.obs;

  // Timer
  final totalSeconds = 60.obs;
  final remainingSeconds = 60.obs;

  // Stopwatch
  final elapsedSeconds = 0.obs;

  Timer? _ticker;

  /// ---------------- MODE ----------------
  void switchMode(ClockMode newMode) {
    stop();
    mode.value = newMode;
    reset();
  }

  /// ---------------- TIMER ----------------
  void addSeconds(int value) {
    if (mode.value != ClockMode.timer || isRunning.value) return;

    totalSeconds.value = (totalSeconds.value + value).clamp(15, 3600);
    remainingSeconds.value = totalSeconds.value;
  }

  /// ---------------- START / STOP ----------------
  void start() {
    if (isRunning.value) return;
    isRunning.value = true;

    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mode.value == ClockMode.timer) {
        if (remainingSeconds.value > 0) {
          remainingSeconds.value--;
        } else {
          stop();
        }
      } else {
        elapsedSeconds.value++;
      }
    });
  }

  void stop() {
    _ticker?.cancel();
    _ticker = null;
    isRunning.value = false;
  }

  void reset() {
    remainingSeconds.value = totalSeconds.value;
    elapsedSeconds.value = 0;
  }

  /// ---------------- DISPLAY ----------------
  String get displayText {
    if (mode.value == ClockMode.timer) {
      final m = remainingSeconds.value ~/ 60;
      final s = remainingSeconds.value % 60;
      return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
    } else {
      final h = elapsedSeconds.value ~/ 3600;
      final m = (elapsedSeconds.value % 3600) ~/ 60;
      final s = elapsedSeconds.value % 60;

      return h > 0
          ? '${h.toString().padLeft(2, '0')}:'
                '${m.toString().padLeft(2, '0')}:'
                '${s.toString().padLeft(2, '0')}'
          : '${m.toString().padLeft(2, '0')}:'
                '${s.toString().padLeft(2, '0')}';
    }
  }

  /// ---------------- PROGRESS ----------------
  double? get progress {
    if (mode.value == ClockMode.timer) {
      // Timer: smooth progress based on remaining seconds
      if (totalSeconds.value == 0) return 0;
      return remainingSeconds.value / totalSeconds.value;
    } else {
      // Stopwatch: progress for the current minute only
      final secondsThisMinute = elapsedSeconds.value % 60;
      return secondsThisMinute / 60;
    }
  }

  @override
  void onClose() {
    _ticker?.cancel();
    super.onClose();
  }
}

/// ================= BOTTOM SHEET =================
void showClockBottomSheet(BuildContext context) {
  final controller = Get.put(ClockController(), tag: UniqueKey().toString());

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    builder: (_) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Clock', style: TextStyle(fontSize: 18)),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Get.delete<ClockController>();
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),

              const SizedBox(height: 16),

              /// Mode Switch
              Row(
                children: [
                  _modeButton(controller, 'Timer', ClockMode.timer),
                  const SizedBox(width: 8),
                  _modeButton(controller, 'Stopwatch', ClockMode.stopwatch),
                ],
              ),

              const SizedBox(height: 24),

              /// BIG PROGRESS DIAL
              SizedBox(
                height: 240,
                width: 240,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 240,
                      width: 240,
                      child: CircularProgressIndicator(
                        value: controller.progress,
                        strokeWidth: 14,
                      ),
                    ),
                    Text(
                      controller.displayText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              /// TIMER CONTROLS
              if (controller.mode.value == ClockMode.timer)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _circleButton('-15s', () => controller.addSeconds(-15)),
                    _circleButton('+15s', () => controller.addSeconds(15)),
                  ],
                ),

              const SizedBox(height: 24),

              /// START / STOP
              /// ---------------- START / STOP + RESET ----------------
              Row(
                children: [
                  // Start / Stop button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: controller.isRunning.value
                          ? controller.stop
                          : controller.start,
                      child: Text(
                        controller.isRunning.value ? 'Stop' : 'Start',
                      ),
                    ),
                  ),

                  const SizedBox(width: 16),

                  // Reset button (only visible when running)
                  if (controller.isRunning.value)
                    Expanded(
                      child: ElevatedButton(
                        onPressed: controller.reset,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.grey, // optional: different color
                        ),
                        child: const Text('Reset'),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

/// ================= UI HELPERS =================
Widget _modeButton(ClockController controller, String label, ClockMode mode) {
  final active = controller.mode.value == mode;

  return Expanded(
    child: GestureDetector(
      onTap: () => controller.switchMode(mode),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: active ? Colors.red.shade100 : Colors.grey.shade300,
        ),
        child: Center(child: Text(label)),
      ),
    ),
  );
}

Widget _circleButton(String text, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: CircleAvatar(radius: 30, child: Text(text)),
  );
}
