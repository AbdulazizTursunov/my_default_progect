import 'package:flutter/material.dart';

import '../data/model/data_model.dart';
import '../data/model/universal_data.dart';
import '../data/network/api_provider.dart';


 class PassagirProvider with ChangeNotifier {

  bool loading = false;
  int currentPage = 20;
  List<DataModel> dataModel = [];

  fetchResult() async {
   UniversalData universalData = await ApiProvider.getInfoPasssegarInfoByPage(
    page: currentPage,
   );
   notifyListeners();
  }

  init (){
   dataModel = fetchResult();
  }


 }
