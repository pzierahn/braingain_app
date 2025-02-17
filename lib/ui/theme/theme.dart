import 'package:flutter/material.dart';

const _colorSeed = Colors.blue;

final _colorsLight = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: _colorSeed,
  surface: Colors.white,
  onSurface: Colors.black,
  surfaceTint: Colors.white,
);

final _colorsDark = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: _colorSeed,
);

final borderRadius = BorderRadius.circular(16);

final _roundedShape = RoundedRectangleBorder(
  borderRadius: borderRadius,
);

const _titleFontSize = 14.0;
const _subtitleFontSize = 12.0;

final lightTheme = ThemeData(
  colorScheme: _colorsLight,
  appBarTheme: AppBarTheme(
    scrolledUnderElevation: 1,
    shadowColor: _colorsLight.onSurface,
  ),
  chipTheme: ChipThemeData(
    side: BorderSide(
      color: _colorsLight.outlineVariant,
      width: 1.0,
    ),
    shape: _roundedShape,
    backgroundColor:
        _colorsLight.surfaceContainerHighest.withValues(alpha: 0.25),
    labelStyle: TextStyle(
      color: _colorsLight.onSurfaceVariant,
    ),
    iconTheme: IconThemeData(
      color: _colorsLight.onSurfaceVariant,
    ),
  ),
  useMaterial3: true,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(_roundedShape),
    ),
  ),
  scaffoldBackgroundColor: _colorsLight.surface,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(_roundedShape),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(_roundedShape),
    ),
  ),
  listTileTheme: ListTileThemeData(
    shape: _roundedShape,
    titleTextStyle: TextStyle(
      color: _colorsLight.onSurface,
      fontSize: _titleFontSize,
    ),
    subtitleTextStyle: TextStyle(
      color: _colorsLight.outline,
      fontSize: _subtitleFontSize,
    ),
    iconColor: _colorsLight.onSurface,
  ),
  hoverColor: _colorsLight.primaryContainer,
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      hoverColor: _colorsLight.primaryContainer,
    ),
  ),
);

final darkTheme = ThemeData(
  colorScheme: _colorsDark,
  appBarTheme: AppBarTheme(
    scrolledUnderElevation: 1,
    shadowColor: _colorsDark.onSurface,
  ),
  chipTheme: ChipThemeData(
    side: BorderSide(
      color: _colorsDark.outlineVariant,
      width: 1.0,
    ),
    shape: _roundedShape,
    backgroundColor:
        _colorsDark.surfaceContainerHighest.withValues(alpha: 0.25),
    labelStyle: TextStyle(
      color: _colorsDark.onSurfaceVariant,
    ),
    iconTheme: IconThemeData(
      color: _colorsDark.onSurfaceVariant,
    ),
  ),
  useMaterial3: true,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(_roundedShape),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(_roundedShape),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(_roundedShape),
    ),
  ),
  listTileTheme: ListTileThemeData(
    shape: _roundedShape,
    titleTextStyle: TextStyle(
      color: _colorsDark.onSurface,
      fontSize: _titleFontSize,
    ),
    subtitleTextStyle: TextStyle(
      color: _colorsDark.outline,
      fontSize: _subtitleFontSize,
    ),
  ),
  hoverColor: _colorsDark.primaryContainer,
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      hoverColor: _colorsDark.primaryContainer,
    ),
  ),
);
