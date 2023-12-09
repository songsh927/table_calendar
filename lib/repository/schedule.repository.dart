import '../dataSource/dataSource.dart';
import '../model/schedule.model.dart';

class ScheduleRepository {
  final DataSource _dataSource = DataSource();

  Future<List<Schedule>> getScheduleList() async {
    return _dataSource.getSchedule();
  }
}
