import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/auth/view/widgets/custom_text_field_auth.dart';

class LoginWithEmailScreen extends StatelessWidget {
  const LoginWithEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * .04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height * .02,
              ),
              Text(
                'Continue with email',
                style: AppFont.getTitleMidFont(context),
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              CustomTextFieldAuth(
                hintText: 'Email',
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              CustomTextFieldAuth(
                hintText: 'Password',
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              CustomButton(
                text: 'Login',
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.forgotPasswordScreen,
                      );
                    },
                    child: Text(
                      'Forgot password?',
                      style: AppFont.getCaption2Font(
                        context,
                        fontColor: AppColor.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.createAccountScreen,
                      );
                    },
                    child: Text(
                      'Create an account?',
                      style: AppFont.getCaption2Font(
                        context,
                        fontColor: AppColor.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
