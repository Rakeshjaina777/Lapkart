//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Cart extends StatefulWidget {
//   const Cart({Key? key}) : super(key: key);
//
//   @override
//   State<Cart> createState() => _CartState();
// }
//
// class _CartState extends State<Cart> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//
//
//     appBar:   AppBar(
//     elevation: 0.2,
//     // shape: Border(
//     //     bottom: BorderSide(
//     //       width:1,
//     //       color: Colors.transparent,
//     //     )
//
//     // ),
//     automaticallyImplyLeading: true,
//     iconTheme: IconThemeData(color: Colors.black),
//     backgroundColor: Colors.white,
//     title: Text("Cart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 25),),
//     )
//         ),
//
//
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
import 'package:laptops_expert/providers/wish_model.dart';
import 'package:laptops_expert/providers/wish_provider.dart';
import 'package:laptops_expert/waste_timepass/widgets/alert_dialog.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../waste_timepass/widgets/appbar_widgets.dart';



CollectionReference a= FirebaseFirestore.instance.collection('Products');

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final GlobalKey<ScaffoldMessengerState> scaffoldKey =
  GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading:
          // Navigator.push ?SizedBox(height: 4,):

          AppBarBackButton(),
          title: const AppBarTitle(title: 'WISHLIST'),
          actions: [
            context.watch<Wish>().getWishItems.isEmpty
                ? const SizedBox()
                : IconButton(
                onPressed: () {
                  MyAlertDilaog.showMyDialog(
                      context: context,
                      title: 'Clear Wishlist',
                      content: 'Are you sure to clear Wishlist ?',
                      tabNo: () {
                        Navigator.pop(context);
                      },
                      tabYes: () {
                        context.read<Wish>().clearWishlist();
                        Navigator.pop(context);
                      });
                },
                icon: const Icon(
                  Icons.delete_forever,
                  color: Colors.black,
                ))
          ],
        ),
        body: context.watch<Wish>().getWishItems.isNotEmpty
            ? const WishItems()
            : const EmptyWishlist(),
      ),
    );
  }
}

class EmptyWishlist extends StatefulWidget {
  const EmptyWishlist({
    Key? key,
  }) : super(key: key);

  @override
  State<EmptyWishlist> createState() => _EmptyWishlistState();
}

class _EmptyWishlistState extends State<EmptyWishlist> {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: MediaQuery.of(context).size.height *0.55,
                  width: MediaQuery.of(context).size.width  ,

                  decoration: BoxDecoration(
                    //
                    color: Colors.white,
                    // border: Border.all(color:Colors.teal,width: 2.55),

                    borderRadius: BorderRadius.circular(15),
                    // shape: RoundedRectangleBorder(
                    //
                    //   borderRadius: BorderRadius
                    //       .circular(10)),
                    // child: Image(
                    image: DecorationImage(

                        image: AssetImage("Assests/images/bags/cart.png"),fit: BoxFit.fitWidth
                    ),
                      //
                    //
                  ),
              ),
            ),

            SizedBox(height: 5),






            CustomBtn(label: "START SHOPING",
                color: AppColors.redA,

                action: (){

              Navigator.pushNamed(context, "/Navigation bar");
                }),

            SizedBox(height: 25,),







