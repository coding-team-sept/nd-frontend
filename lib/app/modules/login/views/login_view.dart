import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';


class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Flex(

            crossAxisAlignment: CrossAxisAlignment.start,
            direction: Axis.vertical,

            children: [
              //Header
              Container(
                padding: EdgeInsets.only(top: 64, left: 32, bottom: 24),
                child: Text('Login',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40),),

              ),

              //Body
              Expanded(child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(32),
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),),
                    SizedBox(height: 8,),
                    Text("Hello there, login to continue!", style: TextStyle(fontWeight: FontWeight.w700),),
                    SizedBox(height: 32,),
                    Text("Email:", style: TextStyle(fontWeight: FontWeight.w600),),
                    SizedBox(height: 8,),
                    TextField(decoration: InputDecoration(
                        filled: true, //fill the background colour
                        hintText: "johndoe@example.com"
                    ),),
                    SizedBox(height: 32,),
                    Text("Password:", style: TextStyle(fontWeight: FontWeight.w600),),
                    SizedBox(height: 8,),
                    TextField(decoration: InputDecoration(
                        filled: true, //fill the background colour
                        hintText: "********"
                    ),),
                    SizedBox(height: 16,),
                    FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 0), //button become 0 padding on the size make it
                        onPressed: (){}, child: Text("Forget password?")),

                    SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        onPressed: (){}, child: Text("Login"),),
                    ),

                    Expanded(child: Container()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        FlatButton(
                          onPressed: (){}, child: Text("Sign up"),)
                      ],)
                  ],),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24) //change the shape of container
                ),
              )),

            ],
            mainAxisSize: MainAxisSize.max,
          ),)
    );
  }
}
