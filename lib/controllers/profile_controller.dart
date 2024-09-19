import 'package:get/get.dart';

class ProfileController extends GetxController {
  var loading = false.obs;
  void loadDataFromAPI() async {
    loading.value = true;
    await Future.delayed(
      Duration(seconds: 5),
    );
    loading.value = false;
  }
}
