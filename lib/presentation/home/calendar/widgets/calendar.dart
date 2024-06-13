import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/presentation/home/calendar/cubit/calendar_cubit.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  DateTime? _lastRequestedDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.colors.color5,
      ),
      child: TableCalendar(
        locale: context.locale.toStringWithSeparator(),
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        enabledDayPredicate: (day) {
          return day.isBefore(DateTime.now()) || isSameDay(day, DateTime.now());
        },
        onDaySelected: (selectedDay,focusedDay){
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
          if (_lastRequestedDay == null || !_isSameDay(_lastRequestedDay!, selectedDay)) {
            _lastRequestedDay = selectedDay;
            final dateString = '${selectedDay.year}-${selectedDay.month}-${selectedDay.day}';
            context.read<CalendarCubit>().getDailyData(dateString);
          }
        },
        calendarStyle: CalendarStyle(
          selectedDecoration: BoxDecoration(
            color: context.colors.color2,
            shape: BoxShape.circle,
          ),
          todayDecoration: BoxDecoration(
            border: Border.all(color: context.colors.color2,width: 1),
            shape: BoxShape.circle
          ),
          todayTextStyle: TextStyle(color: context.colors.black),
          selectedTextStyle: TextStyle(color: context.colors.color1)
        ),
      ),
    );
  }
  bool _isSameDay(DateTime day1, DateTime day2) {
    return day1.year == day2.year && day1.month == day2.month && day1.day == day2.day;
  }
}
