import 'package:flutter/material.dart';
import 'package:my_practice_project/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "nilesh";
  bool changeButton = false;

  moveToHome(BuildContext context) async {

    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
        });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
    }
   
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset("assets/images/login_image.png",
                        fit: BoxFit.cover),
                    SizedBox(height: 30.0),
                    Text("WelCome $name",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold)),
                    SizedBox(height: 30.0),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 32.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter User Name",
                                  labelText: ("UserName")),

                                   validator: (value) {
                                if (value!.isEmpty) {
                                  return "username can not be empty";
                                }
                              },

                              onChanged: (value) {
                                setState(() {
                                  name = value;
                                });
                              },
                             
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter Password",
                                labelText: ("Password"),
                              ),
                               validator: (value) {
                                  if (value!.isEmpty) {
                                  return "username can not be empty";
                                } else if (value.length < 6) {
                                  return "password should be at least 6";
                                }
                              },
                            ),
                            SizedBox(height: 40.0),
                            Material(
                                borderRadius: BorderRadius.circular(
                                    changeButton ? 50 : 8),
                                color: Colors.deepPurple,
                                child: InkWell(
                                  onTap: () => moveToHome(context),
                                  child: AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    width: changeButton ? 50 : 150,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: changeButton
                                        ? Icon(Icons.done, color: Colors.white)
                                        : Text("Login",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                  ),
                                ))
                          ],
                        ))
                  ],
                ))));
  }
}
