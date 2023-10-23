import 'package:ecom_firebase/modules/auth/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app widget/App_services/firebase_service.dart';
import 'modules/products/product_list.dart';
import 'modules/auth/views/login_register.dart';
import 'modules/auth/views/register_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await initializeFirebaseServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginRegister(),
      ),
    );
  }
}
