
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laptops_expert/Main_Screen/Navigation%20bar.dart';
import 'package:laptops_expert/Main_Screen/Shop_BY_Price.dart';
import 'package:laptops_expert/Main_Screen/cartpage.dart';
import 'package:laptops_expert/Main_Screen/homepage.dart';
import 'package:laptops_expert/Main_Screen/laptoopCategory.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
import 'package:laptops_expert/minor_screen/Alert.dart';
import 'package:laptops_expert/minor_screen/SaveMoney.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class DRAWER extends StatefulWidget {
  const DRAWER({Key? key}) : super(key: key);

  @override


  State<DRAWER> createState() => _DRAWERState();
}




CollectionReference a= FirebaseFirestore.instance.collection('Products').doc("").collection("collectionPath");


class _DRAWERState extends State<DRAWER> {

  @override
  Widget build(BuildContext context) {




    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('Extra').snapshots(),




      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      if (snapshot.hasError) {
        return const Text('Something went wrong');
      }

      if (snapshot.connectionState == ConnectionState.waiting) {
        return Container(
          child: const Center(
              child:
              CircularProgressIndicator()

          ),
        );
      }

      if (snapshot.data!.docs.isEmpty) {
        return Center(
            child: Text(
                'Something went wrong !')
        );
      }




        return Container(
            // height: 00,
          width: MediaQuery.of(context).size.width*0.8,
            child:Drawer(
             child: Material(
               child: ListView(
                 children: [

                   SizedBox(
                     height: 5,
                   ),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 11),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Icon(Icons.laptop_mac),



                         CustomText(text: "Laptop Expert",fontSize: 22,weight: FontWeight.w500, ),

                       ],

                     ),
                   ),


                   //
                   CustomText(text: "Choose Best Laptop for\n Your Domain\n",fontSize: 13,weight: FontWeight.w400, ),

SizedBox(
  height: 1,
),

                   Divider(
                     thickness: 1,
                     height: 1,
                     color: Colors.grey,
                   ),

                   // SizedBox(
                   //   height: 15,
                   //
                   // ),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Link(

                       uri: Uri.parse(snapshot.data!.docs[0]['Refer']),
                       builder: (context, followLink) =>


                           GestureDetector(
                             onTap: followLink,

                       child: Container(
                           height: 110,
                           width: 220,

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

                            image: AssetImage("Assests/images/bags/refer.jpg"),fit: BoxFit.fitWidth

                   //        image:  NetworkImage(
                   // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCrqsUrN5E6Y9-69i4bFOLF8HJzqxWH60sSg&usqp=CAU" ),
                   //        fit: BoxFit.fitWidth,
                         //
                         //
                       )
                       ),
                   ),
                     ),
                   ),
                   ),
                   SizedBox(width: 25,),





                   Container(

                     child: Column(
                       children: [
                         // const SizedBox(height: 5),
                         // buildSearchField(),
                         Divider(color: Colors.grey,thickness: 1,),


                         const SizedBox(height: 14),

                         Text(" Visit Pages  👀",style: TextStyle(fontSize: 20, color: Colors.black),),
                         const SizedBox(height: 14),



                         // const SizedBox(height: 24),
                         buildMenuItem(
                           text: 'Home',
                           icon: Icons.local_fire_department,
                           onClicked: () => selectedItem(context, 0),
                         ),
                         const SizedBox(height: 16),
                         buildMenuItem(
                           text: 'Shop By Price',
                           icon: Icons.volunteer_activism,
                           onClicked: () => selectedItem(context, 1),
                         ),
                         const SizedBox(height: 16),
                         buildMenuItem(
                           text: 'Shop By Category ',
                           icon: Icons.category,
                           onClicked: () => selectedItem(context, 2),
                         ),
                         const SizedBox(height: 16),
                         buildMenuItem(
                           text: 'Wishlist',
                           icon: Icons.shopping_cart,
                           onClicked: () => selectedItem(context, 3),
                         ),
                         const SizedBox(height: 24),
                         Divider(color: Colors.black),
                         const SizedBox(height: 14),

                         Text(" Support Us 👀",style: TextStyle(fontSize: 20, color: Colors.black),),
                         const SizedBox(height: 14),



                     Link(


                       // uri: Uri.parse('/Adv_1'),

                         // DocumentSnapshot document =  a.doc('2').get();

                       uri: Uri.parse(snapshot.data!.docs[0]['Review']),
                       // uri: Uri.parse(a.),
                       //   uri: Uri.parse("https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg"),
                       // target: LinkTarget.blank,
                       builder: (context, followLink) =>


                           GestureDetector(
                           onTap: followLink,
                           child: buildMenuItem(
                             text: 'Review & Rate  Us ',
                             icon: Icons.reviews,

                             // onClicked: () => selectedItem(context, 4),
                           ),
                         ),
                     ),
                         const SizedBox(height: 14),

                         buildMenuItem(
                           text: 'Save Money online',
                           icon: Icons.discount,
                           onClicked: () => selectedItem(context, 4),
                         ),



                         const SizedBox(height: 14),






                         // Link(
                         //
                         //
                         //   // uri: Uri.parse('/Adv_1'),
                         //
                         //   // DocumentSnapshot document =  a.doc('2').get();
                         //
                         //   uri: Uri.parse(snapshot.data!.docs[0]['Review']),
                         //   // uri: Uri.parse(a.),
                         //   //   uri: Uri.parse("https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg"),
                         //   // target: LinkTarget.blank,
                         //   builder: (context, followLink) =>


                               GestureDetector(
                                 onTap:  () {
                                   final link = WhatsAppUnilink(
                                     phoneNumber: snapshot.data!.docs[0]['number'],
                                     text: "Hey! I'm inquiring about the apartment listing",
                                   );

                                   launch('$link');
                                 },
                                 child: buildMenuItem(
                                   text: 'Contact Us ',
                                   icon: Icons.reviews,

                                   // onClicked: () => selectedItem(context, 4),
                                 ),
                               ),





                         // buildMenuItem(
                         //   text: 'Contact US ',
                         //   icon: Icons.contact_page_outlined,
                         //
                         //
                         //
                         //
                         //   onClicked: () => selectedItem(context, 5),
                         // ),
                         //
                         // const SizedBox(height: 24),
                         // const SizedBox(height: 24),
                         //
                         // RecomendedApp(
                         //   text: 'Earn upto 500\ninstant cashback',
                         //   // Image: TradingOutside[1].Image1,
                         //   onClicked: () => selectedItem(context, 4),
                         // ),

                         const SizedBox(height: 24),
                         const SizedBox(height: 24),

                         // RecomendedApp(
                         //   text: 'Earn upto 500\ninstant cashback',
                         //   // Image: TradingOutside[3].Image1,
                         //   onClicked: () => selectedItem(context, 4),
                         // ),

                         const SizedBox(height: 24),
                         // const SizedBox(height: 24),

                         // RecomendedApp(
                         //   text: 'Earn upto 200\ninstant cashback',
                         //   Image:
                         //   onClicked: () => selectedItem(context, 6),
                         // ),

                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Center(
                                 child: GestureDetector(


                                     child: Text( " Play Store Policy",style:TextStyle(
                                       fontSize: 12
                                     ))),
                               ),


                             ],
                           ),
                         ),


                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Center(
                                 child: GestureDetector(

                                     child: Text( " Amazon Afflilate Policy",style: TextStyle(fontSize: 12),)),
                               ),

                             ],
                           ),
                         )


                       ],
                     ),
                   ),

                 ],
               ),
             ),

        ),
        );
      }
    );
  }
}


