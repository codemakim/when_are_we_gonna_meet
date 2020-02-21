import 'package:flutter/material.dart';

/// # ThemeInfo.dart
/// 테마 정보를 통합 관리하기 위한 클래스입니다.
///
/// ## Author
/// * jhkim
///
/// ## Date
/// * 2020.02.17
///
/// ## Methods
///
/// ### getThemeColor
/// * Return Type - Color
/// * 테마 색상으로 지정한 Color 값을 반환합니다.
///
/// ### themeTextColor
/// * Return Type - Color
/// * 테마 색상과 함께 사용될 '텍스트 색상'를 반환합니다.
///
class ThemeInfo {
  Color themeColor = Colors.blue;
  Color themeTextColor = Colors.white;

  Color getThemeColor() => this.themeColor;
  Color getThemeTextColor() => this.themeTextColor;
}