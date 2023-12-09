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
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        // children: <Widget>[
        //   Text(
        //     DateFormat('MMM d').format(DateTime.now()),
        //     style: const TextStyle(fontSize: 100),
        //   ),
        //   Text(
        //     DateFormat('EE').format(DateTime.now()),
        //     style: const TextStyle(fontSize: 200),
        //   ),
        //   SizedBox(
        //     width: double.infinity,
        //     child: TimerBuilder.periodic(const Duration(seconds: 1),
        //         builder: (context) {
        //       // return Text(
        //       //   DateFormat('hh:mm:ss a').format(DateTime.now()),
        //       //   style: const TextStyle(fontSize: 100),
        //       // );
        //       return Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             DateFormat('hh:mm:ss').format(DateTime.now()),
        //             style: const TextStyle(fontSize: 100),
        //           ),
        //           Text(DateFormat('a  ').format(DateTime.now()),
        //               style: const TextStyle(fontSize: 100)),
        //         ],
        //       );
        //     }),
        //   ),
        // ],

        children: [
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: (Text(
                DateFormat('MMM d').format(DateTime.now()),
                style: const TextStyle(fontSize: 100),
              ))),
          Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Text(
                DateFormat('EE').format(DateTime.now()),
                style: const TextStyle(fontSize: 200),
              )),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: TimerBuilder.periodic(const Duration(seconds: 1),
                builder: (context) {
              return Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 2,
                      child: Text(
                        DateFormat('hh:mm:ss').format(DateTime.now()),
                        style: const TextStyle(fontSize: 100),
                      )),
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text(DateFormat('a').format(DateTime.now()),
                          style: const TextStyle(fontSize: 100))),
                  // Text(
                  //   DateFormat('hh:mm:ss').format(DateTime.now()),
                  //   style: const TextStyle(fontSize: 100),
                  // ),
                  // Text(DateFormat('  a  ').format(DateTime.now()),
                  //     style: const TextStyle(fontSize: 100)),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
