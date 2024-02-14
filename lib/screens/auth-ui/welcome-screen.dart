import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:shopping_me/utils/app-constant.dart';

class MyWelcome extends StatefulWidget {
  const MyWelcome({super.key});

  @override
  State<MyWelcome> createState() => _MyWelcomeState();
}

class _MyWelcomeState extends State<MyWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstant.appMainColor,
        title: Text("Welcome to ${AppConstant.appMainName}",style: const TextStyle(color: AppConstant.appTextColor),),
        centerTitle:true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                    color: AppConstant.appMainColor,
                    width: Get.width,
                    height: Get.height/3,
                    child: Image.asset("assets/images/shopping-logo1.png",height: 170,)),
                    Container(
                      margin:const EdgeInsets.only(top: 20.0),
                      child:const Text("Happy Shopping",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                      SizedBox(height:Get.height/12,),
                      Material(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppConstant.appSecondaryColor,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          width: Get.width/1.2,
                          height: Get.height/12,
                          child: TextButton.icon(
                          onPressed: (){},
                          icon: Image.asset("assets/images/final-google-logo.png",width: Get.width/12,
                          height: Get.height/12,),label:const Text("Sign in with google",style: TextStyle(color: AppConstant.appTextColor,fontSize: 17),)),
                        ),
                      ),
                      SizedBox(height:Get.height/40),
                      Material(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppConstant.appSecondaryColor,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          width: Get.width/1.2,
                          height: Get.height/12,
                          child: TextButton.icon(
                          onPressed: (){},
                          icon:const Icon(Icons.email,size: 30,),
                           label:const Text("Sign in with Email",style: TextStyle(color: AppConstant.appTextColor,fontSize: 17),)),
                        ),
                      )
          ],
        ),
      ),
    );
  }
}
