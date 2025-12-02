import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors {
  static const Color colorPrimary = Color(0XFFE9522B);
  static const MaterialColor colorPrimarySwatch = MaterialColor(0XFFE9522B, {
    50: Color.fromRGBO(233, 82, 43, .1),
    100: Color.fromRGBO(233, 82, 43, .2),
    200: Color.fromRGBO(233, 82, 43, .3),
    300: Color.fromRGBO(233, 82, 43, .4),
    400: Color.fromRGBO(233, 82, 43, .5),
    500: Color.fromRGBO(233, 82, 43, .6),
    600: Color.fromRGBO(233, 82, 43, .7),
    700: Color.fromRGBO(233, 82, 43, .8),
    800: Color.fromRGBO(233, 82, 43, .9),
    900: Color.fromRGBO(233, 82, 43, 1),
  });

  static const Color buttonColorRedPink = Color(0xFFE11D48);
  static const Color colorSecondary = Color(0xFFFFE2E2);

  static const Color bgColorRed = Color(0xFFC31212);
  static const Color subTextColor = Color(0xFFB7B7B7);
  static const Color greenColor = Color(0xFF0ECA36);
  static const Color informationColor = Color(0xFFFFAB00);
  static const Color warningColor = Color(0xFFE92B2B);
  static const Color warningBgColor = Color(0xFFFEEFEC);
  static const Color disableColor = Color(0xFFABABAB);
  static const Color disableBgColor = Color(0xFFE5E5E5);
  static const Color cardBgColor = Color(0xFFFFEBE5);
  static const Color pageBackground = Color(0xFFF2F2F2);
  static const Color textColorRed = chartGradientEnd;
  static const Color verticalDividerColorRed = Color(0xFFFFD8CC);

  static const Color iconBgColorRed = Color(0xFFDB1414);

  // ------------- Light Theme Colors ---------------------
  static const Color lightTextPrimaryColor = Color(0xFF241814);
  static const Color lightTextSecondaryColor = Color(0xFF5B5B5B);
  static const Color lightBgColor = Color(0xFFF2F2F2);
  static const Color lightStockColor = Color(0xFFE8E4E2);
  static const Color lightShapeColor = Color(0xFFFFFFFF);
  static const Color lightInputBorderColor = Color(0xFFE8E4E2);
  static const Color lightHintTextColor = Color(0xFF5B5B5B);
  static const Color iconBgColorLight = Color(0xFFFFEBE5);
  static const Color lightBgColorSecondary = Color(0xFFF2F2F2);
  static const Color lightBgColorTertiary = Color(0xFFF2F4F7);
  static const Color lightWarningColorBG = Color(0XFFFEF7E8);
  static const Color lightBorderGrayColor = Color(0xFFE1E4E9);
  static const Color lightCardBgColor = Color(0xFFF5F5F5);
  static const Color lightAppBarBgColor = Color(0xFFD9D9D9);
  static const Color lightIconColor = Color(0xFF686868);

  // ----------------- Dark Theme Colors ----------------------

  static const Color darkBgColor = Color(0xFF0D0D0D);
  static const Color darkTextPrimaryColor = Color(0xFFFFFFFF);
  static const Color darkTextSecondaryColor = Color(0xFFB7B7B7);
  static const Color darkStockColor = Color(0xFF2B2B2B);
  static const Color darkShapeColor = Color(0xFF1F1F1F);
  static const Color iconBgColorDark = Color(0xFF2B2B2B);
  static const Color darkBgColorSecondary = Color(0xFF1F1F1F);

  static const Color redProgressColor = Color(0xFFFF1B1F);
  static const Color black = Colors.black;
  static const Color black11 = Colors.black26;
  static const Color secondaryBg2Color = Color(0xFFFFEBE5);
  static const Color screenBgColor = Color(0xFF0d0d0d);
  static const Color greyColor1 = Color(0xFF2B2B2B);
  static const Color darkWarningColorBG = Color(0XFFFEF7E8);

  //..............

  static const Color hintTextColor = Color(0xFF8E8E93);
  static const Color menuSubColor = Color(0xFF575757);
  static const Color authBackground = Color(0xFFF4F4FB);

  static Color elevatedContainerColorOpacity = Colors.grey.withAlpha(
    128,
  ); // 0.5 opacity

  // error image bg color
  static const Color errorImageBgColor = Color(0xffF3F5F9);

  // image error color
  static const Color imageErrorColor = Color(0xff8D949D);

  static const Color secondaryBgColor = Color(0xffefeff4);

  // Button disable color
  static const Color buttonDisableColor = Color(0xffBDBDBD);
  static const Color messageTextColor = Color(0xFF111B21);

  static const Color colorDelete = Color(0xFFE53935);
  static const Color echoMessageBgColor = Color(0xFFBBDEFB);

  static const Color positiveBorderColor = Color(0XFF0CAC2E);
  static const Color positiveBgColor = Color(0XFFE8FBEC);
  static const Color darkBgColorPositive = Color(0XFF0D0D0D);

  // Gradient colors
  static const Color gradientRedStart = Color(0xFFD93B3B);
  static const Color gradientRedMiddle = Color(0xFFE47A7B);
  static const Color gradientRedEnd = Color(0xFFF29191);

  static const Color gradientBlueStart = Color(0xFF3E8CC3);
  static const Color gradientBlueMiddle = Color(0xFF82BBDF);
  static const Color gradientBlueEnd = Color(0xFFB9DCF6);

  static const Color gradientGreenStart = Color(0xFF3BAB55);
  static const Color gradientGreenMiddle = Color(0xFF75CC88);
  static const Color gradientGreenEnd = Color(0xFFBEF7CD);

  static const LinearGradient redGradient = LinearGradient(
    colors: [gradientRedStart, gradientRedMiddle, gradientRedEnd],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.0, 0.5, 1.0],
  );

  static const LinearGradient blueGradient = LinearGradient(
    colors: [gradientBlueStart, gradientBlueMiddle, gradientBlueEnd],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.0, 0.5, 1.0],
  );

  static const LinearGradient greenGradient = LinearGradient(
    colors: [gradientGreenStart, gradientGreenMiddle, gradientGreenEnd],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.0, 0.5, 1.0],
  );

  static const Color chartGradientStart = Color(0xFF241814);

  static const Color chartGradientEnd = Color(0xFFC31212);

  static const LinearGradient chartGradient = LinearGradient(
    colors: [chartGradientStart, chartGradientEnd],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: [0.0, 1.0],
  );

  static const LinearGradient lineChartGradient = LinearGradient(
    colors: [chartGradientStart, chartGradientEnd],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.0, 1.0],
  );
}

