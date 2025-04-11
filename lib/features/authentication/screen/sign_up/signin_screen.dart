import 'package:flutter/material.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/signup_screen.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/widgets/email_textfield.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/widgets/password_textfield.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/widgets/signup_prompt.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/widgets/soicalbutton.dart';
import 'package:foodfusion/features/authentication/screen/splash/widgets/custom_elevatedbutton.dart';
import 'package:foodfusion/utils/constants/colors.dart';
import 'package:foodfusion/utils/constants/sizes.dart';
import 'package:foodfusion/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}
class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Texts.LoginTitle,
              style: TextStyle(
                  fontSize: Sizes.fontsizemlg, fontWeight: FontWeight.bold),
            ),
            Text(
              Texts.loginSubtitle,
              style: TextStyle(fontSize: Sizes.fontsizemlg, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(Texts.email),
            /// custom widget of email text field
            Email_textfield(hintText: 'Email',),
            SizedBox(height: 10),
            Text(Texts.password),
           /// custom widget for password text field
           PasswordTextField(hinText: Texts.password,),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                Texts.forgetpassword,
                style: TextStyle(color: Colors.orange),
              ),
            ),
            SizedBox(height: 20),
          /// custom elevated button sign in
          custom_elevatedbutton(text: 'sign in',
            onPressed: (){},
            color: AppColor.primary,
            icon: Icons.arrow_forward,
          ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(Texts.orSigninWith),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 10),
            /// custom widget for facebook and google icon button
                SocialButton(),
            SizedBox(height: 20),
            /// custom widget for sign in with text button
            signup_prompt(
              btnText: 'signup',
              text: 'Don,t have an account?',
              onPressed: () {
                Get.to(() => SignupScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}






