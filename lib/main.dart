
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madcamp_week3/ball_simulation.dart';
import 'package:madcamp_week3/home_page.dart';
import 'package:madcamp_week3/main_page.dart';
import 'package:madcamp_week3/model/memo_provider.dart';
import 'package:madcamp_week3/model/screen_provider.dart';
import 'package:madcamp_week3/model/user_provider.dart';
import 'package:madcamp_week3/object/moon.dart';
import 'package:provider/provider.dart';

import 'ball_simulation_2.dart';
import 'constants/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Enable hardware acceleration.
  WidgetsBinding.instance.addPostFrameCallback((_) {
    SchedulerBinding.instance.scheduleWarmUpFrame();
  });
  // runApp(MainPage());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => ScreenProvider()),
        ChangeNotifierProvider(create: (context) => MemoProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          // scaffoldBackgroundColor: RISECOLOR.background,
          useMaterial3: true,
        ),
        home: HomePage(),
        // home: MainPage(),
      ),
    );
  }
}


