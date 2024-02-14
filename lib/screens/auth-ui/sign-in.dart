import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_me/screens/auth-ui/sign-up.dart';
import 'package:shopping_me/utils/app-constant.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({super.key});

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppConstant.appMainColor,
          title:const Text("Sign In",style: TextStyle(color: AppConstant.appTextColor,fontSize: 25),),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              isKeyboardVisible?const SizedBox.shrink():
              Column(
                children: [
                  Container(
                    color: AppConstant.appMainColor,
                    width: Get.width,
                    height: Get.height/3,
                    child: Image.asset("assets/images/shopping-logo1.png",height: 170,))
                ],
              ),
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
                    obscureText: true,
                  cursorColor: AppConstant.appSecondaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding:const EdgeInsets.only(top: 2.0,left: 8.0),
                    prefixIcon:const Icon(Icons.password),
                    hintText: "Password",
                    suffixIcon: const Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.centerRight,
                child:const Text("Forget Password ?",style: TextStyle(color: AppConstant.appSecondaryColor,fontWeight: FontWeight.bold),)),
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
                           child:const Text("SIGN IN",style: TextStyle(color: AppConstant.appTextColor,fontSize: 17),)),
                        ),
                      ),
                      SizedBox(height: Get.height/20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don`t have an account ?",style: TextStyle(color: AppConstant.appSecondaryColor),),
                          GestureDetector(
                            onTap: () => Get.offAll(()=>MySignUp()),
                            child:const Text("Sign Up",style: TextStyle(color: AppConstant.appSecondaryColor,fontWeight: FontWeight.bold),))
                        ],
                      )
            ],
          ),
        ),
      );
    });
  }
}
