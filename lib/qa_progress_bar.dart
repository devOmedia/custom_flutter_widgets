import 'package:flutter/material.dart';

class QandAProgressBar extends StatefulWidget {
  final int currentGroup;
  final int totalGroups;
  final int currentQuestion;
  final int totalQuestions;

  const QandAProgressBar({
    super.key,
    required this.currentGroup,
    required this.totalGroups,
    required this.currentQuestion,
    required this.totalQuestions,
  });

  @override
  State<QandAProgressBar> createState() => _QandAProgressBarState();
}

class _QandAProgressBarState extends State<QandAProgressBar> {
  double _oldProgress = 0.0;

  @override
  void didUpdateWidget(covariant QandAProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Store old values for animation
    _oldProgress = _calculateProgress(
      oldWidget.currentGroup,
      oldWidget.totalGroups,
      oldWidget.currentQuestion,
      oldWidget.totalQuestions,
    );
  }

  double _calculateProgress(
    int group,
    int totalGroups,
    int question,
    int totalQuestions,
  ) {
    double questionProgress = question / totalQuestions;
    double totalProgress =
        ((group - 1) / totalGroups) + (questionProgress / totalGroups);
    return totalProgress.clamp(0.0, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    double totalProgress = _calculateProgress(
      widget.currentGroup,
      widget.totalGroups,
      widget.currentQuestion,
      widget.totalQuestions,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: _oldProgress, end: totalProgress),
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) {
          return Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      theme.colorScheme.primary.withValues(alpha: 0.12),
                      theme.colorScheme.primary.withValues(alpha: 0.08),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.06),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
              FractionallySizedBox(
                widthFactor: value,
                child: Container(
                  height: 5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        theme.colorScheme.secondary,
                        theme.colorScheme.primary,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: theme.colorScheme.primary.withValues(
                          alpha: 0.18,
                        ),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                      // Glowing effect
                      BoxShadow(
                        color: theme.colorScheme.primary.withValues(
                          alpha: 0.45,
                        ),
                        blurRadius: 18,
                        spreadRadius: 2,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned.fill(
              //   child: Center(
              //     child: Text(
              //       "${(value * 100).round()}% completed",
              //       style: theme.textTheme.labelLarge?.copyWith(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //         shadows: [
              //           Shadow(
              //             color: Colors.black.withOpacity(0.12),
              //             blurRadius: 2,
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
    // Card(
    //   elevation: 0,
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    //   margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         // Row(
    //         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         //   children: [
    //         //     Row(
    //         //       mainAxisSize: MainAxisSize.min,
    //         //       children: [
    //         //         Text(
    //         //           "Group ${widget.currentGroup} of ${widget.totalGroups}",
    //         //           style: theme.textTheme.bodySmall?.copyWith(
    //         //             color: theme.colorScheme.primary,
    //         //             fontWeight: FontWeight.w500,
    //         //           ),
    //         //         ),
    //         //         const SizedBox(width: 6),
    //         //         Text(
    //         //           "•",
    //         //           style: theme.textTheme.bodySmall?.copyWith(
    //         //             color: theme.colorScheme.primary,
    //         //             fontWeight: FontWeight.w500,
    //         //           ),
    //         //         ),
    //         //         const SizedBox(width: 6),
    //         //         Text(
    //         //           "Question ${widget.currentQuestion} of ${widget.totalQuestions}",
    //         //           style: theme.textTheme.bodySmall?.copyWith(
    //         //             color: theme.colorScheme.primary,
    //         //             fontWeight: FontWeight.w500,
    //         //           ),
    //         //         ),
    //         //       ],
    //         //     ),
    //         //     TweenAnimationBuilder<int>(
    //         //       tween: IntTween(begin: _oldPercent, end: percent),
    //         //       duration: const Duration(milliseconds: 700),
    //         //       builder: (context, value, child) {
    //         //         return Text(
    //         //           "$value%",
    //         //           style: theme.textTheme.titleLarge?.copyWith(
    //         //             fontWeight: FontWeight.w800,
    //         //             color: theme.colorScheme.primary,
    //         //             // Optionally add a digital/rolling effect font here
    //         //           ),
    //         //         );
    //         //       },
    //         //     ),
    //         //   ],
    //         // ),
    //         // const SizedBox(height: 12),
    //         TweenAnimationBuilder<double>(
    //           tween: Tween<double>(begin: _oldProgress, end: totalProgress),
    //           duration: const Duration(milliseconds: 700),
    //           curve: Curves.easeOutCubic,
    //           builder: (context, value, child) {
    //             return Stack(
    //               alignment: Alignment.centerLeft,
    //               children: [
    //                 Container(
    //                   height: 22,
    //                   decoration: BoxDecoration(
    //                     gradient: LinearGradient(
    //                       colors: [
    //                         theme.colorScheme.primary.withOpacity(0.12),
    //                         theme.colorScheme.primary.withOpacity(0.08),
    //                       ],
    //                       begin: Alignment.centerLeft,
    //                       end: Alignment.centerRight,
    //                     ),
    //                     borderRadius: BorderRadius.circular(12),
    //                     boxShadow: [
    //                       BoxShadow(
    //                         color: Colors.black.withOpacity(0.06),
    //                         blurRadius: 6,
    //                         offset: const Offset(0, 2),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 FractionallySizedBox(
    //                   widthFactor: value,
    //                   child: Container(
    //                     height: 22,
    //                     decoration: BoxDecoration(
    //                       gradient: LinearGradient(
    //                         colors: [
    //                           theme.colorScheme.secondary,
    //                           theme.colorScheme.primary,
    //                         ],
    //                         begin: Alignment.centerLeft,
    //                         end: Alignment.centerRight,
    //                       ),
    //                       borderRadius: BorderRadius.circular(12),
    //                       boxShadow: [
    //                         BoxShadow(
    //                           color: theme.colorScheme.primary.withOpacity(
    //                             0.18,
    //                           ),
    //                           blurRadius: 8,
    //                           offset: const Offset(0, 2),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //                 Positioned.fill(
    //                   child: Center(
    //                     child: Text(
    //                       "${(value * 100).round()}% completed",
    //                       style: theme.textTheme.labelLarge?.copyWith(
    //                         color: Colors.white,
    //                         fontWeight: FontWeight.bold,
    //                         shadows: [
    //                           Shadow(
    //                             color: Colors.black.withOpacity(0.12),
    //                             blurRadius: 2,
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             );
    //           },
    //         ),
    //         const SizedBox(height: 16),
    //       ],
    //     ),
    //   ),
    // )
  }
}