//
//             CustomBtn(label: "ADD",
//                 color: AppColors.redA,
//
//                 action: ()async {
//                   var Proid = const Uuid().v4();
//
// //                   Map<String, dynamic> ourData = {
// //
// //                     // 'Aboutbrand':"",
// //                     'Score': "71%",
// //                     'Images': [
// //
// //                       "",
// //                       "",
// //
// //                     ],
// //                     'Proname': [
// //
// //                       "Acer one 14 ",
// //                       // "11th Gen Core i3 ",
// //                       "AMD Hexa Core Ryzen 3",
// //                       "8 GB RAM & 256 SSD",
// //                       "Buy from Amazon at lowest price online >",
// //                     ],
// //
// //                     'Prodesc':
// //                     // "🔶️ Inter 11th Gen Core i3\n"
// //                     "🔶️ AMD Hexa Core Ryzen 3 \n"
// //                     "🔶️ 8 GB (3200Mhz)RAM & 256 SSD Storage \n"
// //                         // "🔶️ 4 GB NVIDA RTX 3050 Graphic Card\n",
// //                         // "🔶️ Intel UHD Graphic Card\n"
// //                         "🔶️ AMD Radeon Graphic\n"
// //                         // "🔶️ AMD  & Touch screen\n"
// //                         "🔶️ Stylish Look & Light weight\n",
// //
// //                     'Amazon': "https://www.amazon.in/?&ext_vrnc=hi&tag=googhydrabk1-21&ref=pd_sl_7hz2t19t5c_e&adgrpid=58355126069&hvpone=&hvptwo=&hvadid=486458706470&hvpos=&hvnetw=g&hvrand=2459606951605834764&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=20462&hvtargid=kwd-10573980&hydadcr=14453_2154373&gclid=Cj0KCQjw39uYBhCLARIsAD_SzMTLr64weMEndrbEETmTecCES1Mz9Gyxzu3Ybp4p7EwE_jyXPqjlgxgaAqxqEALw_wcB",
// //
// //
// //                     'Flipkart': "https://www.flipkart.com/",
// //
// //
// //                     'Itemdesc': "🔶 Display: 34.62.62 cms (14 inches) \n"
// //                     "🔶 Memory: 8 GB DDR4 RAM, 256GB SSD ROM\n"
// //                     // "🔶 Processor: Intel Core i3 11th Generation\n"
// //                         "🔶 Processor: Ryzen 3 3250 U Generation\n"
// //                    "🔶  OS: Windows 11 Home Basic\n"
// //                         // "🔶 Graphics: NVDIA GTX 1650 Dedicated Graphic\n"
// //
// //                    "🔶 charger  3-cell battery backup Upto 5-8 hours\n"
// //                     "🔶 Warranty: 1 Year Onsite\n",
// //
// //
// //                     'Benchmark': [
// //
// //                  "Acer one14 Laptop (Ryzen 3 Generation / 4GB/ 256GB SSD/ Win11 Home/ ) price in India starts from ₹28.990 It is available at lowest price on Amazon Store in India as on Sep 08, 2022. Take a look on detailed specifications and features:",
// //                     "",
// //
// //
// //
// //
// //
// //
// //
// //                       "🔶 Lightweight and compact\n"
// //                       //     "🔶 Best For \n"
// //                      "🔶  Minimal, premium, Metalic design\n"
// //                       // "🔶  Excellent for Video Editing\n"
// //                       "🔶 Sturdy build\n"
// //                       // "🔶 Nice FHD IPS display with 360 Rotation Hinge nit Peak Brightness\n"
// //                       // "🔶 Quality trackpad and backlit keyboard with R-G-B light  \n"
// //                       //     "🔶 Quality trackpad and backlit keyboard (white)\n"
// //
// //                      // "🔶  Excellent performance for Gaming\n"
// //                           // "🔶  Nitrosense Sofware for  Customizing  fan speeds\n"
// //                           // "🔶  Excellent  Cooling System\n"
// //                       // "🔶  Microsoft office Home & student absolutely free\n"
// //                       // "🔶 Fast, accurate fingerprint scanner\n"
// //                       // "🔶 Lots of ports &1* USB type -C\n"
// //                           "🔶 3- cell battery type\n",
// //                       // "🔶 Fast charging\n",
// //
// //
// //
// //                       // cons
// //
// // // "🔶  Lower Referesh rate 120Hz only\n"
// //                       "🔶  Less Core & threads as compare to i5/Ryzen 5 model\n"
// // //                  "🔶  GTX 1650 isn't power enough to run AAA games smoothly at max settings.\n"
// //                  "🔶  Gets hot and loud under load.\n"
// //                   "🔶 Battery lasts only a little over  five hours of light productivity.\n"
// //                // "🔶  A little too bulky and heavy to bring everywhere.\n",
// //                           "🔶 Backlight keyboard  not Present  \n"
// //
// //                       // "🔶 Less  ports\n"
// //                       // "🔶 Only 8GB RAM option and RAM isn't user-upgradeable so go for 16GB RAM\n🔶 "
// //                           "🔶 Fingerprint scanner not Present \n",
// //                          // "🔶 Function key behavior can't be toggled\n "
// //
// //
// //
// //                       // coding
// //
// //                       "🔶 Good For Coding &Development but try for higher varient \n"
// //                       // "🔶 Quality trackpad and backlit keyboard with R-G-B help in night to enjoying coding & anti glare Screen \n"
// //                       "🔶 Quality trackpad   & anti glare Screen.\n"
// //                       // "🔶 Very little throttling over time.\n"
// //                   "🔶 Upgradeable RAM and 2.5 inch drive slot.\n"
// //                  "🔶 Numpad makes it easier to do calculations or work in coding.\n"
// //                           // "🔶  Microsoft office Home & student included software\n"
// //                       // "🔶 Lightweight and compact \n"
// //                       // "🔶 Nice Touch display for development\n"
// //                       // "🔶 Fast charging and batter backupto 12 hours sufficient for office work and collage work\n"
// //                           "🔶 Latest wifi connectivity \n",
// //                           // "🔶 Try to buy i5 version 16 GB RAM for better core & performance \n",
// //
// //
// //
// //
// //                       // "bussiness"
// //
// //                       // "🔶 Numpad makes it easier to do calculations or work in spreadsheets.\n"
// //
// //                           "🔶 Lightweight and compact\n"
// //                           // "🔶 Very little throttling over time.\n"
// //                           "🔶 Upgradeable RAM and 2.5 inch drive slot.\n"
// //
// //                           // "🔶  Microsoft office Home & student include \n"
// //                           "🔶 Sturdy build\n",
// //
// //
// //
// //
// //
// //
// //                       // "bba/mba"
// //
// //
// //
// //                       "🔶 Stylish look .\n"
// //                           "🔶 Lightweight and compact\n"
// //                       // "🔶 Numpad makes it easier to do calculations or work in spreadsheets.\n"
// //
// //                           "🔶 Very little throttling over time.\n"
// //                           "🔶 Upgradeable RAM and 2.5 inch drive slot.\n"
// //                           // "🔶  Microsoft office Home & student include \n"
// //
// //                           "🔶 Sturdy build\n",
// //
// //
// //                     ],
// //
// //
// //                     'BenchmarkScore': [
// //                       "8.1",
// //                       "8.4",
// //                       "4.0",
// //
// //                       "7.1",
// //                       "7.9",
// //                       "7.4",
// //
// //
// //                     ],
// //
// //
// //                     'Brand': "Acer",
// //
// //                     'Price': "30",
// //
// //
// //                     'Pricetype ': 29800,
// //
// //
// //                     'Prodnumber': '17',
// //
// //
// //                     'Category': 'coding',
// //
// //
// //                     'Proid': Proid,
// //
// //
// //                     // 'Productname':[] ,
// //                     //
// //                     //
// //                     //
// //                     // 'Score':[] ,
// //                     //
// //                     // 'itemhighlight':"",
// //                     //
// //
// //
// //                     // 'review ': ,
// //                     // 'rating ': data,
// //                     // 'name': name,
// //                     // 'occoupation': occupation,
// //                     // "key 4": [12,14,16],
// //                   };
// //
//
//
//                   Map<String, dynamic> ourData = {
//
//                     // 'Aboutbrand':"",
//                     'Score': "89%",
//                     'Images': [
//
//                       "",
//                       "",
//
//                     ],
//                     'Proname': [
//
//                       "Apple MacBook Pro M2   ",
//                       "Apple M1 Octa core ",
//                       // "11th Gen Core i3 ",
//                       // "AMD Hexa Core Ryzen 3",
//                       "8 GB LPDDR5 RAM & 256 SSD",
//
//                       "Buy from Croma at lowest price online >",
//                     ],
//
//                     'Prodesc':
//
//                     "🔶️ Apple M1 chips &octa Core  \n"
//                         "🔶️ 8 GB LPPDDR4 RAM & 256 SSD Storage \n"
//                     // "🔶️ 4 GB NVIDA RTX 3050 Graphic Card\n",
//                     // "🔶️ Intel UHD Graphic Card\n"
//                         "🔶️ 8 - core GPU"
//                     // "🔶️ AMD  & Touch screen\n"
//                         "🔶️ Stylish Look & Light weight\n",
//
//                     'Amazon': "https://www.amazon.in/?&ext_vrnc=hi&tag=googhydrabk1-21&ref=pd_sl_7hz2t19t5c_e&adgrpid=58355126069&hvpone=&hvptwo=&hvadid=486458706470&hvpos=&hvnetw=g&hvrand=2459606951605834764&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=20462&hvtargid=kwd-10573980&hydadcr=14453_2154373&gclid=Cj0KCQjw39uYBhCLARIsAD_SzMTLr64weMEndrbEETmTecCES1Mz9Gyxzu3Ybp4p7EwE_jyXPqjlgxgaAqxqEALw_wcB",
//
//
//                     'Flipkart': "https://www.flipkart.com/",
//
//
//                     'Itemdesc': "🔶 Display: 33.62.62 cms (13.6 inches) \n"
//                         "🔶 Memory: 8 GB LPDDR4 RAM, 256GB SSD ROM\n"
//
//
//                         "🔶 Charger  67  USB-C-POWER ADAPTOR & battery backup to 15-20 hours\n"
//                         "🔶 Warranty: 1 Year Onsite\n",
//
//
//                     'Benchmark': [
//
//
//                       "Apple MacBook Pro M2 Laptop (Apple Pro M2/ 8GB/ 256GB/ MacOS) price in India starts from ₹1,29,900. It is available at lowest price on Croma in India as on Sep 09, 2022. Take a look at detailed specifications and features below:",
//                       "",
//
//
//
//
//
//
//
//                       "🔶 Lightweight and compact\n"
//                           "🔶 Best Battery Life \n"
//                           "🔶  Minimal, premium, Metalic design\n"
//                       "🔶  Excellent for Coding & Bussiness works\n"
//                           "🔶  Bright, high - resolution screen\n"
//                           "🔶  Completly silent due to its fanless design\n"
//                           "🔶 Sturdy build\n"
//                       // "🔶 Nice FHD IPS display with 360 Rotation Hinge nit Peak Brightness\n"
//                       // "🔶 Quality trackpad and backlit keyboard with R-G-B light  \n"
//                           "🔶 Excellent trackpad and backlit keyboard (white)\n"
//
//                       // "🔶  Excellent performance for Gaming\n"
//                       // "🔶  Nitrosense Sofware for  Customizing  fan speeds\n"
//                       // "🔶  Excellent  Cooling System\n"
//                       // "🔶  Microsoft office Home & student absolutely free\n"
//                       // "🔶 Fast, accurate fingerprint scanner\n"
//                       // "🔶 Lots of ports &1* USB type -C\n"
//                       //     "🔶 3- cell battery type\n",
//                       "🔶 Fast charging\n",
//
//
//
//                       // cons
//
// // "🔶  Lower Referesh rate 120Hz only\n"
//                       "🔶  Less ports \n"
// //                  "🔶  GTX 1650 isn't power enough to run AAA games smoothly at max settings.\n"
//                           "🔶  Not user - upgradeable\n"
//                           "🔶 CPU trottlles under load\n"
//                       "🔶  Black look gray in dark \n",
//                       //     "🔶 Backlight keyboard  not Present  \n"
//
//                       // "🔶 Less  ports\n"
//                       // "🔶 Only 8GB RAM option and RAM isn't user-upgradeable so go for 16GB RAM\n🔶 "
//                       //     "🔶 Fingerprint scanner not Present \n",
//                       // "🔶 Function key behavior can't be toggled\n "
//
//
//
//                       // coding
//
//                       "🔶 Excellent For Coding &Development(8-cores) \n"
//                       // "🔶 Quality trackpad and backlit keyboard with R-G-B help in night to enjoying coding & anti glare Screen \n"
//                           "🔶 Quality trackpad   & anti glare Screen.\n"
//                       // "🔶 Very little throttling over time.\n"
//                       //     "🔶 Upgradeable RAM and 2.5 inch drive slot.\n"
//                       //     "🔶 Numpad makes it easier to do calculations or work in coding.\n"
//                       // "🔶  Microsoft office Home & student included software\n"
//                       "🔶 Lightweight and compact \n"
//                           "🔶  Bright, high - resolution screen\n"
//                       "🔶 Fast charging and battery backupto 12-16 hours, sufficient for office work and collage work\n"
//                           "🔶 Latest wifi connectivity \n",
//                       // "🔶 Try to buy i5 version 16 GB RAM for better core & performance \n",
//
//
//
//
//                       // "bussiness"
//
//                       // "🔶 Numpad makes it easier to do calculations or work in spreadsheets.\n"
//
//                       "🔶 Lightweight and compact\n"
//                           "🔶  Bright, high - resolution screen\n"
//                           "🔶 Excellent trackpad and backlit keyboard (white)\n"
//                           "🔶 Fast charging\n"
//                           "🔶  Battery Life backup upto to 17 hours \n"
//                       // "🔶 Very little throttling over time.\n"
//                       //     "🔶 Upgradeable RAM and 2.5 inch drive slot.\n"
//
//                       // "🔶  Microsoft office Home & student include \n"
//                           "🔶 Sturdy build\n",
//
//
//
//
//
//
//                       // "bba/mba"
//
//
//                       "🔶 Lightweight and compact\n"
//                           "🔶  Bright, high - resolution screen\n"
//                           "🔶 Excellent trackpad and backlit keyboard (white)\n"
//                           "🔶 Fast charging\n"
//                           "🔶  Battery Life backup upto to 16 hours \n"
//                       // "🔶 Very little throttling over time.\n"
//                       //     "🔶 Upgradeable RAM and 2.5 inch drive slot.\n"
//
//                       // "🔶  Microsoft office Home & student include \n"
//                           "🔶 Sturdy build\n",
//
//
//                     ],
//
//
//                     'BenchmarkScore': [
//                       "8.6",
//                       "8.9",
//                       "3.7",
//
//                       "9.1",
//                       "9.2",
//                       "9.2",
//
//
//                     ],
//
//
//                     'Brand': "Apple",
//
//                     'Price': "80",
//
//
//                     'Pricetype ': 12900,
//
//
//                     'Prodnumber': '20',
//
//
//                     'Category': 'coding',
//
//
//                     'Proid': Proid,
//
//
//                     // 'Productname':[] ,
//                     //
//                     //
//                     //
//                     // 'Score':[] ,
//                     //
//                     // 'itemhighlight':"",
//                     //
//
//
//                     // 'review ': ,
//                     // 'rating ': data,
//                     // 'name': name,
//                     // 'occoupation': occupation,
//                     // "key 4": [12,14,16],
//                   };
//
//
//
//                   await a.add(ourData).then((value) =>
//                       print(
//                           '-----------\n------User added---------------------------------------'
//                               '-----------'));
//                 }),
    // setState((){
    // var onPressedValue =false;
    // });
    //
    //
    // Timer(Duration(seconds: 35),
    //
    // setState((){
    // onPressedValue =true;
    // });



    // }:null)
    //
    //
    //         });}:null
    //






            SizedBox(height: 25,),







          ],
        ),
      );








    //
    //   Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: const [
    //
    //
    //
    //
    //       Text(
    //         'Your Wishlist Is Empty !',
    //         style: TextStyle(fontSize: 30),
    //       ),
    //     ],
    //   ),
    // );
  }
}

class WishItems extends StatefulWidget {
  const WishItems({Key? key}) : super(key: key);

  @override
  State<WishItems> createState() => _WishItemsState();
}

class _WishItemsState extends State<WishItems> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Wish>(
      builder: (context, wish, child) {
        return ListView.builder(
            itemCount: wish.count,
            itemBuilder: (context, index) {
              final product = wish.getWishItems[index];
              return WishlistModel(
                product: product,
              );
            });
      },
    );
  }
}