Widget RecomendedApp(
    {
      // required var Image ,
      required var text,
      VoidCallback? onClicked,
    }
    ){
  return
    Padding(
      padding: const EdgeInsets.all(5.0),

      child: GestureDetector(
        onTap: onClicked,
        child: Row(
          children: [
            Container(
              height: 35,
              width: 60,
              // color: Colors.red,
              decoration: BoxDecoration(



                border: Border.all(color:Colors.tealAccent,width: 0.5),

                borderRadius: BorderRadius.circular(5),

                // image:DecorationImage(
                //
                //   image: AssetImage(Image),
                //
                //
                //   fit: BoxFit.fill,
                //
                // ),
              ),
            ),
            const SizedBox(width: 24),
            // Expanded(
            //   child: SingleChildScrollView(
            //   scrollDirection : Axis.horizontal,
            Expanded(
              child: FittedBox(
                fit : BoxFit.contain,
                child: Text(text,style:
                  GoogleFonts.poppins(

                      color: Colors.tealAccent,fontSize:16,fontWeight: FontWeight.bold,

                  )
                  // ,maxLines: 2,
                ),
              ),
            ),
            // )
          ],
        ),
      ),

    );


}



void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) =>  NavigationBardown(
            index: 0,
          ),));


      break;
    case 1:

      Navigator.push(context,
          MaterialPageRoute(builder: (context) =>  NavigationBardown(
            index: 1,
          ),));
      break;
    case 2:


      Navigator.push(context,
          MaterialPageRoute(builder: (context) => NavigationBardown(
            index: 2,
          ),));
      break;
    case 3:

      Navigator.push(context,
          MaterialPageRoute(builder: (context) => NavigationBardown(
            index: 3,
          ),));
      break;
    case 4 :


      Navigator.push(context,
          MaterialPageRoute(builder: (context) => SaveMoney()));

      // Link(
      // //   // uri: Uri.parse('/Adv_1'),
      //   uri: Uri.parse(snapshot.data!.docs[index]['link']);

      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => const SaveMoney()));



      // Link(
      //   // uri: Uri.parse('/Adv_1'),
      //   // uri: Uri.parse(snapshot.data!.docs[index]['link']);
      //     uri: Uri.parse("https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg"),
      //   // builder: (BuildContext context, Future<void> Function()? followLink) {  },;
      //   // target: LinkTarget.blank,
      //   // builder: (context, followLink) =>
      //   //   onTap: followLink,
      //   // launch('$link');
      //   // ),


        break;
    //
    case 5 :
      final link = WhatsAppUnilink(
        phoneNumber: '+091-(942)2130883',
        text: "Hey! I'm inquiring about the apartment listing",
      );

        // Convert the WhatsAppUnilink instance to a string.
        // Use either Dart's string interpolation or the toString() method.
        // The "launch" method is part of "url_launcher".
         launch('$link');



      break;
    // case 6 :
    //   Navigator.pushNamed(context, "/Dream11")
    //   ;
    //   break;


  }
}




Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.tealAccent;
  final hoverColor = Colors.tealAccent;

  return SizedBox(
    height: 32,
    child: ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(text, style: TextStyle(color: Colors.black)),
      hoverColor: hoverColor,
      onTap: onClicked,
    ),
  );
}
