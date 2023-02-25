import 'package:flutter_application_school/config/config.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hasura_connect/hasura_connect.dart';

final _box = GetStorage();
final _token = _box.read(AppConfig.accessToken);

HasuraConnect hasuraConnect = HasuraConnect(AppConfig.env.apiUrl,
    headers: {'Authorization': 'Bearer $_token'});
