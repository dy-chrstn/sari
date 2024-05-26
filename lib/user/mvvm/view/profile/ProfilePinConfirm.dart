import 'package:flutter/material.dart';

import '../../../../common/utils/theme/colors.dart';
import '../../../../common/utils/theme/typography.dart';

class ProfilePinConfirm extends StatefulWidget {
  const ProfilePinConfirm({super.key});

  @override
  State<ProfilePinConfirm> createState() => _ProfilePinConfirmState();
}

class _ProfilePinConfirmState extends State<ProfilePinConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text(
          'Profile Pin Confirm Page',
          style: AppTypography.heading1,
        ),
      ),
    );
  }
}
