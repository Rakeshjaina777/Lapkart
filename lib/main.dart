import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laptops_expert/Search/search.dart';
import 'package:laptops_expert/Shop_By_Price/30.dart';
import 'package:laptops_expert/minor_screen/SaveMoney.dart';
import 'package:laptops_expert/minor_screen/Shop_by_brand.dart';
import 'package:laptops_expert/minor_screen/Top_Advertishment_2.dart';
import 'package:laptops_expert/minor_screen/top_advertishment_1.dart';
import 'package:laptops_expert/waste_timepass/check.dart';
import 'package:laptops_expert/providers/wish_provider.dart';
import 'package:laptops_expert/waste_timepass/one/continue_with_phone.dart';
import 'package:laptops_expert/waste_timepass/one/verifty_phone.dart';
import 'package:laptops_expert/waste_timepass/welcome.dart';
import 'package:laptops_expert/waste_timepass/widgets/login%20With%20phone.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';


import 'Main_Screen/Navigation bar.dart';


const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    'This channel is used for important notifications.', // description
    importance: Importance.high,
    playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();


  print('A bg message just showed up :  ${message.messageId}');
}



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: const FirebaseOptions(
    //   apiKey: "AIzaSyAJaxaVNnqOJt4NUn3c4mWPKvSLOaGbIlI",
    //   appId: "XXX",
    //   messagingSenderId: "XXX",
    //   projectId: "meme-see",
    // ),

  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  runApp(MultiProvider(providers: [
    // ChangeNotifierProvider(create: (_) => Cart()),
    ChangeNotifierProvider(create: (_) => Wish()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override



  Widget build(BuildContext context) {
    // addToFirebase();
    return MaterialApp(

        title: 'Laptoop expert ',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.nunitoSansTextTheme()
                .apply(bodyColor: Colors.black)),
        // initialRoute: '/Navigation bar',
        home:NavigationBardown(
          index: 0,
        ),

        // builder: (context, child) => ResponsiveWrapper.builder(
        // child,
        // maxWidth: 1200,
        // minWidth: 1001,
        // defaultScale: true,
        // breakpoints: [
        //   ResponsiveBreakpoint.resize(1001, name: MOBILE),
        //   ResponsiveBreakpoint.autoScale(800, name: TABLET),
        //   ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        // ],
        // ),
        // // home:Scaffold(
        // // initialRoute: '/welcom',
        // //   backgroundColor: Colors.grey,
        // //   body: (),
        //
        //


        routes: {
          "/Navigation bar": (context) => NavigationBardown(
            index: 0,
          ),

          // "/video": (context) => mydynamic(),
          // "/welcom": (context) => Welcome(),
          // "/ShopByBrand": (context) => shopByBrand(company: ,),
          "/thi": (context) => fourty(),
          "/SaveMoney": (context) => SaveMoney(),
          "/search": (context) => SearchScreen(),
          "/Adv_1": (context) => Top_Advertishment_one(),
          "/Adv_2": (context) => Top_Advertishment_two(),
        }
    );


  }
}