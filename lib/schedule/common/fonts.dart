import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFonts extends ThemeExtension<CustomFonts> {
  // Шрифты названы таким образом: 'styleSB22'
  // SB - Вес - Semi-Bold
  // 22 - Размер

  final TextStyle styleEB28;
  final TextStyle styleEB24;
  final TextStyle styleEB12;
  final TextStyle styleB36;
  final TextStyle styleB32;
  final TextStyle styleB30;
  final TextStyle styleB24;
  final TextStyle styleB22;
  final TextStyle styleB20;
  final TextStyle styleB18;
  final TextStyle styleB16;
  final TextStyle styleB14;
  final TextStyle styleB12;
  final TextStyle styleSB24;
  final TextStyle styleSB20;
  final TextStyle styleSB18;
  final TextStyle styleSB16;
  final TextStyle styleSB15;
  final TextStyle styleSB14;
  final TextStyle styleSB13;
  final TextStyle styleSB12;
  final TextStyle styleSB10;
  final TextStyle styleM24;
  final TextStyle styleM14;
  final TextStyle styleM12;
  final TextStyle styleM10;
  final TextStyle styleM8;
  final TextStyle styleR24;
  final TextStyle styleR22;
  final TextStyle styleR16;
  final TextStyle styleR14;
  final TextStyle styleR12;
  final TextStyle styleR11;
  final TextStyle styleR10;
  final TextStyle styleL12;

  const CustomFonts({
    required this.styleEB28,
    required this.styleEB24,
    required this.styleEB12,
    required this.styleB36,
    required this.styleB32,
    required this.styleB30,
    required this.styleB24,
    required this.styleB22,
    required this.styleB20,
    required this.styleB18,
    required this.styleB16,
    required this.styleB14,
    required this.styleB12,
    required this.styleSB24,
    required this.styleSB20,
    required this.styleSB18,
    required this.styleSB16,
    required this.styleSB15,
    required this.styleSB14,
    required this.styleSB13,
    required this.styleSB12,
    required this.styleSB10,
    required this.styleM24,
    required this.styleM14,
    required this.styleM12,
    required this.styleM10,
    required this.styleM8,
    required this.styleR24,
    required this.styleR22,
    required this.styleR16,
    required this.styleR14,
    required this.styleR12,
    required this.styleR11,
    required this.styleR10,
    required this.styleL12,
  });

  @override
  // ignore: long-parameter-list
  ThemeExtension<CustomFonts> copyWith({
    TextStyle? styleEB28,
    TextStyle? styleEB24,
    TextStyle? styleEB12,
    TextStyle? styleB36,
    TextStyle? styleB32,
    TextStyle? styleB30,
    TextStyle? styleB24,
    TextStyle? styleB22,
    TextStyle? styleB20,
    TextStyle? styleB18,
    TextStyle? styleB16,
    TextStyle? styleB14,
    TextStyle? styleB12,
    TextStyle? styleSB24,
    TextStyle? styleSB20,
    TextStyle? styleSB18,
    TextStyle? styleSB16,
    TextStyle? styleSB15,
    TextStyle? styleSB14,
    TextStyle? styleSB13,
    TextStyle? styleSB12,
    TextStyle? styleSB10,
    TextStyle? styleM24,
    TextStyle? styleM14,
    TextStyle? styleM12,
    TextStyle? styleM10,
    TextStyle? styleM8,
    TextStyle? styleR24,
    TextStyle? styleR22,
    TextStyle? styleR16,
    TextStyle? styleR14,
    TextStyle? styleR12,
    TextStyle? styleR11,
    TextStyle? styleR10,
    TextStyle? styleL12,
  }) {
    return CustomFonts(
      styleEB28: styleEB28 ?? this.styleEB28,
      styleEB24: styleEB24 ?? this.styleEB24,
      styleEB12: styleEB12 ?? this.styleEB12,
      styleB36: styleB36 ?? this.styleB36,
      styleB32: styleB32 ?? this.styleB32,
      styleB30: styleB30 ?? this.styleB30,
      styleB24: styleB24 ?? this.styleB24,
      styleB22: styleB22 ?? this.styleB22,
      styleB20: styleB20 ?? this.styleB20,
      styleB18: styleB18 ?? this.styleB18,
      styleB16: styleB16 ?? this.styleB16,
      styleB14: styleB14 ?? this.styleB14,
      styleB12: styleB12 ?? this.styleB12,
      styleSB24: styleSB24 ?? this.styleSB24,
      styleSB20: styleSB20 ?? this.styleSB20,
      styleSB18: styleSB18 ?? this.styleSB18,
      styleSB16: styleSB16 ?? this.styleSB16,
      styleSB15: styleSB15 ?? this.styleSB15,
      styleSB14: styleSB14 ?? this.styleSB14,
      styleSB13: styleSB13 ?? this.styleSB13,
      styleSB12: styleSB12 ?? this.styleSB12,
      styleSB10: styleSB10 ?? this.styleSB10,
      styleM24: styleM24 ?? this.styleM24,
      styleM14: styleM14 ?? this.styleM14,
      styleM12: styleM12 ?? this.styleM12,
      styleM10: styleM10 ?? this.styleM10,
      styleM8: styleM8 ?? this.styleM8,
      styleR24: styleR24 ?? this.styleR24,
      styleR22: styleR22 ?? this.styleR22,
      styleR16: styleR16 ?? this.styleR16,
      styleR14: styleR14 ?? this.styleR14,
      styleR12: styleR12 ?? this.styleR12,
      styleR11: styleR11 ?? this.styleR11,
      styleR10: styleR10 ?? this.styleR10,
      styleL12: styleL12 ?? this.styleL12,
    );
  }

  @override
  ThemeExtension<CustomFonts> lerp(
    ThemeExtension<CustomFonts>? other,
    double t,
  ) {
    if (other is! CustomFonts) {
      return this;
    }

    return CustomFonts(
      styleEB28: TextStyle.lerp(styleEB28, other.styleEB28, t)!,
      styleEB24: TextStyle.lerp(styleEB24, other.styleEB24, t)!,
      styleEB12: TextStyle.lerp(styleEB12, other.styleEB12, t)!,
      styleB36: TextStyle.lerp(styleB36, other.styleB36, t)!,
      styleB32: TextStyle.lerp(styleB32, other.styleB32, t)!,
      styleB30: TextStyle.lerp(styleB30, other.styleB30, t)!,
      styleB24: TextStyle.lerp(styleB24, other.styleB24, t)!,
      styleB22: TextStyle.lerp(styleB22, other.styleB22, t)!,
      styleB20: TextStyle.lerp(styleB20, other.styleB20, t)!,
      styleB18: TextStyle.lerp(styleB18, other.styleB18, t)!,
      styleB16: TextStyle.lerp(styleB16, other.styleB16, t)!,
      styleB14: TextStyle.lerp(styleB14, other.styleB14, t)!,
      styleB12: TextStyle.lerp(styleB12, other.styleB12, t)!,
      styleSB24: TextStyle.lerp(styleSB24, other.styleSB24, t)!,
      styleSB20: TextStyle.lerp(styleSB20, other.styleSB20, t)!,
      styleSB18: TextStyle.lerp(styleSB18, other.styleSB18, t)!,
      styleSB16: TextStyle.lerp(styleSB16, other.styleSB16, t)!,
      styleSB15: TextStyle.lerp(styleSB15, other.styleSB15, t)!,
      styleSB14: TextStyle.lerp(styleSB14, other.styleSB14, t)!,
      styleSB13: TextStyle.lerp(styleSB13, other.styleSB13, t)!,
      styleSB12: TextStyle.lerp(styleSB12, other.styleSB12, t)!,
      styleSB10: TextStyle.lerp(styleSB10, other.styleSB10, t)!,
      styleM24: TextStyle.lerp(styleM24, other.styleM24, t)!,
      styleM14: TextStyle.lerp(styleM14, other.styleM14, t)!,
      styleM12: TextStyle.lerp(styleM12, other.styleM12, t)!,
      styleM10: TextStyle.lerp(styleM10, other.styleM10, t)!,
      styleM8: TextStyle.lerp(styleM8, other.styleM8, t)!,
      styleR24: TextStyle.lerp(styleR24, other.styleR24, t)!,
      styleR22: TextStyle.lerp(styleR22, other.styleR22, t)!,
      styleR16: TextStyle.lerp(styleR16, other.styleR16, t)!,
      styleR14: TextStyle.lerp(styleR14, other.styleR14, t)!,
      styleR12: TextStyle.lerp(styleR12, other.styleR12, t)!,
      styleR11: TextStyle.lerp(styleR11, other.styleR11, t)!,
      styleR10: TextStyle.lerp(styleR10, other.styleR10, t)!,
      styleL12: TextStyle.lerp(styleL12, other.styleL12, t)!,
    );
  }

  static final light = CustomFonts(
    styleEB28: GoogleFonts.manrope(
      fontSize: 28,
      fontWeight: FontWeight.w800,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleEB24: GoogleFonts.manrope(
      fontSize: 24,
      fontWeight: FontWeight.w800,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleEB12: GoogleFonts.manrope(
      fontSize: 12,
      fontWeight: FontWeight.w800,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleB36: GoogleFonts.manrope(
      fontSize: 36,
      fontWeight: FontWeight.w700,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleB32: GoogleFonts.manrope(
      fontSize: 32,
      fontWeight: FontWeight.w700,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleB30: GoogleFonts.manrope(
      fontSize: 30,
      fontWeight: FontWeight.w700,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleB24: GoogleFonts.manrope(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleB22: GoogleFonts.manrope(
      fontSize: 22,
      fontWeight: FontWeight.w700,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleB20: GoogleFonts.manrope(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleB18: GoogleFonts.manrope(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleB16: GoogleFonts.manrope(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleB14: GoogleFonts.manrope(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleB12: GoogleFonts.manrope(
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleSB24: GoogleFonts.manrope(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleSB20: GoogleFonts.manrope(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleSB18: GoogleFonts.manrope(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleSB16: GoogleFonts.manrope(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleSB15: GoogleFonts.manrope(
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleSB14: GoogleFonts.manrope(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleSB13: GoogleFonts.manrope(
      fontSize: 13,
      fontWeight: FontWeight.w600,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleSB12: GoogleFonts.manrope(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleSB10: GoogleFonts.manrope(
      fontSize: 10,
      fontWeight: FontWeight.w600,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleM24: GoogleFonts.manrope(
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleM14: GoogleFonts.manrope(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleM12: GoogleFonts.manrope(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleM10: GoogleFonts.manrope(
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleM8: GoogleFonts.manrope(
      fontSize: 8,
      fontWeight: FontWeight.w500,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleR24: GoogleFonts.manrope(
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleR22: GoogleFonts.manrope(
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleR16: GoogleFonts.manrope(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleR14: GoogleFonts.manrope(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleR12: GoogleFonts.manrope(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleR11: GoogleFonts.manrope(
      fontSize: 11,
      fontWeight: FontWeight.w400,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleR10: GoogleFonts.manrope(
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
    styleL12: GoogleFonts.manrope(
      fontSize: 12,
      fontWeight: FontWeight.w300,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even),
  );
}
