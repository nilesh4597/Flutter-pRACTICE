import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
    color: Colors.white,
        child: Column(
      children: [
        Image.asset("assets/images/login_image.png", fit: BoxFit.cover,),
        SizedBox(height:30.0),
        Text("WelCome",
        style:TextStyle(fontSize: 24,
        fontWeight: FontWeight.bold)
        ),
         SizedBox(height:30.0),

        Padding(
        padding:EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                    children: [
                  TextFormField(
                            decoration: InputDecoration(hintText: "Enter User Name",labelText: ("UserName")),
                          ),


                            TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(hintText: "Enter Password",labelText: ("PassWord"),
                           ),
                          ),

                             SizedBox(height:30.0),
                             ElevatedButton(
                                child: Text("Login"),
                             style:TextButton.styleFrom(), 
                             
                              onPressed: (){

                             },)
                    ],
                  )
        )
      ],
    ));
  }
}
