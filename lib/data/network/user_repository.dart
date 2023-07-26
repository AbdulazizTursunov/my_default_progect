import 'package:my_default_progect/data/network/api_provider.dart';

import '../model/universal_data.dart';

class UserRepository{
  final ApiProvider apiProvider;

  UserRepository({required this.apiProvider});


Future<UniversalData> getUserInfo () => apiProvider.getUserInfo();
}