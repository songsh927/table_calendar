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
  var _itemCnt = 100;

  @override
  Widget build(BuildContext context) {
    return Consumer<ScheduleViewModel>(builder: (context, provider, child) {
      return ListView.builder(
          itemCount: _itemCnt,
          itemBuilder: (BuildContext ctx, int idx) {
            return Center(
                child: Container(
              margin: const EdgeInsets.all(5),
              child: Container(
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '$idx',
                      style: const TextStyle(fontSize: 40),
                    ),
                    Text(
                      'Google Calendar API',
                      style: const TextStyle(fontSize: 40),
                    ),
                    IconButton(
                        iconSize: 40,
                        onPressed: () {
                          setState(() {
                            _itemCnt++;
                          });
                        },
                        icon: Icon(Icons.check_box)),
                    IconButton(
                        iconSize: 40,
                        onPressed: () {
                          setState(() {
                            _itemCnt--;
                          });
                        },
                        icon: Icon(Icons.cancel_sharp))
                  ],
                ),
              ),
            ));
          });
    });
  }
}
