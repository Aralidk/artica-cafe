import 'package:flutter/material.dart';

class Constants {
  static String appName = "Artica Cafe";

  static ThemeData AppTheme(colorSet) {
    return ThemeData(
      primarySwatch: const MaterialColor(4279050551, {
        50: Color(0xffeaf2fa),
        100: Color(0xffd6e5f5),
        200: Color(0xffadcbec),
        300: Color(0xff83b0e2),
        400: Color(0xff5a96d8),
        500: Color(0xff317cce),
        600: Color(0xff2763a5),
        700: Color(0xff1d4a7c),
        800: Color(0xff133152),
        900: Color(0xff0a1929)
      }),
      colorScheme: ColorScheme(
          secondary: colorSet.generalOrange,
          brightness: colorSet.brightness,
          primary: colorSet.primaryColor,
          onPrimary: colorSet.primaryColorLight,
          onSecondary: colorSet.generalOrange,
          surface: colorSet.primaryColorLight,
          onSurface: colorSet.primaryColorLight,
          background: colorSet.primaryColor,
          error: colorSet.primaryColorLight,
          onError: colorSet.primaryColorLight,
          onBackground: colorSet.primaryColor),
      brightness: colorSet.brightness,
      primaryColor: colorSet.primaryColor,
      primaryColorLight: colorSet.primaryColorLight,
      primaryColorDark: colorSet.primaryColorDark,
      canvasColor: colorSet.canvasColor,
      scaffoldBackgroundColor: colorSet.scaffoldBackgroundColor,
      cardColor: colorSet.cardColor,
      dividerColor: colorSet.dividerColor,
      highlightColor: colorSet.highlightColor,
      splashColor: colorSet.splashColor,
      unselectedWidgetColor: colorSet.unselectedWidgetColor,
      disabledColor: colorSet.disabledColor,
      dialogBackgroundColor: colorSet.primaryColor,
      indicatorColor: colorSet.generalUsageColor,
      hintColor: colorSet.generalGrey,

      // içi dolu
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8.0),
        backgroundColor: colorSet.generalOrange,
        minimumSize: const Size(100, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: colorSet.generalOrange),
        ),
      )),

      fontFamily: 'Poppins',
      focusColor: colorSet.generalOrange,

      // içi boş
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(8.0),
        backgroundColor: Colors.transparent,
        minimumSize: const Size(100, 50),
        foregroundColor: colorSet.generalUsageColor,
        side: BorderSide(color: colorSet.generalOrange, width: 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      )),

      // underlined
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(8.0),
              backgroundColor: Colors.transparent,
              minimumSize: const Size(100, 50),
              foregroundColor: colorSet.generalUsageColor,
              textStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: colorSet.generalUsageColor,
                  decoration: TextDecoration.underline))),

      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
            color: colorSet.generalUsageColor),
        helperStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
        hintStyle: TextStyle(
            color: colorSet.disabledColor,
            fontSize: 13,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins'),
        errorStyle: TextStyle(
            color: colorSet.errorColor,
            fontSize: 13,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins'),
        errorMaxLines: 2,
        isDense: false,
        contentPadding:
            const EdgeInsets.only(top: 24, bottom: 16, left: 12, right: 12),
        isCollapsed: false,
        prefixStyle: TextStyle(
            fontSize: 13,
            color: colorSet.generalDark,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins'),
        suffixStyle: TextStyle(
            fontSize: 13,
            color: colorSet.generalDark,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins'),
        counterStyle: TextStyle(
          color: colorSet.generalDark,
          fontSize: null,
          fontWeight: FontWeight.w400,
        ),
        filled: false,
        focusColor: Colors.transparent,
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorSet.errorColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 4),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorSet.generalOrange,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 4),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorSet.errorColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 4),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorSet.generalOrange,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 4),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorSet.generalUsageColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 4),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorSet.generalGrey,
            width: 5,
            style: BorderStyle.solid,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      iconTheme: IconThemeData(
        color: colorSet.generalUsageColor,
        opacity: 1,
        size: 24,
      ),

      expansionTileTheme: ExpansionTileThemeData(
          backgroundColor: colorSet.primaryColor,
          collapsedBackgroundColor: colorSet.primaryColor,
          collapsedIconColor: colorSet.generalUsageColor,
          iconColor: colorSet.generalUsageColor,
          textColor: colorSet.generalUsageColor,
          collapsedTextColor: colorSet.generalUsageColor),

      popupMenuTheme: PopupMenuThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: colorSet.generalOrange, width: 1)),
          textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              color: colorSet.generalUsageColor),
          labelTextStyle: MaterialStateProperty.all(TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: colorSet.generalUsageColor))),

      primaryIconTheme: IconThemeData(
        color: colorSet.generalDark,
        opacity: 1,
        size: 24,
      ),

      sliderTheme: SliderThemeData(
        activeTrackColor: colorSet.generalOrange,
        inactiveTrackColor: colorSet.generalGrey,
        thumbColor: colorSet.generalUsageColor,
        disabledThumbColor: colorSet.generalGrey,
        showValueIndicator: ShowValueIndicator.never,
      ),
      tabBarTheme: TabBarTheme(
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: colorSet.generalUsageColor,
          unselectedLabelColor: colorSet.generalUsageColor,
          indicatorColor: Colors.indigo,
          labelStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w500)),

      switchTheme: SwitchThemeData(
          splashRadius: 0,
          trackColor: MaterialStateProperty.all(colorSet.generalUsageColor),
          thumbColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(colorSet.generalUsageColor)),

      dividerTheme: DividerThemeData(
        color: colorSet.generalGrey,
      ),

      // TODO text bilgileri geldiğinde güncelle
      primaryTextTheme: TextTheme(
        headlineMedium: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: colorSet.primaryColor),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(colorSet.generalOrange),
        checkColor: MaterialStateProperty.all(Colors.white),
        splashRadius: 0,
      ),

      radioTheme: RadioThemeData(
        splashRadius: 0,
        fillColor: MaterialStateProperty.all(colorSet.generalOrange),
      ),

      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorSet.generalUsageColor)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorSet.generalUsageColor)),
          labelStyle: TextStyle(
            color: colorSet.generalUsageColor,
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),

      chipTheme: ChipThemeData(
        backgroundColor: colorSet.primaryColorDark,
        brightness: Brightness.light,
        deleteIconColor: Colors.white,
        disabledColor: colorSet.generalGrey,
        labelPadding:
            const EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
        labelStyle: TextStyle(
            color: colorSet.generalUsageColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
            fontFamily: 'Poppins'),
        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
        secondaryLabelStyle: TextStyle(
            color: colorSet.primaryColorDark,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins'),
        selectedColor: colorSet.generalOrange,
        shape: const StadiumBorder(
            side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        )),
      ),
      dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
        side: BorderSide(
          color: colorSet.primaryColor,
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      )),
    );
  }
}

