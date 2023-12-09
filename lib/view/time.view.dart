import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class TimeView extends StatefulWidget {
  const TimeView({super.key});

  @override
  State<TimeView> createState() => _TimeViewState();
}

class _TimeViewState extends State<TimeView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            DateFormat('MMM d').format(DateTime.now()),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            DateFormat('EE').format(DateTime.now()),
            style: Theme.of(context).textTheme.displayLarge,
          ),
          TimerBuilder.periodic(const Duration(seconds: 1), builder: (context) {
            return Text(
              DateFormat('hh:mm:ss a').format(DateTime.now()),
              style: Theme.of(context).textTheme.headlineMedium,
            );
          })
        ],
      ),
    );
  }
}
