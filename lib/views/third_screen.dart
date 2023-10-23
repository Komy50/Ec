import 'package:ecom_firebase/app%20widget/asset_image.dart';
import 'package:ecom_firebase/constant/assets.dart';
import 'package:ecom_firebase/constant/dimens.dart';
import 'package:ecom_firebase/constant/strings.dart';
import 'package:ecom_firebase/constant/styles.dart';
import 'package:ecom_firebase/views/myCart.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Dimens.boxHeight60,
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
                )
              ],
            ),
            Dimens.boxHeight20,
            Text(
              StringValues.letResiger,
              style: AppStyles.letRegister,
              textAlign: TextAlign.center,
            ),
            Dimens.boxHeight10,
              
            Text(
              StringValues.anAccount,
              style: AppStyles.cart,
              textAlign: TextAlign.center,
            ),
            Dimens.boxHeight40,
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              height: 50.0,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText:StringValues.name,
                    contentPadding: EdgeInsets.all(10)),
              ),
            ),
            Dimens.boxHeight20,
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              height: 50.0,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: StringValues.lastName,
                    contentPadding: EdgeInsets.all(10)),
              ),
            ),
            Dimens.boxHeight20,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: StringValues.google,
                    contentPadding: EdgeInsets.all(10)),
              ),
            ),
            Dimens.boxHeight20,
            Dimens.boxHeight40,
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.blueAccent),
                  alignment: Alignment.center,
                  child: Text(
                    StringValues.register,
                    style: AppStyles.secRegister,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            
            Dimens.boxHeight30,
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyCart(),
                    ));
              },
              child: Container(
                width: double.infinity, height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                      child: Container(
                        width: 150,
                        decoration: const BoxDecoration(color: Color.fromARGB(255, 236, 236, 236)),
                        height: 50,
                        alignment: Alignment.center,
                        child:  Row(
                          children: [
                            Dimens.boxHeight10,
                            FxAssetImage(assetImage: AssetsValues.fbLogo, width: Dimens.fifteen,),
                            Dimens.boxHeight10,
                            Text(StringValues.facebook)
                          ],
                        ),
                      ),
                    ),
                    Dimens.boxHeight30,
                    Card(
                      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                      child: Container(
                        width: 150,
                        decoration: const BoxDecoration(color: Color.fromARGB(255, 236, 236, 236)),
                        height: 50,
                        alignment: Alignment.center,
                        child:  Row(
                          children: [
                            Dimens.boxHeight10,
                            FxAssetImage(assetImage: AssetsValues.gmailLogo,width: Dimens.fifteen,),
                            Dimens.boxHeight10,
                            Text(StringValues.google)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
