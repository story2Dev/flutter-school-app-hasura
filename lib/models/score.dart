/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/
import 'subject.dart';

class Score {
  String? id;
  int? score;
  late Subject subject;

  Score({this.id, this.score, required this.subject});

  Score.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    score = json['score'];
    subject = Subject?.fromJson(json['subject']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['score'] = score;
    data['subject'] = subject!.toJson();
    return data;
  }
}
