import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_routes.dart';
import 'constants.dart';
import 'cubit/page_cubit_cubit.dart';
import 'pages/page_manager/page_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageCubitCubit(),
      child: ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Jersey',
          theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: background,
              primaryColor: Colors.black,
              primaryIconTheme: const IconThemeData(color: deepBlack),
              iconTheme: const IconThemeData(color: deepBlack),
              appBarTheme: const AppBarTheme(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  elevation: 0.0)),
          routes: appRoutes,
          initialRoute: PageManager.id,
        ),
      ),
    );
  }
}
