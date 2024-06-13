import 'package:hrplus/common/base/base_cubit.dart';
import 'package:hrplus/domain/model/daily/daily.dart';
import 'package:hrplus/domain/repo/calendar_repo.dart';
import 'package:hrplus/presentation/home/calendar/cubit/calendar_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class CalendarCubit extends BaseCubit<CalendarBuildable, CalendarListenable> {
  CalendarCubit(this._repo) : super(const CalendarBuildable()) {
    _init();
  }

  final CalendarRepo _repo;

  void _init() {
    final now = DateTime.now();
    final date = '${now.year}-${now.month}-${now.day}';
    callable(
      future: _repo.getDailyData(date),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (data) {
        final List<Daily> list = [];
        list.add(data);
        return buildable.copyWith(dataList: list, loading: false);
      },
    );
  }

  void getDailyData(String date) {
    callable(
      future: _repo.getDailyData(date),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (data) {
        final List<Daily> list = List.from(buildable.dataList);
        if (list.length >= 10) {
          list.removeLast();
        }
        list.insert(0, data);
        return buildable.copyWith(dataList: list);
      },
      buildOnDone: () => buildable.copyWith(loading: false,lastDate: date),
    );
  }
}