class LightColorSet {
  final Brightness brightness = Brightness.light;
  final Color primaryColor = Colors.white;
  final Color primaryColorLight = Colors.indigo;
  final Color primaryColorDark = Colors.indigo;
  final Color canvasColor = const Color(0xfffafafa);
  final Color scaffoldBackgroundColor = const Color(0xfffafafa);
  final Color cardColor = const Color(0xffffffff);
  final Color dividerColor = const Color(0x1f000000);
  final Color highlightColor = const Color(0x66bcbcbc);
  final Color splashColor = const Color(0x66c8c8c8);
  final Color unselectedWidgetColor = const Color(0x8a000000);
  final Color disabledColor = const Color(0xffd9d9d9);
  final Color secondaryHeaderColor = const Color(0xffeaf2fa);
  final Color dialogBackgroundColor = const Color(0xffffffff);
  final Color errorColor = Colors.pinkAccent;
  final Color generalOrange = Colors.indigo;
  final Color generalDark = Colors.indigo;
  final Color generalGrey = Colors.grey;
  final Color generalBlue = Colors.lightBlueAccent;
  final Color generalUsageColor = Colors.indigo;
  final Color thumbColor = Colors.white;
}

class DarkColorSet {
  final Brightness brightness = Brightness.dark;
  final Color primaryColor = Colors.indigo;
  final Color primaryColorLight = Colors.indigo;
  final Color primaryColorDark = Colors.white;
  final Color canvasColor = const Color(0xff0e2133);
  final Color scaffoldBackgroundColor = const Color(0xff0e2133);
  final Color cardColor = const Color(0xff181719);
  final Color dividerColor = const Color(0x1fffffff);
  final Color highlightColor = const Color(0x40cccccc);
  final Color splashColor = const Color(0x40cccccc);
  final Color unselectedWidgetColor = const Color(0xb3ffffff);
  final Color disabledColor = const Color(0xd7ffffff);
  final Color secondaryHeaderColor = const Color(0xff616161);
  final Color dialogBackgroundColor = const Color(0xff424242);
  final Color errorColor = Colors.pinkAccent;
  final Color generalOrange = Colors.indigo;
  //final Color generalOrange = Colors.orange;
  final Color generalDark = Colors.indigo;
  final Color generalGrey = Colors.grey;
  final Color generalBlue = Colors.lightBlueAccent;
  final Color generalUsageColor = Colors.white;
}
