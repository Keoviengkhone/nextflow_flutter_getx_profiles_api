import 'dart:convert';

import 'package:get/get.dart';
import 'package:nextflow_flutter_getx_profiles_api/models/profile_model/profile_model.dart';

class ProfileController extends GetxController {
  var loading = false.obs;
  var profileList = <ProfileModel>[];
  void loadDataFromAPI() async {
    loading.value = true;
    var con =  Get.find<GetConnect>();
    var resp = await con.get("https://651d740c44e393af2d59d2b4.mockapi.io/api/profiles");
    // print(resp.body);
    
    var convertJson =  resp.body.map((dataJson){
      // print(dataJson);
      var profileModel = ProfileModel.fromMap(dataJson);
      return profileModel;
    });
    profileList = List<ProfileModel>.from(convertJson);

    loading.value = false;
  }
}
