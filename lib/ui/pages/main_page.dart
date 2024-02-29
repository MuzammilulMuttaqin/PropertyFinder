import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_finder/ui/components/custom_bottom_navigation_item.dart';
import 'package:property_finder/ui/cubit/page_cubit.dart';
import 'package:property_finder/ui/pages/cart_page.dart';
import 'package:property_finder/ui/pages/home/home_page.dart';
import 'package:property_finder/ui/pages/home_two_page.dart';
import 'package:property_finder/ui/pages/transaction_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation()
            ],
          ),
        );
      }
    );
  }

  Widget buildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return HomeTwoPage();
      case 2:
        return CartPage();
      case 3:
        return TransactionPage();
      default:
        return HomePage();
    }
  }

  Widget customBottomNavigation(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 85.h,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomNavigationItem(
              index: 0,
              imageUrl: 'assets/icon_home.png',
              imageUrlNotActive: 'assets/icon_home_not_active.png',
              isActive: true,
            ),
            CustomBottomNavigationItem(
              index: 1,
              imageUrl: 'assets/icon_home.png',
              imageUrlNotActive: 'assets/icon_broken.png',
              isActive: false,
            ),
            CustomBottomNavigationItem(
              index: 2,
              imageUrl: 'assets/icon_home.png',
              imageUrlNotActive: 'assets/icon_document.png',
              isActive: false,
            ),
            CustomBottomNavigationItem(
              index: 3,
              imageUrl: 'assets/icon_home.png',
              imageUrlNotActive: 'assets/icon_cart.png',
              isActive: false,
            ),
            CustomBottomNavigationItem(
              index: 4,
              imageUrl: 'assets/icon_home.png',
              imageUrlNotActive: 'assets/icon_user.png',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}

