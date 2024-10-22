import 'package:deutics_attendance_app/features/auth/presentation/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../app/resources/app_theme.dart';
import '../../../../app/routes/routes_name.dart';
import '../../../../app/views/widget/app_button.dart';
import '../widgets/headings.dart';
import '../widgets/text_button.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {

    final styles = Theme.of(context).extension<AppTheme>()!;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 23.w, right: 23.w, top: 140.h, bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  CustomTextButton(
                    text: 'REGISTER',
                    fontSize: 15,
                    textDecoration: TextDecoration.underline,
                    onPressed: (){
                      Navigator.pushNamed(context, RoutesName.signUp);
                    },
                  ),
                ],
              ),
              40.verticalSpace,
              const CustomTextColumn(
                titleText: 'HAVE AN ACCOUNT?',
                titleFontSize: 16,
                descriptionText: 'Sign in to speed up the checkout \nprocess',
                descriptionFontSize: 15,
                descriptionColor: Color(0xFF888888),
              ),
              50.verticalSpace,
              const EditTextField(labelText: 'Email Address', keyboardType: TextInputType.emailAddress, obscureText: false),
              15.verticalSpace,
              const EditTextField(labelText: 'Password', keyboardType: TextInputType.visiblePassword, obscureText: true),
              10.verticalSpace,
              Align(
                alignment: Alignment.centerRight,
                child: CustomTextButton(
                  text: 'FORGOT PASSWORD?',
                  fontSize: 14,
                  textDecoration: TextDecoration.underline,
                  onPressed: (){},
                ),
              ),
              100.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: AppButton(buttonText: "SIGN IN",onPressed: (){
                  Navigator.pushNamed(context, RoutesName.navigationBar);
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
