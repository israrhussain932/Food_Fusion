import 'package:flutter/material.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/signin_screen.dart';
import 'package:foodfusion/features/authentication/screen/splash/widgets/custom_elevatedbutton.dart';
import 'package:foodfusion/utils/constants/colors.dart';
import 'package:foodfusion/utils/constants/images.dart';
import 'package:foodfusion/utils/constants/sizes.dart';
import 'package:foodfusion/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }
  void init() async {
    await Future.delayed(Duration(seconds: 5));
    Get.to(SignInScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.SplashBackgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Column(
                  children: [
                    Image(
                      image: AssetImage(Images.LightAppLogo),
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      Texts.mainHeading,
                      style: TextStyle(
                          fontSize: Sizes.fontsizelg,
                          color: AppColor.textWhite),
                    )
                  ],
                ),
                Spacer(),

                Text(
                 Texts.splashTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:AppColor.textWhite,
                    fontSize: Sizes.fontsizexlg,
                    fontWeight: FontWeight.bold,),
                ),

                Text(
                 Texts.splashSubTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:AppColor.textWhite,
                    fontSize: Sizes.fontsizexlg,
                    fontWeight: FontWeight.bold,),
                ),

                SizedBox(height: 12),
                Text(
                  Texts.splashHeadingTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: Sizes.fontsizemd,
                  ),
                ),
                SizedBox(height: 24),
                // Start Cooking Button
                custom_elevatedbutton(
                  text: 'start cooking',
                  onPressed: () {
                    Get.to(SignInScreen());
                  },
                  color: AppColor.primary,
                  icon: Icons.arrow_forward,

                ),

                SizedBox(height: 40),
              ],
            ),
          )),


        ],
      ),


    );
  }
}
