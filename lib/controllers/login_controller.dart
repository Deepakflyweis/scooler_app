
import '../essentials/essentials.dart';

class LoginController extends GetxController {
  TextEditingController mobileNumber = TextEditingController();
  GlobalKey<FormState> numberKey = GlobalKey();

  String? numberValidator(value) {
    if (value!.length != 10) {
      return "Enter Valid Number";
    }
    return null;
  }


}