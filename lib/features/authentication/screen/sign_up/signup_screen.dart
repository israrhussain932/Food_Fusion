import 'package:flutter/material.dart';
import 'package:foodfusion/features/authentication/screen/Home/mainscreen.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/signin_screen.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/widgets/email_textfield.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/widgets/password_textfield.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/widgets/signup_prompt.dart';
import 'package:foodfusion/features/authentication/screen/sign_up/widgets/soicalbutton.dart';
import 'package:foodfusion/features/authentication/screen/splash/widgets/custom_elevatedbutton.dart';
import 'package:foodfusion/utils/constants/colors.dart';
import 'package:foodfusion/utils/constants/sizes.dart';
import 'package:foodfusion/utils/constants/text_string.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                Texts.signupTitle,
                style: TextStyle(
                    fontSize: Sizes.fontsizemlg,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text(
                Texts.accountSubTitle,
                style: TextStyle(
                    fontSize: Sizes.md,

                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              // Name Field
              Text("Name"),
              Email_textfield(hintText: Texts.Name),
              SizedBox(height: 15),
              Text("Email"),
              Email_textfield(hintText: Texts.email),
              SizedBox(height: 15),
              Text("Password"),
              PasswordTextField(
                hinText: Texts.password,
              ),
              SizedBox(height: 15),
              Text("Confirm Password"),
              PasswordTextField(
                hinText: Texts.confirmPassword,),
               SizedBox(height: 10),
              // Accept Terms Checkbox
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.orange,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                   Text(
                    "Accept terms & Condition",
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
               SizedBox(height: 10),
              custom_elevatedbutton(text: 'sign in',
                onPressed: (){
                  Get.to(MainScreen());

                },
                color: AppColor.primary,
                icon: Icons.arrow_forward,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: Divider()),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Or Sign in With"),
                  ),
                   Expanded(child: Divider()),
                ],
              ),
               SizedBox(height: 10),
              SocialButton(),
              signup_prompt(
                btnText: 'sign in',
                text: 'Already a member? ',
                onPressed: () {
                Get.to(SignInScreen());

                },
              )


                ],
              ),
          ),
        ),
      );

  }
}

