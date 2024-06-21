// import 'package:firebase_core/firebase_core.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import 'package:vega_drive/views/ProfileSetting.dart';
// import 'package:vega_drive/views/home.dart';
// import 'package:vega_drive/views/loginscreen.dart';
// import 'package:vega_drive/controller/authcontroller.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   Get.put(AuthController());
//   await Firebase.initializeApp(
//     options: const FirebaseOptions(
//       apiKey: 'AIzaSyDRFgKbRlbywNVMvYa73t-x1bCeI8ktepM',
//       appId: 'vega-drive-73fa0',
//       messagingSenderId: '253324438060',
//       projectId: 'vega-drive-73fa0',
//     ),
//   );
//
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // AuthController authController = Get.put(AuthController());
//     // authController.decideRoute();
//     final textTheme = Theme.of(context).textTheme;
//
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         // Define your theme here
//       ),
//       home:  HomeScreenn(),
//     );
//   }
// }




import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vega_drive/views/decision_screen/decission_screen.dart';

import 'controller/authcontroller.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDRFgKbRlbywNVMvYa73t-x1bCeI8ktepM',
      appId: 'vega-drive-73fa0',
      messagingSenderId: '253324438060',
      projectId: 'vega-drive-73fa0',
    ),
  );
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    authController.decideRoute();
    final textTheme = Theme.of(context).textTheme;

    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(textTheme),
      ),
      home:   DecisionScreen(),
    );
  }
}
