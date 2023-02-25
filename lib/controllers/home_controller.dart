import 'package:flutter_application_school/models/score.dart';
import 'package:get/get.dart';

import '../gql/query/query.dart';
import '../utils/gql_sdk.dart';

class HomeController extends GetxController {
  final scores = <Score>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getScore();
  }

  getScore() async {
    try {
      final req = await hasuraConnect.query(ScoreQuery.scores);
      print(req);
      scores.clear();
      for (var score in req['data']['scores']) {
        scores.add(Score.fromJson(score));
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
