import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_finder/ui/cubit/page_cubit.dart';
import 'package:property_finder/ui/pages/main_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Property Finder',
            home: child,
          );
        },
        child: const MainPage(),
      ),
    );
  }
}

