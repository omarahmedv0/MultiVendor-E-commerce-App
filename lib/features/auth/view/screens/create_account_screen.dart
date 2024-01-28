import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/auth/view/widgets/custom_text_field_auth.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
            'Welcome to talabat',
            style: AppFont.getTitleSmallFont(context),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
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
                'Create your account',
                style: AppFont.getTitleMidFont(context),
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              CustomTextFieldAuth(
                hintText: 'First name',
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              CustomTextFieldAuth(
                hintText: 'Last name',
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
                helperText: 'Passwords should be between 6 and 16 characters',
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              CustomButton(
                text: 'Create your account',
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
