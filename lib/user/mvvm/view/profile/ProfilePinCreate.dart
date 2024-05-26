import 'package:flutter/material.dart';
import '../../../../common/utils/theme/colors.dart';
import '../../../../common/utils/theme/typography.dart';

class ProfilePinCreate extends StatefulWidget {
  const ProfilePinCreate({super.key});

  @override
  State<ProfilePinCreate> createState() => _ProfilePinCreateState();
}

class _ProfilePinCreateState extends State<ProfilePinCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text(
          'Profile Pin Create Page',
          style: AppTypography.heading1,
        ),
      ),
    );
  }
}
