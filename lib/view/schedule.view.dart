import 'package:flutter/material.dart';
import 'package:table_calendar/viewModel/schedule.viewmodel.dart';
import 'package:provider/provider.dart';
import '../model/schedule.model.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key, required this.fontSize});

  final double fontSize;

  @override
  State<ScheduleView> createState() => _ShceduleViewState();
}

class _ShceduleViewState extends State<ScheduleView> {
  var _itemCnt = 5;

  @override
  Widget build(BuildContext context) {
    return Consumer<ScheduleViewModel>(builder: (context, provider, child) {
      return ListView.builder(
          itemCount: _itemCnt,
          itemBuilder: (BuildContext ctx, int idx) {
            return Center(
                child: Container(
              margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              height: widget.fontSize,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '$idx',
                    style: TextStyle(fontSize: widget.fontSize / 2),
                  ),
                  Text(
                    'Google Calendar API',
                    style: TextStyle(fontSize: widget.fontSize / 2),
                  ),
                  IconButton(
                      iconSize: widget.fontSize / 2,
                      onPressed: () {
                        setState(() {
                          _itemCnt++;
                        });
                      },
                      icon: Icon(Icons.check_box)),
                  IconButton(
                      iconSize: widget.fontSize / 2,
                      onPressed: () {
                        setState(() {
                          _itemCnt--;
                        });
                      },
                      icon: Icon(Icons.cancel_sharp))
                ],
              ),
            ));
          });
    });
  }
}
