import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class TimeView extends StatefulWidget {
  const TimeView({super.key, required this.fontSize});

  final double fontSize;

  @override
  State<TimeView> createState() => _TimeViewState();
}

class _TimeViewState extends State<TimeView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: (Text(
                DateFormat('MMM d').format(DateTime.now()),
                style: TextStyle(fontSize: widget.fontSize),
              ))),
          Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Text(
                DateFormat('EE').format(DateTime.now()),
                style: TextStyle(fontSize: widget.fontSize * 2.5),
              )),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: TimerBuilder.periodic(const Duration(seconds: 1),
                builder: (context) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 2,
                      child: Text(
                        DateFormat('hh:mm:ss').format(DateTime.now()),
                        style: TextStyle(fontSize: widget.fontSize),
                      )),
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text(DateFormat('a').format(DateTime.now()),
                          style: TextStyle(fontSize: widget.fontSize))),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
