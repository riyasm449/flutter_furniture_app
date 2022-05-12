import 'package:flutter/material.dart';
import 'package:learn_ar_flutter/provider/auth.dart';
import 'package:learn_ar_flutter/utils/commons.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AuthProvider authProvider = AuthProvider();
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), navigate);
  }

  Future<void> navigate() async {
    // if (authProvider.auth.currentUser != null) {
    //   print('== Session Already Logged In ==');
    //   await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartingPage()));
    // } else {
    //   print('== New Session, Redirecting to Login ==');
    //   Navigator.pushReplacementNamed(context, '/login');
    // }
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: kPrimaryColor,
          ),
          Positioned(
              child: Text(
            "Mueble AR",
            style: TextStyle(color: kBackgroundColor, fontSize: 30, fontWeight: FontWeight.bold),
          )),
          Positioned(
              bottom: 20,
              child: Text(
                "by Mohamed Riyas,\n Srinivas \& Immanuvel",
                textAlign: TextAlign.center,
                style: TextStyle(color: kBackgroundColor, fontSize: 15, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
