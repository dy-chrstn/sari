import 'package:flutter/material.dart';
import 'package:sari/common/utils/theme/colors.dart';
import 'package:sari/common/utils/theme/constants.dart';

class AppButton {
  static const InputDecoration whiteField = InputDecoration(
    filled: true,
    fillColor: AppColors.dirtyWhite,
    border: OutlineInputBorder(
      borderRadius:
          BorderRadius.all(Radius.circular(AppConstants.borderRadius)),
    ),
  );

  static ButtonStyle darkButton = ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(AppColors.primaryColor),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.borderRadius)),
      ));

  static ButtonStyle whiteButton = ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(AppColors.dirtyWhite),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.borderRadius)),
      ));
}
