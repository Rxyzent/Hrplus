import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/strings.dart';
import 'package:hrplus/domain/model/user_info/user_info.dart';
import 'package:hrplus/presentation/home/home/cubit/home_cubit.dart';
import 'package:hrplus/presentation/home/home/cubit/home_state.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AttendanceChart extends StatelessWidget {
  const AttendanceChart(
      {super.key, required this.chartData, required this.state, required this.homeContext});

  final BuildContext homeContext;
  final HomeBuildable state;
  final ChartData chartData;

  @override
  Widget build(BuildContext context) {
    final List<SingleChartData> chartDataList = [
      SingleChartData(
        index: 0,
        Strings.relax,
        chartData.relax!.toDouble(),
        context.colors.primary1,
      ),
      SingleChartData(
        index: 1,
        Strings.early,
        chartData.early!.toDouble(),
        context.colors.success,
      ),
      SingleChartData(
        index: 2,
        Strings.late,
        chartData.late!.toDouble(),
        context.colors.warning,
      ),
      SingleChartData(
        index: 3,
        Strings.forgot,
        chartData.forgot!.toDouble(),
        context.colors.info,
      ),
      SingleChartData(
        index: 4,
        Strings.dontCome,
        chartData.dontCome!.toDouble(),
        context.colors.danger,
      )
    ];
    final deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: deviceWidth / 2,
          child: Stack(children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SfCircularChart(
                  centerY: '100%',
                  margin: EdgeInsets.zero,
                  series: <CircularSeries>[
                    DoughnutSeries<SingleChartData, String>(
                      dataSource: chartDataList,
                      xValueMapper: (SingleChartData data, _) => data.x,
                      yValueMapper: (SingleChartData data, _) => data.y,
                      pointColorMapper: (SingleChartData data, _) => data.color,
                      dataLabelMapper: (SingleChartData data, _) =>
                      '${double.parse(((100 * data.y) / chartData.all!
                          .toDouble()).toStringAsFixed(1))}%',
                      dataLabelSettings: const DataLabelSettings(
                        isVisible: true,
                        showZeroValue: false,
                        textStyle: TextStyle(color: Colors.white),
                      ),
                      onPointTap: (chartPointDetails) {
                        if (chartPointDetails.pointIndex != null) {
                          homeContext.read<HomeCubit>().setSingleChartData(
                              chartDataList[chartPointDetails.pointIndex!]);
                        }
                      },
                      selectionBehavior: SelectionBehavior(
                          enable: true,
                          toggleSelection: true,
                          selectedBorderColor: context.colors.color2),
                      name: 'sda',
                      radius: '105%',
                      innerRadius: '70%',
                      startAngle: 270,
                      endAngle: 90,
                      explode: true,
                      explodeAll: false,
                      explodeOffset: '5%',
                      explodeIndex: state.singleChartData?.index,
                      explodeGesture: ActivationMode.singleTap,
                    ),
                  ]),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: SizedBox(
                //width: deviceWidth,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (state.singleChartData == null)
                        chartData.all
                            .toString()
                            .w(500)
                            .s(34)
                            .c(context.colors.color4),
                      if (state.singleChartData != null)
                        Column(
                          children: [
                            state.singleChartData!.y.toInt()
                                .toString()
                                .w(500)
                                .s(34)
                                .c(state.singleChartData!.color),
                            state.singleChartData!.x
                                .w(500)
                                .s(18)
                                .c(state.singleChartData!.color),
                          ],
                        )
                    ]),
              ),
            ),
            Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: SizedBox(
                  width: deviceWidth,
                  height: deviceWidth,
                ))
          ]),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            _AttendanceInfo(
                color: context.colors.success,
                title: Strings.early,
                num: chartData.early.toString()),
            const SizedBox(width: 8),
            _AttendanceInfo(
                color: context.colors.warning,
                title: Strings.late,
                num: chartData.late.toString()),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            _AttendanceInfo(
                color: context.colors.info,
                title: Strings.forgot,
                num: chartData.forgot.toString()),
            const SizedBox(width: 8),
            _AttendanceInfo(
                color: context.colors.primary1,
                title: Strings.relax,
                num: chartData.relax.toString()),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            _AttendanceInfo(
                color: context.colors.danger,
                title: Strings.dontCome,
                num: chartData.dontCome.toString()),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ],
    );
  }
}

class _AttendanceInfo extends StatelessWidget {
  const _AttendanceInfo({
    required this.color,
    required this.title,
    required this.num,
  });

  final Color color;
  final String title;
  final String num;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: context.colors.color2,
            )),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                //shape: BoxShape.circle,
                color: color,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
                child: title
                    .w(500)
                    .s(15)
                    .c(context.colors.color3)
                    .copyWith(maxLines: 1, overflow: TextOverflow.ellipsis)),
            const SizedBox(width: 8),
            num.w(600).s(15).c(context.colors.color4),
          ],
        ),
      ),
    );
  }
}

class SingleChartData {
  SingleChartData(this.x, this.y, this.color, {this.index});

  final int? index;
  final String x;
  final double y;
  final Color color;
}
