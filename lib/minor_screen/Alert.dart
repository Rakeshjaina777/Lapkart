
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';



List<String>Title= [
  ""
];

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override

    Widget build(BuildContext context) {
      final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
          .collection('Products').where('Price' ,isEqualTo: "70k").
          
      snapshots();
      // final product = snapshot.data!.docs[index];



      return

        Material(
          child: Scaffold(
            backgroundColor: Colors.blueGrey.shade100.withOpacity(0.2),
      // drawer: Drawer(),
      appBar:
      PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: SafeArea(
      child: AppBar(
      automaticallyImplyLeading: true,
      iconTheme: IconThemeData(color: AppColors.black),
      elevation: 0.1,
      backgroundColor: AppColors.white,
      title:Text("Most Asked Question", style: TextStyle(fontSize: 22, color: AppColors.black,fontWeight: FontWeight.w900),),
      )
      )
      ),
      body:
    //   StreamBuilder<QuerySnapshot>(
    //   stream: _prodcutsStream,
    //
    //   builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
    // if (snapshot.hasError) {
    // return const Text('Something went wrong');
    // }
    //
    // if (snapshot.connectionState == ConnectionState.waiting) {
    // return const Center(
    // child: CircularProgressIndicator(),
    // );
    // }
    //
    // if (snapshot.data!.docs.isEmpty) {
    // return const Center(
    // child: Text(
    // 'This category \n\n has no items yet !',
    // textAlign: TextAlign.center,
    // style: TextStyle(
    // fontSize: 26,
    // color: Colors.blueGrey,
    // fontWeight: FontWeight.bold,
    // fontFamily: 'Acme',
    // letterSpacing: 1.5),
    // ));
    // }
     SingleChildScrollView(
    child: SizedBox(
    // height:2580,
    width: 420,
    
    
    
    
    child: Column(
      children: [
        SizedBox(height: 10,),
        CustomText(text: " Here We have Include Most Asked Question Faced By Student",fontSize: 17,),
        
      //  ListView.builder(
      // // itemCount: snapshot.data!.docs.length,
      // shrinkWrap: true,
      // itemCount: 7,
      // scrollDirection: Axis.vertical,
      // physics: NeverScrollableScrollPhysics(),
      // itemBuilder: (context, index) =>

      Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
      width: 320,
      child: Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(color: AppColors.Common,
      width: 1,)
      ),

      // color: AppColors.black,
      child: ExpansionTile(
      // collapsedIconColor: AppColors.Common,
      // iconColor: AppColors.Common,
      children: [

      CustomText(text: "ONLINE PRO",





      fontSize: 21,
      weight: FontWeight.w600,),


        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
            "🔶   In Online You Can Easily Save between 3-10% by applying debit Card & Credit Card, & You may also get Amazon Gift Card Upto 5000( Depend on your  laptop costs & your luck )\n\n"
                "🔶  In Online Mostly Price are Cheaper and You  Get all Part & sofware  99%  correct. but in Local Shop sometime they give  Pirated & Cracked version of Sofware which we can't  identify easily  but it can Damage your Laptop  and  make it slow."
                "& Also they may change New  SSD & HDD to Old they haved  which may also slow our Laptop.\n\n"
                "🔶  Please Don't Confuse in model in online or offline as mostly in offline they have Old model  and You  Don't have any knowledge about New Model or Old Model,  For ex H.p Pavillion 15- Ec214ax &  H.p Pavillion 15- Ec2145ax are very  different \n\n "
                "🔶   Sometimes in Offline they  give Same Price as  online. So Please check whether all things are Right,such as  window home is there or not etc. \n\n " ,
            textScaleFactor: 0.9,

            style: TextStyle(fontWeight: FontWeight.w500,
                fontSize: 16,
                height: 1.6),


          ),


        ),





        CustomText(text: "Offline Pro",
          fontSize: 21,
          weight: FontWeight.w600,),


        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
                "🔶  In Offline You can see Laptop Physically ,weigh the laptop,check sound quality & Picture quality and Many More.\n\n"
                "🔶  In offline Mostly they Provide Bags And some Laptop Accesories (which Indirely they charge) but it is fine.\n\n"

                "" , textScaleFactor: 0.9,

            style: TextStyle(fontWeight: FontWeight.w500,
                fontSize: 16,
                height: 1.6),


          ),


        ),




        CustomText(text: "Final Verdict ",
          fontSize: 21,
          weight: FontWeight.w600,),


        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            "🔶   You Can go to Physical Store to See and feel the Laptop and you can buy it offline if you know the shopkeeper personally otherwise prefer online. " ,

            textScaleFactor: 0.9,

            style: TextStyle(fontWeight: FontWeight.w500,
                fontSize: 16,
                height: 1.6),


          ),


        ),



      ],

      title:

      Row(
      children: [
      Flexible(
      child: Card(

      elevation: 0.0,
      // color: AppColors.black,
      child: Text(
      '1: ONLINE VS OFFLINE  Best Place To Buy', style: TextStyle(
      color: AppColors.black,
      fontSize: 16,
      fontWeight: FontWeight.w500),)

      ),
      ),
      ],
      ),

      ),
      ),
      ),
      ),


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 320,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: AppColors.Common,
                    width: 1,)
              ),

              // color: AppColors.black,
              child: ExpansionTile(
                // collapsedIconColor: AppColors.Common,
                // iconColor: AppColors.Common,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                      "🔶  Both are Best ,Both Provide Genuine Product. But Amazon  Service are  Fast as well if You find any damage so return policy is very easy and comfortable on Amazon. And you may also  get Amazon Gift Card worth of  Rs 1000 which you can use in you next purchasing.  ", textScaleFactor: 0.9,

                      style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.6),


                    ),


                  ),


                ],

                title:

                Row(
                  children: [
                    Flexible(
                      child: Card(

                          elevation: 0.0,
                          // color: AppColors.black,
                          child: Text(
                            '2: Amazon Vs Flipkart Best Place to Buy', style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),)

                      ),
                    ),
                  ],
                ),

              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 320,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: AppColors.Common,
                    width: 1,)
              ),

              // color: AppColors.black,
              child: ExpansionTile(
                // collapsedIconColor: AppColors.Common,
                // iconColor: AppColors.Common,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                      "🔶   Best Time is during  Christmas sale, Mostly You can  get extra 1000 Rupees discount Online but try to buy  fast  as  you can start learning Part or coding  during Your  Jossa counselling Period so in Offline collage you  will have chance to get  internship in first or second year of your course and you can earn around 10k /month Easily.  " , textScaleFactor: 0.9,

                      style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.6),


                    ),


                  ),

                ],

                title:

                Row(
                  children: [
                    Flexible(
                      child: Card(

                          elevation: 0.0,
                          // color: AppColors.black,
                          child: Text(
                            '3: Best Time to Buy', style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),)

                      ),
                    ),
                  ],
                ),

              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 320,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: AppColors.Common,
                    width: 1,)
              ),

              // color: AppColors.black,
              child: ExpansionTile(
                // collapsedIconColor: AppColors.Common,
                // iconColor: AppColors.Common,
                children: [

                  CustomText(text: "Must have",
                    fontSize: 21,
                    weight: FontWeight.w600,),



                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                      "🔶  You Can Do  Coding,D.S.A,C.P, & simple A.I & Maching Learning(30-40%) on Any laptop  having 8 G.B Ram and 256 SSD, and Good Processor  but Advance A.I & Maching Learning Need 16/32 GB Ram ,Dedicated Graphic Card more then 4GB (on 4GB Graphic Card You can do 50-60% AI and ML) so which you can Neglect now (16/32 Ram once) ,But Go for those Laptop were  Ram Updated function is Available min 16 G.B " , textScaleFactor: 0.9,

                      style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.6),


                    ),


                  ),


                ],

                title:

                Row(
                  children: [
                    Flexible(
                      child: Card(

                          elevation: 0.0,
                          // color: AppColors.black,
                          child: Text(
                            '4: Specification of Laptop Which Can Handle A.I ,Machine Learning,Easily ', style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),)

                      ),
                    ),
                  ],
                ),

              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 320,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: AppColors.Common,
                    width: 1,)
              ),

              // color: AppColors.black,
              child: ExpansionTile(
                // collapsedIconColor: AppColors.Common,
                // iconColor: AppColors.Common,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                      "🔶   You can start learning Coding  during Your  Jossa counselling Period so in Offline collage you have chance to do  internship on  Your first or second year of your course as well You can participate  in club and fests freely without any burden of coding\n"
                          "🔶   You Can Start Learning C/C++ language from Youtube from any reputed teacher (Ex: Code with harry) Or You  Can do Web Development(html,css ,javascript), Please Search this on Youtube first then Start and don't think this that no one will do coding in jossa counselling  As most of student have done web development. and c++ in class 12 only  and 30 percent do during jossa Counselling period   " , textScaleFactor: 0.9,

                      style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.6),


                    ),


                  ),

                ],

                title:

                Row(
                  children: [
                    Flexible(
                      child: Card(

                          elevation: 0.0,
                          // color: AppColors.black,
                          child: Text(
                            '5: What I Must Do during Jossa Counselling', style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),)

                      ),
                    ),
                  ],
                ),

              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                  side: BorderSide(color: AppColors.Common,
                    width: 1,)
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "For Any Queries or Doubts  Message  Us on Below WhatApps Button ",fontSize: 17,
                  weight: FontWeight.w500,
                ),
              )),
        ),
        CustomBtn(label: "WhatsApp Us ",
            textColor: AppColors.white,

            color: Colors.teal,

            action: ()

            async {
              final link = WhatsAppUnilink(
                phoneNumber: '+091-(734)0219511',
                text: "Hey! I'm inquiring about the apartment listing",
              );
              // Convert the WhatsAppUnilink instance to a string.
              // Use either Dart's string interpolation or the toString() method.
              // The "launch" method is part of "url_launcher".
              await launch('$link');

            }
        ),

      // ),

        SizedBox(
          height: 50,
        )

      ]
    )

    ),
    

    ),
    ),
        );
    }
  }
