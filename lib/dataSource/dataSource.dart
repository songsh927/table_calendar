import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/schedule.model.dart';

class DataSource {
  Future<List<Schedule>> getSchedule() async {
    final token = await getToken();

    final res = await http.get(Uri.parse(
        'https://www.googleapis.com/calendar/v3/calendars/songsh96927@gmail.com/events?access_token=$token'));

    return jsonDecode(res.body)
        .map<Schedule>((json) => Schedule.fromJson(json))
        .toList();
  }

  Future<String> getToken() async {
    const googleApiToken = '';

    return googleApiToken;
  }
}
