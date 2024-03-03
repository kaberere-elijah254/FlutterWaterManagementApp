import 'package:flutter/material.dart';
import 'package:freewwaterapp/signup_page.dart';
import 'package:freewwaterapp/widget/customized_button.dart';
//import 'package:freewwaterapp/signup_page.dart';
//import 'package:freewwaterapp/widget/customized_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 230, 235),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/fingerpillustration.gif'),
          )),
          child: Column(
            children: [
              SizedBox(
                height: 80.0,
              ),
              Text(
                'waterToken',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Smart water managementa app',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'We help you meet our services',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
              /*SizedBox(
                height: 250,
                child: Image(
                  image: AssetImage('images/logo_transparent.png'),
                  fit: BoxFit.cover,
                ),

              ),*/
              SizedBox(
                height: 400.0,
              ),
              CustomizedButton(
                  buttonText: 'GET  STARTED',
                  buttonColor: Color.fromARGB(255, 118, 233, 156),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignupPage()));
                  })
            ],
          )),
    );
  }
}