class IconDarkTheme {
  /// Defines the text styling for the dark theme, following Material 3 typography guidelines.
  /// This ensures a consistent look and feel for all text elements in the app.
  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.inter(
      fontSize: 56,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.inter(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.inter(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    headlineLarge: GoogleFonts.inter(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: AppColors.darkTextSecondaryColor,
      height: 1.3,
    ),
    headlineSmall: GoogleFonts.inter(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    titleLarge: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: Colors.white,
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.50,
      color: Colors.white,
    ),

    bodyLarge: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.white.withValues(alpha: 0.9),
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.white.withValues(alpha: 0.9),
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.white.withValues(alpha: 0.9),
    ),

    labelLarge: GoogleFonts.inter(
      fontSize: 9,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.white,
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: 8,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: 8,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
  );

  static ThemeData androidDarkTheme = ThemeData(
    textTheme: _darkTextTheme,
    primarySwatch: AppColors.colorPrimarySwatch,
    primaryColor: AppColors.colorPrimary,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBgColor,
    cardColor: AppColors.cardBgColor,
    useMaterial3: true,
    iconTheme: IconThemeData(color: AppColors.darkTextPrimaryColor, size: 24),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.darkTextPrimaryColor,
        iconSize: 24,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.darkStockColor,
      thickness: 1,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBgColor,
      elevation: 0,
      foregroundColor: Colors.white,
    ),

    tabBarTheme: TabBarThemeData(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(width: 2.0, color: AppColors.colorPrimary),
      ),
      labelColor: AppColors.colorPrimary,
      unselectedLabelColor: Colors.white.withValues(alpha: 0.7),
    ),

    cardTheme: CardThemeData(
      elevation: 2,
      color: AppColors.darkShapeColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.darkShapeColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.darkShapeColor,
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.colorPrimary,
      brightness: Brightness.dark,

      // --- Core Brand Colors ---
      primary: AppColors.colorPrimary,
      onPrimaryContainer: AppColors.darkShapeColor,
      // Assuming AppColors has a secondary color defined
      // secondary: AppColors.colorSecondary,
      error: AppColors.warningColor,

      // --- Surface and Background Colors ---
      // Aligns with scaffoldBackgroundColor
      // Aligns with cardColor and dialogTheme.backgroundColor
      surface: AppColors.darkShapeColor,

      // --- "On" Colors (for text and icons) ---
      // Defines the color of content placed on top of the key colors above.
      // Setting these explicitly ensures high contrast.
      onPrimary: Colors.white,
      // onSecondary: Colors.black,
      onError: AppColors.warningColor,
      onSurface: Colors.white,
      onSurfaceVariant: Colors.white,
      surfaceContainerHighest: AppColors.darkShapeColor,

      // --- Other Colors ---
      // Aligns with the border color used in InputDecorationTheme
      outline: AppColors.darkStockColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkShapeColor,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.6)),
      // Lighter hint text
      // Ensure icon colors are also light
      iconColor: Colors.white.withValues(alpha: 0.6),
      // Your border definitions are good, but you might want to adjust the
      // enabledBorder color to be less prominent in a dark theme.
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.darkStockColor, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.darkStockColor, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.colorPrimary, width: 0.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.warningColor, width: 0.5),
      ),
    ),
  );
}
