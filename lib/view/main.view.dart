import 'package:flutter/material.dart';
import 'package:table_calendar/view/time.view.dart';
import 'package:table_calendar/view/schedule.view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double fontSize = width / 15;
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.fromLTRB(50, 30, 30, 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: TimeView(fontSize: fontSize),
                  ),
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: ScheduleView(fontSize: fontSize),
                  ),
                ),
              ])),
    );
  }
}
