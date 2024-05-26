import 'package:flutter/material.dart';

import '../../../../common/utils/theme/colors.dart';
import '../../../../common/utils/theme/typography.dart';

class ProfileList extends StatefulWidget {
  const ProfileList({super.key});

  @override
  State<ProfileList> createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text(
          'Profile List Page',
          style: AppTypography.heading1,
        ),
      ),
    );
  }
}
