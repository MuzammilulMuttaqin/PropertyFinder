import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_finder/ui/style/theme.dart';

Widget carouselSlideFirst() {
  return Container(
    width: 280.w,
    height: 155.h,
    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
    decoration: BoxDecoration(
        color: baseDark, borderRadius: BorderRadius.circular(15.r)),
    child: Stack(
      children: [
        Positioned(
            left: 30.w,
            top: 42.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '20% Diskon',
                  style: whiteTextStyle.copyWith(
                      fontSize: 15.sp, fontWeight: FontWeight.w400),
                ),
                Text(
                  'American House',
                  style: whiteTextStyle.copyWith(
                      fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Image(image: AssetImage('assets/icon_calendar.png')),
                    SizedBox(width: 5.w),
                    Text(
                      'Periode 19 Nov 2023 s/d 15 Des 2023',
                      style: whiteTextStyle.copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                )
              ],
            )),
        Positioned(
            top: 1.h,
            right: 0.w,
            left: 230,
            bottom: 10.h,
            child:Image.asset('assets/img_corousel.png',
              width: 257.w,
              height: 198.h,
              fit: BoxFit.cover,
            )
        )
      ],
    ),
  );
}

Widget corouselSecond() {
  return Container(
    width: 358.w,
    height: 155.h,
    decoration: BoxDecoration(
        color: baseGreen, borderRadius: BorderRadius.circular(15.r)),
    child: Center(
      child: Text('Corousel 2'),
    ),
  );
}
