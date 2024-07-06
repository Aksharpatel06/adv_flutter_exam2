import 'dart:convert';

import 'package:adv_flutter_exam2/view/modal/main_modal.dart';
import 'package:adv_flutter_exam2/view/provider/helper/api_sarvice.dart';
import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider() {
    getData();
  }

  Modal? modal;

  Future<void> getData() async {
    ApiSarvice apiSarvice = ApiSarvice();
    String? json = await apiSarvice.fetchData();
    Map jsonData = jsonDecode(json!);
    if (jsonData.isNotEmpty) {
      print(jsonData);
      modal = Modal(jsonData);
      notifyListeners();
    }
    notifyListeners();
  }
}
