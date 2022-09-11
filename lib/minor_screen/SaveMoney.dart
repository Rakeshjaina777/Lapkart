
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class SaveMoney extends StatefulWidget {
  const SaveMoney({Key? key}) : super(key: key);

  @override
  State<SaveMoney> createState() => _SaveMoneyState();
}

class _SaveMoneyState extends State<SaveMoney> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Extra').

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
                    title:Text("Save Money", style: TextStyle(fontSize: 22, color: AppColors.black,fontWeight: FontWeight.w900),),
                  )
              )
          ),
          body:
          StreamBuilder<QuerySnapshot>(
              stream: _prodcutsStream,

              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.data!.docs.isEmpty) {
                  return const Center(
                      child: Text(
                        'This category \n\n has no items yet !',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Acme',
                            letterSpacing: 1.5),
                      ));
                }
                return SingleChildScrollView(
                  child: Column(
                    children: [




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

                                SizedBox(height: 15,),



                                CustomText(text: "Must have",
                                  fontSize: 21,
                                  weight: FontWeight.w600,),

                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                    // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                                    "🔶   In Online You Can Easily Save between 3-10% by applying debit Card & Credit Card.\n"
                                        "🔶  In Online Mostly Price are Cheaper and You  Get all Part & Sofware Correct 99% but in Local shop sometime they give  Pirated & Cracked version of Sofware which we can't  identify easily  but its hanged Laptop too"
                                        "& Also they may change New  SSD & HDD to Old they haved " , textScaleFactor: 0.9,

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
                                          'Try to buy Laptop From Online or Croma Shop Only',
                                          textScaleFactor: 0.9,
                                          style: TextStyle(
                                              color: AppColors.black,

                                              fontSize: 18,
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

                                SizedBox(height: 15,),



                                CustomText(text: "Must have",
                                  fontSize: 21,
                                  weight: FontWeight.w600,),

                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                    // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                                    "🔶  Mostly Privated Company  Provide Laptop  Schlorship to Merit(Jee Main & Advance  Rank <1000 ) & Poor Student So You Must Search this once before buying  it may differ from State to State. \n"
                                    , textScaleFactor: 0.9,

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
                                          'Search For Laptop Schloarship Before buying ',
                                          textScaleFactor: 0.9,
                                          style: TextStyle(
                                              color: AppColors.black,

                                              fontSize: 18,
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

                                SizedBox(height: 15,),



                                CustomText(text: "Must have",
                                  fontSize: 21,
                                  weight: FontWeight.w600,),

                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                    // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                                    "🔶  Try to arrange Debit & Credit Card of Respectively Bank which is  Mention on Your Laptop Offer list   for online payment  (From Parent ,Friend Parent Relative orBrother ), But if you are doing Payment From Credit Card Please transfer Money within 10 Day to whom you have taken in there bank Account  ",
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
                                          'Save between 3- 10% on Laptop by Credit & debit Card On  Online Shoping ',
                                          textScaleFactor: 0.9,
                                          style: TextStyle(
                                              color: AppColors.black,

                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),)

                                    ),
                                  ),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ),





                      SizedBox(
                        // height:2580,
                          width: 420,
                          child: ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) =>

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

                                          SizedBox(height: 15,),



                                          CustomText(text: "Must have",
                                            fontSize: 21,
                                            weight: FontWeight.w600,),

                                          Padding(
                                            padding: const EdgeInsets.all(18.0),
                                            child: Text(
                                              // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                                           "🔶  Try to arrange Gst  invoice number  from anyone who have Bussiness (From Parent ,Friend Parent or Relative  ) &"
                                               "Save up to 28% on your Laptop  by claiming GST input Tax credit(28% Money will given to person having gst number when he fill taxes then you Can take Money back when he get in there account  ). GST input Tax credit eligible only in Invoice if your business GST details are motioned in Billed Invoice. Sign up or Call for further detailed in below Button for More detailed ",
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
                                                    'Save upto 28% on Laptop by G.S.T Invoice Number',
                                                    textScaleFactor: 0.9,
                                                    style: TextStyle(
                                                      color: AppColors.black,

                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500),)

                                              ),
                                            ),
                                          ],
                                        ),

                                      ),
                                    ),
                                  ),
                                ),
                          )

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
                              child: CustomText(text: "For Any Queries or Douth  Message  Us on Below WhatApps Button ",fontSize: 17,
                              weight: FontWeight.w300,
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
                )
                    ],
                  ),

                );




              }

          ),
        ),
      );
  }
}
