import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shopping_me/firebase_options.dart';
// import 'package:shopping_me/screens/auth-ui/sign-in.dart';
// import 'package:shopping_me/screens/auth-ui/sign-up.dart';
// import 'package:shopping_me/screens/auth-ui/splash-screen.dart';
// import 'package:shopping_me/screens/auth-ui/welcome-screen.dart';

// import 'screens/splash.dart';
import 'screens/user_panel/main_screen.dart';

// import 'screens/user_panel/sign_in.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyMainScreen(),
      // builder: EasyLoading.init(),
    );
  }
}
