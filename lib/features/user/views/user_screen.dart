import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:deutics_attendance_app/app/resources/app_theme.dart';
import 'package:deutics_attendance_app/app/constants/svg_icons.dart';

import '../../../app/routes/routes_name.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  static Widget divider = const Divider();

  @override
  Widget build(BuildContext context) {
    final styles = Theme.of(context).extension<AppTheme>()!;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: Column(
            children: [
              CircleAvatar(),
              SizedBox(height: 40.h,),
              Text("Saria Mahmood", style: styles.roboto16w600,),
              Text("Flutter Developer", style: styles.roboto8w400,),
              SizedBox(height: 70.h,),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.setting);
                },
                leading: SvgPicture.asset(
                  SvgIcons.settings,
                  width: 31.5.w,
                  height: 32.h,
                  color: styles.black,
                ),
                title: Text("Profile Settings", style: styles.roboto16w600,),
              ),
              divider,
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.changePassword);
                },
                leading: SvgPicture.asset(
                  SvgIcons.password,
                  width: 32.w,
                  height: 32.h,
                  color: styles.black,
                ),
                title: Text("Password", style: styles.roboto16w600,),
              ),
              divider,
              ListTile(
                leading: SvgPicture.asset(
                  SvgIcons.logout,
                  height: 32.h,
                  width: 32.w,
                  color: styles.black,
                ),
                title: Text("Logout", style: styles.roboto16w600,),
              ),
              divider
            ],
          ),
          )
        ),
    );
  }
}