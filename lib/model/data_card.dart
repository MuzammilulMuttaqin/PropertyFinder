import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_finder/ui/style/theme.dart';

class DataCard {
  final String judul;
  final String subJudul;

  final TextStyle colorJudul, colorSubJudul;

  final String progress;
  final String background;
  final String image;
  final Color backgroundCard;

  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  final double? topBackground;
  final double? bottomBackground;
  final double? leftBackground;
  final double? rightBackground;

  DataCard(
      {required this.judul,
      required this.subJudul,
      required this.progress,
      required this.background,
      required this.image,
      required this.backgroundCard,
      required this.colorJudul,
      required this.colorSubJudul,
      this.top,
      this.bottom,
      this.left,
      this.right,
      this.topBackground,
      this.bottomBackground,
      this.leftBackground,
      this.rightBackground});
}

List<DataCard> generateDataCard() {
  return [
    DataCard(
      judul: 'Tahap',
      subJudul: 'Pemesanan',
      progress: 'assets/progress_100.png',
      background: 'assets/background_base_dark.png',
      image: 'assets/image_card_one.png',
      colorJudul:
          whiteTextStyle.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w300),
      colorSubJudul:
          whiteTextStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
      backgroundCard: baseDark,
      topBackground: 0,
      leftBackground: 63,
      rightBackground: 0,
      bottomBackground: 0,
      top: 50,
      left: 63,
      right: 0,
    ),
    DataCard(
      judul: 'Tahap',
      subJudul: 'Administrasi',
      progress: 'assets/progress_50.png',
      background: 'assets/background_white.png',
      image: 'assets/image_card_two.png',
      backgroundCard: baseWhite,
      colorJudul: baseDarkTexStyle.copyWith(
          fontSize: 12.sp, fontWeight: FontWeight.w300),
      colorSubJudul: baseDarkTexStyle.copyWith(
          fontSize: 14.sp, fontWeight: FontWeight.w500),
      topBackground: 0,
      leftBackground: 63,
      rightBackground: 0,
      bottomBackground: 0,
      top: 20,
      left: 63,
      right: 0,
      bottom: 0
    ),
    DataCard(
      judul: 'Tahap',
      subJudul: 'Pembangunan',
      progress: 'assets/progress_0.png',
      background: 'assets/background_white.png',
      image: 'assets/image_card_three.png',
      backgroundCard: baseWhite,
      colorJudul: baseDarkTexStyle.copyWith(
          fontSize: 12.sp, fontWeight: FontWeight.w300),
      colorSubJudul: baseDarkTexStyle.copyWith(
          fontSize: 14.sp, fontWeight: FontWeight.w500),
      topBackground: 0,
      leftBackground: 63,
      rightBackground: 0,
      bottomBackground: 0,
      top: 20,
      left: 63,
      right: 0,
      bottom: 0
    ),
    DataCard(
      judul: 'Tahap',
      subJudul: 'Akad & Serah Terima',
      progress: 'assets/progress_0.png',
      background: 'assets/background_white.png',
      image: 'assets/image_card_for.png',
      backgroundCard: baseWhite,
      colorJudul: baseDarkTexStyle.copyWith(
          fontSize: 12.sp, fontWeight: FontWeight.w300),
      colorSubJudul: baseDarkTexStyle.copyWith(
          fontSize: 14.sp, fontWeight: FontWeight.w500),
      topBackground: 0,
      leftBackground: 63,
      rightBackground: 0,
      bottomBackground: 0,
      top: 80,
      left: 63,
      right: 0,
      bottom: 0
    )
  ];
}
