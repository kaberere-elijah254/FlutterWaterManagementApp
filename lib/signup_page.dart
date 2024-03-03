import 'package:flutter/material.dart';
import 'package:freewwaterapp/login_screen.dart';
import 'package:freewwaterapp/widget/customized_button.dart';
import 'package:freewwaterapp/widget/customized_textfield.dart';
import 'package:freewwaterapp/widget/customized_textfield2.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 236, 246),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 144, 223, 128), width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      // ignore: prefer_const_constructors
                      icon: Icon(Icons.arrow_back_ios_new_sharp),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
              //welcome title on the signup page
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'welcome onboard!\nsignup',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              //complement
              Text(
                'Lets help you meet our services.',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
              
              CustomizedTextField(
                myController: nameController,
                hintText: 'Enter your full_name',
                isPassword: false,
              ),
              // fields input based on reusability of customizedtext input fields
              CustomizedTextField(
                myController: emailController,
                hintText: 'Enter your email',
                isPassword: false,
              ), //customizedtextfiel for email
              CustomizedTextField2(
                myController: passwordController,
                hintText: 'Enter your password',
                isPassword: true,
              ), //customizedtext field for password
              CustomizedTextField2(
                myController: confirmPasswordController,
                hintText: 'Confirm your password',
                isPassword: true,
              ),
            
                CustomizedButton(
                buttonText: 'REGISTOR',
                  buttonColor: Color.fromARGB(255, 118, 233, 156),
                  textColor: Colors.white,
                onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const LoginScreenPage()));
                  }
               )
            ],
          ),
        ),
      ),
    );
  }
}
