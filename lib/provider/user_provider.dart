import 'package:flutter/cupertino.dart';
import 'package:my_default_progect/data/model/universal_data.dart';
import 'package:my_default_progect/data/model/user_model.dart';
import 'package:my_default_progect/data/network/user_repository.dart';

class UserProvider with ChangeNotifier {
  UserRepository userRepository;

  UserProvider({required this.userRepository}) {
    fetchInfoUser();
  }

  bool isLoading = false;
  String errorText = '';
  List<UserModel>? mainModelUser;

  fetchInfoUser() async {
    notify(true);
    UniversalData universalData = await userRepository.getUserInfo();
    notify(false);print(universalData.data);

    if (universalData.error.isEmpty) {
      mainModelUser = universalData.data;
    } else {
      errorText = universalData.error;
      notify(false);
    }
  }

  notify(bool value) {
    isLoading = value;
    notifyListeners();
  }
}
