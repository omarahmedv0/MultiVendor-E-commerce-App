import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/auth/view/widgets/custom_text_field_auth.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
              Icons.arrow_back_ios,
            ),
          ),
          title: Text(
            'Forgot password',
            style: AppFont.getTitleSmallFont(context),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * .04,
          ),
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * .02,
              ),
              CustomTextFieldAuth(
                hintText: 'Email',
              ),
                SizedBox(
                height: screenSize.height * .03,
              ),
              CustomButton(
                text: 'Reset your password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
