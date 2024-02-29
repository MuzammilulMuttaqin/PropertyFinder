import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_finder/ui/pages/home/component/DottedLinePainter.dart';
import 'package:property_finder/ui/style/theme.dart';

class StepperComponent extends StatelessWidget {
  final bool isActiveLine;
  final bool isActiveIcon;
  final bool isActiveText;
  final String myIcon;
  final String label;

  const StepperComponent({
    super.key,
    required this.isActiveLine,
    required this.myIcon,
    required this.label, required this.isActiveIcon, required this.isActiveText,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              isActiveIcon? Container(
                width: 12.5.w,
                height: 12.5.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                ),
                child: Image.asset(myIcon, width: 12.5, height: 12.5),
              ): Container(
                width: 12.5.w,
                height: 12.5.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Image.asset('assets/icon_serah_terima.png',width: 12.5, height: 12.5),
              ),
              Expanded(
                child: isActiveLine? Container(
                  height: 2.h,
                  color: isActiveLine ? baseDark : gray300,
                ): CustomPaint(
                  painter: DottedLinePainter(),
                ),
              )
            ],
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            style: isActiveText? baseDarkTexStyle.copyWith(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400
            ) : grayTextStyle.copyWith(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400
            ),
          )
        ],
      ),
    );
  }
}
