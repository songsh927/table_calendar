import 'package:flutter/material.dart';
import 'package:table_calendar/view/main.view.dart';
import 'package:table_calendar/viewModel/schedule.viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ScheduleViewModel>(
            create: (_) => ScheduleViewModel()),
      ],
      child: MaterialApp(
        title: 'Table Manager',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainView(),
      ),
    );
  }
}
