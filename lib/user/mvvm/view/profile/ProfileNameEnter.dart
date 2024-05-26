import 'package:flutter/material.dart';

import '../../../../common/utils/theme/colors.dart';
import '../../../../common/utils/theme/typography.dart';

class ProfileNameEnter extends StatefulWidget {
  const ProfileNameEnter({super.key});

  @override
  State<ProfileNameEnter> createState() => _ProfileNameEnterState();
}

class _ProfileNameEnterState extends State<ProfileNameEnter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text(
          'Profile Name Enter Page',
          style: AppTypography.heading1,
        ),
      ),
    );
  }
}