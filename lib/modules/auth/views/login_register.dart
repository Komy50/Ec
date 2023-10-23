import 'package:ecom_firebase/constant/dimens.dart';
import 'package:ecom_firebase/constant/strings.dart';
import 'package:ecom_firebase/constant/styles.dart';
import 'package:ecom_firebase/modules/auth/views/register_view.dart';
import 'package:flutter/material.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Dimens.boxHeight50,
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.map_outlined,
              color: Colors.black,
            ),
            Text(
              StringValues.appName,
              style: AppStyles.logoText,
              textAlign: TextAlign.center,
            )
          ],
        ),
        Dimens.boxHeight40,
        Text(
          StringValues.rightAddress,
          style: AppStyles.bold24,
          textAlign: TextAlign.center,
        ),
        Dimens.boxHeight20,

         Text(
          StringValues.theBest,
          style: AppStyles.regular10,
          textAlign: TextAlign.center,
        ),

        Dimens.boxHeight60,
        
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: Container(
            alignment: Alignment.center,
            margin: Dimens.edgeInsetsymetrical0_40,
            height: 50,
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 33, 72, 243)),
            child: Text(
              StringValues.register,
              style: AppStyles.registerStyle,
            ),
          ),
        ),

        Dimens.boxHeight20,

        Container(
          alignment: Alignment.center,
          margin: Dimens.edgeInsetsymetrical0_40,
          height: 50,
          width: double.infinity,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 233, 234, 240)),
          child: Text(
            StringValues.login,
            style: AppStyles.bold24,
          ),
        ),
      ]),
    ));
  }
}
