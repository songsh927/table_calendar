import 'package:flutter/material.dart';
import 'package:table_calendar/viewModel/schedule.viewmodel.dart';
import 'package:provider/provider.dart';
import '../model/schedule.model.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key});

  @override
  State<ScheduleView> createState() => _ShceduleViewState();
}

class _ShceduleViewState extends State<ScheduleView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ScheduleViewModel>(builder: (context, provider, child) {
      return AspectRatio(
          aspectRatio: 2 / 1,
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext ctx, int idx) {
                return Center(
                  child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Text('Content Number $idx')),
                );
              }));
    });
  }
}
