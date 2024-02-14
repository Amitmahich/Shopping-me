import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:shopping_me/screens/auth-ui/sign-in.dart';
import 'package:shopping_me/utils/app-constant.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({super.key});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppConstant.appMainColor,
          title:const Text("Sign Up",style: TextStyle(color: AppConstant.appTextColor,fontSize: 25),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child:Container(
            child: Column(
              children:[
                SizedBox(
                  height: Get.height/40,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Welcome to ${AppConstant.appMainName}",style:const TextStyle(fontSize: 17.0,color: AppConstant.appSecondaryColor),)),
                SizedBox(
                  height: Get.height/30,
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                    cursorColor: AppConstant.appSecondaryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                    contentPadding:const EdgeInsets.only(top: 2.0,left: 8.0),
                      prefixIcon:const Icon(Icons.email),
                      hintText: "E-mail",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      )
                    ),
                    ),
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                    cursorColor: AppConstant.appSecondaryColor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      contentPadding:const EdgeInsets.only(top: 2.0,left: 8.0),
                      prefixIcon:const Icon(Icons.person),
                      hintText: "UserName",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      )
                    ),
                    ),
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                    cursorColor: AppConstant.appSecondaryColor,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      contentPadding:const EdgeInsets.only(top: 2.0,left: 8.0),
                      prefixIcon:const Icon(Icons.phone),
                      hintText: "Phone",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      )
                    ),
                    ),
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                    cursorColor: AppConstant.appSecondaryColor,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                    contentPadding:const EdgeInsets.only(top: 2.0,left: 8.0),
                      prefixIcon:const Icon(Icons.location_city),
                      hintText: "City",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      )
                    ),
                    ),
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      obscureText: true,
                    cursorColor: AppConstant.appSecondaryColor,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      contentPadding:const EdgeInsets.only(top: 2.0,left: 8.0),
                      prefixIcon:const Icon(Icons.password),
                      hintText: "Password",
                      suffixIcon:const Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      )
                    ),
                    ),
                  ),
                ),
                 SizedBox(
                  height: Get.height/30,
                ),
                  Material(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppConstant.appSecondaryColor,
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            width: Get.width/2,
                            height: Get.height/18,
                            child: TextButton(
                            onPressed: (){},
                             child:const Text("SIGN UP",style: TextStyle(color: AppConstant.appTextColor,fontSize: 17),)),
                          ),
                        ),
                        SizedBox(height: Get.height/20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account ?",style: TextStyle(color: AppConstant.appSecondaryColor),),
                            GestureDetector(
                              onTap:() => Get.offAll(()=> MySignIn()),
                              child:const Text("Sign In",style: TextStyle(color: AppConstant.appSecondaryColor,fontWeight: FontWeight.bold),))
                          ],
                        )
              ],
            ),
          ),
        ),
      );
    });
  }
}
