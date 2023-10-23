import 'package:ecom_firebase/constant/dimens.dart';
import 'package:ecom_firebase/constant/styles.dart';
import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.cancel_outlined,
                  color: Colors.black,
                ),
                Dimens.boxHeight60,
                Text(
                  'Cart',
                  style: AppStyles.cart,
                  textAlign: TextAlign.center,
                )
              ],              
            ),
            Dimens.boxHeight40,
          ],         
        ),
        
      ),
    );
  }
}

