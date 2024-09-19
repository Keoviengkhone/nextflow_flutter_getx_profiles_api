import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_flutter_getx_profiles_api/controllers/profile_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var controllerProfile = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Profiles'),
        ),
      ),
      // the body contains filter text field and list of profiles
      body: Obx(
        () {
          if (controllerProfile.loading.value == true) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Text("Finish");
          }
        },
      ),
    );
  }
}
