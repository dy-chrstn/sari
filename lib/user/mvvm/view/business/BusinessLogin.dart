import 'package:flutter/material.dart';

import '../../../../common/utils/theme/colors.dart';
import '../../../../common/utils/theme/typography.dart';

class BusinessAccLogin extends StatefulWidget {
  const BusinessAccLogin({super.key});

  @override
  State<BusinessAccLogin> createState() => _BusinessAccLoginState();
}

class _BusinessAccLoginState extends State<BusinessAccLogin> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text(
          'Business Login Page',
          style: AppTypography.heading1,
        ),
      ),
    );
  }
}
