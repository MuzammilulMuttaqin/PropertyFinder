import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_finder/model/data_card.dart';
import 'package:property_finder/ui/pages/home/component/cardMenu.dart';

Widget cardSection(BuildContext context) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(top: 20.h),
    child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.w,
          mainAxisSpacing: 20.w,
        ),
        itemCount: generateDataCard().length,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemBuilder: (context, index) {
          DataCard dataCard = generateDataCard()[index];
          return CardMenu(
            judul: dataCard.judul,
            subJudul: dataCard.subJudul,
            background: dataCard.background,
            progress: dataCard.progress,
            image: dataCard.image,
            backgroundCard: dataCard.backgroundCard,
            colorJudul: dataCard.colorJudul,
            colorSubJudul: dataCard.colorSubJudul,
            top: dataCard.top,
            bottom: dataCard.bottom,
            right: dataCard.right,
            left: dataCard.left,
            topBackground: dataCard.topBackground,
            bottomBackground: dataCard.bottomBackground,
            rightBackground: dataCard.rightBackground,
            leftBackground: dataCard.leftBackground,
            function: () {},
          );
        }),
  );
}
