import 'package:flutter/material.dart';
import 'package:sari/common/utils/theme/colors.dart';
import 'package:sari/common/utils/theme/typography.dart';

class BusinessAccRegister extends StatefulWidget {
  const BusinessAccRegister({super.key});

  @override
  State<BusinessAccRegister> createState() => _BusinessAccRegisterState();
}

class _BusinessAccRegisterState extends State<BusinessAccRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text(
          'Business Register Page',
          style: AppTypography.heading1,
        ),
      ),
    );
  }
}
