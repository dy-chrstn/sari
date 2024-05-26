import 'package:flutter/material.dart';

import '../../../../common/utils/theme/colors.dart';
import '../../../../common/utils/theme/typography.dart';

class ProfilePinEnter extends StatefulWidget {
  const ProfilePinEnter({super.key});

  @override
  State<ProfilePinEnter> createState() => _ProfilePinEnterState();
}

class _ProfilePinEnterState extends State<ProfilePinEnter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text(
          'Profile Pin Enter Page',
          style: AppTypography.heading1,
        ),
      ),
    );
  }
}