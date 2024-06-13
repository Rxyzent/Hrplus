import 'package:hrplus/data/calendar/calendar_api.dart';
import 'package:hrplus/domain/model/daily/daily.dart';
import 'package:hrplus/domain/repo/calendar_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CalendarRepo)
class CalendarRepoImpl extends CalendarRepo {
  CalendarRepoImpl(this._api);

  final CalendarApi _api;

  @override
  Future<Daily> getDailyData(String date) async{
    final response = await _api.getDailyData(date);
    return Daily.fromJson(response.data);
  }
}