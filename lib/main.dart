import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_ar_flutter/provider/auth.dart';
import 'package:learn_ar_flutter/splash-screen.dart';
import 'package:learn_ar_flutter/view/starting_page.dart';
import 'package:provider/provider.dart';

import 'utils/commons.dart';
import 'view/login/login-page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    print('== Firebase Core Initialization Success ==');
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
            primaryColor: kPrimaryColor,
            accentColor: kPrimaryColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          // home: StartingPage(),
          home: SplashScreen(),
          debugShowCheckedModeBanner: false,
          routes: <String, WidgetBuilder>{
            '/splash': (BuildContext context) => SplashScreen(),
            '/login': (BuildContext context) => LoginPage(),
            '/home': (BuildContext context) => StartingPage(),
          }),
    );
  }
}
