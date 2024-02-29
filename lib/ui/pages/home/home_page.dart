import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_finder/ui/pages/home/component/cardSection.dart';
import 'package:property_finder/ui/pages/home/component/corousel_slides.dart';
import 'package:property_finder/ui/pages/home/component/stepper_component.dart';
import 'package:property_finder/ui/style/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> corouselSlides = [carouselSlideFirst(), corouselSecond()];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        sliderCard(context),
        sectionItem(
          'Daftar pesanan terbaru anda',
          'assets/icon_arrow.png',
          'Pesanan Terbaru',
        ),
        cardStepProgressIndicator(),
        cardProperty(),
        sectionItem(
          'Daftar menu transaksi',
          'assets/icon_menu_grid.png',
          'Menu',
        ),
        pesananKosong(),
        cardSection(context),
        Container(height: 100.h),
      ],
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 40.h),
      child: Row(
        children: [
          Container(
            width: 60.w,
            height: 60.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/profile_avatar.png'))),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Temukan \nhunian impian',
                  style: baseDarkTexStyle.copyWith(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Agen Properti Terbaik',
                  style: grayTextStyle.copyWith(
                      fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Badge(
            label: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.redAccent,
              ),
              child: Center(child: Text('3')),
            ),
            child: Container(
              height: 35.h,
              width: 35.w,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Image.asset(
                'assets/icon_notif.png',
                width: 20.w,
                height: 20.h,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget sliderCard(BuildContext context) {
    return Container(
      height: 155.h,
      width: 280.w,
      child: ListView.builder(
        itemCount: corouselSlides.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return corouselSlides[index];
        },
      ),
    );
  }

  Widget cardStepProgressIndicator() {
    return Container(
      margin: EdgeInsets.only(
          top: 20.h, bottom: 10.h, left: defaultMargin, right: defaultMargin),
      padding:
      EdgeInsets.only(top: 12.h, left: 15.w, right: 15.w, bottom: 12.h),
      decoration: BoxDecoration(
        color: baseWhite,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Row(
              children: [
                StepperComponent(
                  label: 'Pemesanan',
                  myIcon: 'assets/icon_done.png',
                  isActiveIcon: true,
                  isActiveLine: true,
                  isActiveText: true,
                ),
                StepperComponent(
                  label: 'Administrasi',
                  myIcon: 'assets/icon_done.png',
                  isActiveIcon: true,
                  isActiveLine: true,
                  isActiveText: true,
                ),
                StepperComponent(
                  label: 'Pembangunan',
                  myIcon: 'assets/icon_progress.png',
                  isActiveIcon: true,
                  isActiveLine: false,
                  isActiveText: true,
                ),
                StepperComponent(
                  label: 'Serah Terima',
                  myIcon: 'assets/icon_serah_terima.png',
                  isActiveIcon: false,
                  isActiveLine: false,
                  isActiveText: false,
                ),
              ],
            ),
          )
        ],
      ),
      // child: ,
    );
  }

  Widget cardProperty() {
    return Container(
        width: 378.w,
        height: 144.h,
        margin: EdgeInsets.only(
            bottom: 10.h, left: defaultMargin, right: defaultMargin),
        padding:
        EdgeInsets.only(top: 15.h, left: 15.w, right: 15.w, bottom: 15.h),
        decoration: BoxDecoration(
          color: baseWhite,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text('#881726478123',
                      style: baseDarkTexStyle.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w400)),
                ),
                Container(
                    width: 63.w,
                    height: 19.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        color: baseGreen),
                    child: Center(
                      child: Text(
                        'Komersil',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w400),
                      ),
                    )),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image_card.png',
                  width: 100.w,
                  height: 85.h,
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/icon_home_card.png',
                              width: 14.w, height: 14.w),
                          SizedBox(width: 5.w),
                          Text('Candra Bhirawa',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: baseDarkTexStyle.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                      SizedBox(height: 7.h),
                      Row(
                        children: [
                          Image.asset('assets/icon_location.png',
                              width: 14.w, height: 14.w),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: Text('Lotus, Kavling A1, Blok B No. 4',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: baseDarkTexStyle.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                          )
                        ],
                      ),
                      SizedBox(height: 7.h),
                      Row(
                        children: [
                          Image.asset('assets/icon_calendar_card.png',
                              width: 14.w, height: 14.w),
                          SizedBox(width: 5.w),
                          Text('25/11/2022, 09:00',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: baseDarkTexStyle.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                      SizedBox(height: 7.h),
                      Row(
                        children: [
                          Text('Rp',
                              style: baseDarkTexStyle.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  overflow: TextOverflow.ellipsis)),
                          SizedBox(width: 5.w),
                          Text('850.000.000',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: baseDarkTexStyle.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              )),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }

  Widget sectionItem(String subJudul, String myIcon, String judul) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
          left: defaultMargin, right: defaultMargin, top: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  judul,
                  style: baseDarkTexStyle.copyWith(
                      fontSize: 18.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(width: 10.w),
              Image.asset(myIcon, width: 24.w, height: 24.w)
            ],
          ),
          Text(subJudul, style: grayTextStyle.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400
          ),)
        ],
      ),
    );
  }

  Widget pesananKosong() {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                  top: 0.h,
                  left: 0.w,
                  right: 60.w,
                  bottom: 85.h,
                  child: Image.asset('assets/fly.png', scale: 1.5,)
              ),
              Image.asset('assets/image_pesanan_kosong.png', width: 318.76.w,
                  height: 196.66.h)
            ],
          ),
          Text('Pesanan Kosong', style: baseDarkTexStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4.h),
          Text('Ayo tambahkan pesanan baru', style: grayTextStyle.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400
          ),
          ),
          SizedBox(height: 10.h),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 196.w,
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(39.r),
                  color: baseDark
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      'assets/icon_search.png', height: 15.h, width: 15.w),
                  SizedBox(width: 10.w),
                  Text(
                    'Eksplor Properti',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


}
