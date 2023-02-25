class Subject {
  String? id;
  String? subjectname;

  Subject({this.id, this.subjectname});

  Subject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subjectname = json['subject_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['subject_name'] = subjectname;
    return data;
  }
}
