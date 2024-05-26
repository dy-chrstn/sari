

import 'package:flutter/material.dart';
import 'package:sari/common/helper/NavigationService.dart';
import 'package:sari/user/mvvm/model/ProfileModel.dart';
import 'package:sari/user/mvvm/view/profile/ProfileNameEnter.dart';

class ProfileViewModel {
  final NavigationService _navigationService = NavigationService();
  TextEditingController nameController = TextEditingController();
  TextEditingController pinController = TextEditingController();

  List<ProfileModel> profiles = [];

  navigateToCreate(){
    // _navigationService.navigateTo(ProfileNameEnter());
  }
  


}