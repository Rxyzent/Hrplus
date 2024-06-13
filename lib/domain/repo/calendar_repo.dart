import 'package:hrplus/domain/model/daily/daily.dart';

abstract class CalendarRepo {
  Future<Daily> getDailyData(String date);
}