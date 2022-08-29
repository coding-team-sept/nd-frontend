import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue.shade900,
        body: SafeArea(
          child: Flex(
            crossAxisAlignment: CrossAxisAlignment.start, //rang quan bu chuizhi xiangxia paile
            direction: Axis.vertical,mainAxisSize: MainAxisSize.max,
            children: [
              //Header
              Container(
                padding: const EdgeInsets.only(top: 64,left: 32,bottom: 24),
                child:const Text('Sign up',style: TextStyle(fontWeight: FontWeight.w800,fontSize:40),),
              ),
              //Body
              Expanded(child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(32),

                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(32)),
                  child:Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Welcome',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 32),),
                      const SizedBox(height: 4,),
                      const Text('Hello there, Create an account',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16)),
                      const SizedBox(height: 26,),

                      const Text('Full name:',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      const SizedBox(height: 4,),
                      const TextField(decoration: InputDecoration(
                        filled: true,
                        hintText: "Enter your full name",

                      ),),
                      const SizedBox(height: 4,),
                      const Text('Email:',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      const SizedBox(height: 4,),
                      const TextField(decoration: InputDecoration(
                        filled: true,
                        hintText: "Enter your email",

                      ),),
                      const SizedBox(height: 4,),
                      const Text('Password:',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      const SizedBox(height: 4,),
                      const TextField(decoration: InputDecoration(
                        filled: true,
                        hintText: "Enter your password",

                      ),),
                      const SizedBox(height: 4,),

                      const Text('Confirm Password:',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      const SizedBox(height: 4,),
                      const TextField(decoration: InputDecoration(
                        filled: true,
                        hintText: "Confirm your password",

                      ),),
                      const SizedBox(height: 26,),


                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: (){},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),

                          child: const Text("SIGN UP"),),),

                      //yong size box baoqilai ranhou infinty qu lakai
                      Expanded(child: Container(),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account ?"),
                          FlatButton(onPressed: (){}, child: Text('Log In'))
                        ],)

                    ],)
              ))

            ],),)
    );
  }
}