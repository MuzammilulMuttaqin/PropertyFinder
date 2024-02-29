import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_finder/ui/components/inkEffect.dart';
import 'package:property_finder/ui/style/theme.dart';

class CardMenu extends StatelessWidget {
  final String judul, subJudul, progress, background, image;
  final TextStyle colorJudul, colorSubJudul;
  final double? top,
      bottom,
      left,
      right,
      topBackground,
      bottomBackground,
      leftBackground,
      rightBackground;
  final VoidCallback function;
  final Color backgroundCard;

  const CardMenu(
      {super.key,
      required this.function,
      required this.judul,
      required this.subJudul,
      required this.progress,
      required this.background,
      required this.image,
      this.top,
      this.bottom,
      this.left,
      this.right,
      this.topBackground,
      this.bottomBackground,
      this.leftBackground,
      this.rightBackground,
      required this.backgroundCard,
      required this.colorJudul,
      required this.colorSubJudul});

  @override
  Widget build(BuildContext context) {
    return InkEffect(
      boxDecoration: BoxDecoration(
            color: backgroundCard
      ),
      onTap: function,
      borderRadius: 15.r,
      child: Container(
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(15.r)
        // ),
        width: 181.w,
        height: 174.h,
        child: Stack(
          children: [
            Positioned(
                top: topBackground,
                left: leftBackground,
                right: rightBackground,
                bottom: bottomBackground,
                child: Image.asset(
                  background,
                  height: 219.h,
                  width: 198.w,
                  fit: BoxFit.cover,
                )),
            Positioned(
                bottom: bottom,
                top: top,
                left: left,
                right: right,
                child: Image.asset(image)),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    judul,
                    style: colorJudul,
                  ),
                  SizedBox(height: 5.h),
                  Expanded(
                    child: Text(
                      subJudul,
                      style: colorSubJudul,
                    ),
                  ),
                  Image.asset(
                    progress,
                    width: 35.w,
                    height: 35.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
