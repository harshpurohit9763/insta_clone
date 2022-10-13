import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/responsive/responsive_layout.dart';
import 'package:instagram_flutter/screens/login_screen.dart';
import 'package:instagram_flutter/screens/signup_screen.dart';
import 'package:instagram_flutter/utils/Colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'responsive/mobileScreen_layout.dart';
import 'widget/text_field_input.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBGpRVAHgFYK47FLc_IqNo4uv9JrgiTOtQ",
        appId: "1:693173765272:web:a1e829b98b76494229bced",
        messagingSenderId: "693173765272",
        projectId: "instagram-clone-f6d3c",
        storageBucket: "instagram-clone-f6d3c.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        // home: const ResponsiveLayout(
        //   mobileScreenLayout: MobileScreenLayout(),
        //   webScreenLayout: WebScreenLayout(),
        // ),
        home: SignupScreen());
  }
}
