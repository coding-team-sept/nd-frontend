import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue.shade900,
        body: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(32),

            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(32)),
            child:Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    Text('Welcome',style: Get.theme.textTheme.displaySmall),
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
                      child: ElevatedButton(
                        onPressed: (){},

                        child: const Text("SIGN UP"),),),

                    //yong size box baoqilai ranhou infinty qu lakai

                  ],),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account ?"),
                    TextButton(onPressed: (){}, child: Text('Log In'))
                  ],)

              ],)
        )
    );
  }
}