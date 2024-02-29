import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_finder/ui/cubit/page_cubit.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String imageUrlNotActive;
  final bool isActive;

  const CustomBottomNavigationItem({super.key, required this.index, required this.imageUrl, required this.imageUrlNotActive, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.read<PageCubit>().setPage(index);
      },
      child: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 30.h,),
            Container(
              child: Image(
                image: context.read<PageCubit>().state == index ? AssetImage(imageUrl): AssetImage(imageUrlNotActive),
              ),
            ),
            SizedBox(height: 15.h),
            AnimatedOpacity(
              opacity: context.read<PageCubit>().state == index ? 1: 0,
              duration: const Duration(microseconds: 400),
              child: Container(
                child: Image(image: AssetImage('assets/bar_indicator.png'),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

