import 'package:ecom_firebase/app%20widget/asset_image.dart';
import 'package:ecom_firebase/constant/assets.dart';
import 'package:ecom_firebase/constant/dimens.dart';
import 'package:ecom_firebase/constant/strings.dart';
import 'package:ecom_firebase/constant/styles.dart';
import 'package:ecom_firebase/modules/auth/controller/facebook_login.dart';
import 'package:ecom_firebase/modules/auth/views/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../app widget/google_signin.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _googleController = TextEditingController();
  String password = '';
  String email = '';
  String google = '';

  FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserCredential> signInWithFacebook(
      {required BuildContext context}) async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  Future<User?> signInWithGoogle({required BuildContext context}) async {
    User? user;

    if (kIsWeb) {
      GoogleAuthProvider authProvider = GoogleAuthProvider();

      try {
        final UserCredential userCredential =
            await auth.signInWithPopup(authProvider);

        user = userCredential.user;
      } catch (e) {
        print(e);
      }
    } else {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        try {
          final UserCredential userCredential =
              await auth.signInWithCredential(credential);

          user = userCredential.user;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'account-exists-with-different-credential') {
            // ...
          } else if (e.code == 'invalid-credential') {
            // ...
          }
        } catch (e) {
          // ...
        }
      }
    }

    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimens.boxHeight60,
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            Dimens.boxHeight20,
            Text(
              StringValues.letLogin,
              style: AppStyles.logoText,
              textAlign: TextAlign.start,
            ),
            Dimens.boxHeight10,
            Text(
              StringValues.anAccount,
              style: AppStyles.anAccount,
              textAlign: TextAlign.start,
            ),
            Dimens.boxHeight40,
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              height: 50.0,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: TextFormField(
                controller: _emailController,
                autofocus: false,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: StringValues.name,
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
                controller: _passwordController,
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
                auth.createUserWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ));
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
                      builder: (context) => const SecondScreen(),
                    ));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        await FirebaseFacebook.signInWithFacebook();
                      },
                      child: Card(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.zero)),
                        child: Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 150,
                          // decoration: const BoxDecoration(
                          //     color: Color.fromARGB(255, 236, 236, 236)),
                          height: 50,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Dimens.boxHeight10,
                              FxAssetImage(
                                assetImage: AssetsValues.fbLogo,
                                height: Dimens.eighteen,
                                width: Dimens.eighteen,
                              ),
                              Dimens.boxWidth20,
                              Text(StringValues.facebook)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Dimens.boxHeight30,
                    InkWell(
                      onTap: () async {
                        await signInWithGoogle(context: context);
                      },
                      child: Card(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.zero)),
                        child: Container(
                          width: 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Dimens.boxHeight20,
                              FxAssetImage(
                                assetImage: AssetsValues.google,
                                width: Dimens.fifteen,
                              ),
                              Dimens.boxHeight10,
                              Text(StringValues.google)
                            ],
                          ),
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
