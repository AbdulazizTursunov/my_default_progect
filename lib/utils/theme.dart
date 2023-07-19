import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppTheme {
  /// --------------------------- dark theme -----------------------------//

  static final ThemeData darkTheme = ThemeData(
    /// ------------------------scaffold background theme ------------------//
    scaffoldBackgroundColor: Colors.black,
    /// ----------------- app bar theme -----------------
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      /// ------------------------------status bar theme-------------------------//
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.black),
    ),
    /// --------------------------icon theme ------------------------------------//
    iconTheme: IconThemeData(color: Colors.grey),

    /// --------------------------- text theme ----------------------------------//
    textTheme: TextTheme(
      ///display
      displayLarge: TextStyle(
          color: AppColors.white,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),
      displayMedium: TextStyle(
          color: AppColors.white,
          fontSize: 45,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      displaySmall: TextStyle(
          color: AppColors.white,
          fontSize: 36,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      ////headline
      headlineLarge: TextStyle(
          color: AppColors.white,
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      headlineMedium: TextStyle(
          color: AppColors.white,
          fontSize: 28,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      headlineSmall: TextStyle(
          color: AppColors.white,
          fontSize: 24,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),

     ///title
      titleLarge: TextStyle(
          color: AppColors.white,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      titleMedium: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      titleSmall: TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      ///label
      labelLarge: TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      labelMedium: TextStyle(
          color: AppColors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      labelSmall: TextStyle(
          color: AppColors.white,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      ///body
      bodySmall: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      bodyMedium: TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      bodyLarge: TextStyle(
          color: AppColors.white,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),
    ),

    /// ----------------------------------- popup menu theme --------------------//
    popupMenuTheme: PopupMenuThemeData(
        color: Colors.black,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 12,
        )),
  );

  /// -------------------------------------light theme --------------------------//
  static final ThemeData lightTheme = ThemeData(
    /// ------------------------scaffold background theme ------------------//

    scaffoldBackgroundColor: Colors.white,

    /// ----------------- app bar theme -----------------
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,

      /// ------------------------------status bar theme-------------------------//
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
    ),

    /// ----------------------------------- popup menu theme --------------------//
    popupMenuTheme: PopupMenuThemeData(
        color: Colors.white,
        textStyle: TextStyle(color: Colors.black, fontSize: 12)),
    iconTheme: IconThemeData(color: Colors.grey),

    /// --------------------------- text theme ----------------------------------//
    textTheme: TextTheme(
      ///display
      displayLarge: TextStyle(
          color: AppColors.black,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),
      displayMedium: TextStyle(
          color: AppColors.black,
          fontSize: 45,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      displaySmall: TextStyle(
          color: AppColors.black,
          fontSize: 36,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
     ///headline
      headlineLarge: TextStyle(
          color: AppColors.black,
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      headlineMedium: TextStyle(
          color: AppColors.black,
          fontSize: 28,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      headlineSmall: TextStyle(
          color: AppColors.black,
          fontSize: 24,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),

      ///title
      titleLarge: TextStyle(
          color: AppColors.black,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      titleMedium: TextStyle(
          color: AppColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      titleSmall: TextStyle(
          color: AppColors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      ///label
      labelLarge: TextStyle(
          color: AppColors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      labelMedium: TextStyle(
          color: AppColors.black,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      labelSmall: TextStyle(
          color: AppColors.black,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      ///body
      bodySmall: TextStyle(
          color: AppColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      bodyMedium: TextStyle(
          color: AppColors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      bodyLarge: TextStyle(
          color: AppColors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),
    ),
  );
}
