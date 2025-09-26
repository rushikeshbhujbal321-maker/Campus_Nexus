import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  final ThemeMode mode;

  AppTheme({
    required this.lightTheme,
    required this.darkTheme,
    required this.mode,
  });

  @override
  AppTheme copyWith({ThemeData? lightTheme, ThemeData? darkTheme, ThemeMode? mode}) {
    return AppTheme(
      lightTheme: lightTheme ?? this.lightTheme,
      darkTheme: darkTheme ?? this.darkTheme,
      mode: mode ?? this.mode,
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this;
    return AppTheme(
      lightTheme: lightTheme,
      darkTheme: darkTheme,
      mode: mode.lerp(other.mode, t),
    );
  }
}

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(_buildTheme(ThemeMode.system));

  static AppTheme _buildTheme(ThemeMode mode) {
    final light = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.orbitron().fontFamily,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      // Glassmorphism for cards
      card
