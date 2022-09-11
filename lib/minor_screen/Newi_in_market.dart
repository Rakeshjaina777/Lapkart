

import 'package:card_swiper/card_swiper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';

import '../Product_detailed_information/Product_detail_screen.dart';

class New_In_Market extends StatefulWidget {
  final dynamic pro;
  const New_In_Market({Key? key,required this.pro}) : super(key: key);

  @override
  State<New_In_Market> createState() => _New_In_MarketState();
}

class _New_In_MarketState extends State<New_In_Market> {

    final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
    GlobalKey<ScaffoldMessengerState>();
    @override

    Widget build(BuildContext context) {
      return

        Material(
            child:
            //
            // StreamBuilder<QuerySnapshot>(
            //     stream: FirebaseFirestore.instance
            //         .collection('FeaturedImages')
            //         .where('number', isEqualTo: "2" )
            //     //     .where('Price', isEqualTo: "40k"  )
            //     // &&
            //     //
            //     // stream: FirebaseFirestore.instance
            //     //     .collection('Products')
            //     // // .where('Price', isEqualTo: "70k" )
            //     //     .where('Price', isEqualTo: "40k"  )
            //
            //         .snapshots(),
            //     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            //       if (snapshot.hasError) {
            //         return const Text('Something went wrong');
            //       }
            //
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return const Center(
            //             child:
            //             SizedBox()
            //
            //         );
            //       }
            //
            //       if (snapshot.data!.docs.isEmpty) {
            //         return Center(
            //             child: Text(
            //                 'You Have not \n\n Active Orders !')
            //         );
            //       }
            //       return
                    SafeArea(
                        child: ScaffoldMessenger(
                            key: _scaffoldKey,
                            child: Scaffold(
                                body: SingleChildScrollView(
                                    child: Column(
                                        children: [
                                          //     InkWell(
                                          //     onTap: () {
                                          //   // Navigator.push(
                                          //   //     context,
                                          //   //     // MaterialPageRoute(
                                          //   //         // builder: (context) => FullScreenView(
                                          //   //         //   imagesList: imagesList,
                                          //   //         // ))
                                          //   // );
                                          // },
                                          Stack(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.45,
                                                  child: Swiper(

                                                    pagination: const SwiperPagination(

                                                        builder: SwiperPagination.dots

                                                    ),
                                                    itemBuilder: (context, index) {
                                                      return Image(
                                                        image: NetworkImage(
                                                            widget.pro['Images'][index]
                                                            // snapshot.data!
                                                            //     .docs[index]['Images']
                                                          // widget.proList['Images'][index]
                                                        ),
                                                        fit: BoxFit.fill,
                                                      );
                                                    },
                                                    // itemCount:  widget.proList['Images'].length,
                                                    itemCount:  widget.pro['Images'].length,
                                                  ),
                                                ),
                                                Positioned(
                                                    left: 15,
                                                    top: 20,
                                                    child: CircleAvatar(
                                                      backgroundColor: AppColors.Common,
                                                      child: IconButton(
                                                        icon: const Icon(
                                                          Icons.arrow_back_ios_new,
                                                          color: Colors.black,
                                                        ),
                                                        onPressed: () {
                                                          Navigator.pop(context);
                                                        },
                                                      ),
                                                    )),
                                              ]  ),

                                          SizedBox(
                                            // height: MediaQuery.of(context).size.height * 0.45,

                                            child: Card(
                                              color: AppColors.Common,
                                              elevation: 20,



                                              shape: RoundedRectangleBorder(

                                                  borderRadius: BorderRadius.circular(5),

                                                  side: BorderSide( color: AppColors.Common,width: 1,)

                                              ),


                                            ),
                                          ),





                                          Padding(
                                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 50),
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      ' Acer Nitro 5\n Ryzen hexa core 5600H\n 8 GB Ram',
                                                      style: TextStyle(
                                                          color: AppColors.black,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w700),
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Row(
                                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Row(
                                                          children: [


                                                            // ProDetailsHeader(
                                                            //   label: '    Checkout Update Price On ',
                                                            // ),
                                                            const Text(
                                                              'Checkout Update Price On : ',
                                                              style: TextStyle(
                                                                  color: Colors.teal,
                                                                  fontSize: 18,
                                                                  fontWeight: FontWeight.w700),
                                                            ),


                                                          ],
                                                        ),
                                                      ],
                                                    ),

                                                    SizedBox(
                                                      height: 10,
                                                    ),

                                                    Center(
                                                      child: SizedBox(
                                                        width: 150,
                                                        child: Card(
                                                          borderOnForeground: false,
                                                          shadowColor: AppColors.white,
                                                          surfaceTintColor:AppColors.white ,
                                                          // height: 50,
                                                          // width: 180,
                                                          color: AppColors.Common,
                                                          elevation: 20,



                                                          shape: RoundedRectangleBorder(

                                                              borderRadius: BorderRadius.circular(5),

                                                              side: BorderSide( color: AppColors.Common,width: 1,)

                                                          ),

                                                          child: Row(
                                                            children: [

                                                              Icon(FontAwesomeIcons.amazon,color: AppColors.black,),

                                                              SizedBox(width: 15,),
                                                              CustomText(text: " Amazon ➡️",fontSize: 16,weight: FontWeight.w700,),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Center(
                                                      child: SizedBox(
                                                        width: 150,
                                                        child: Card(
                                                          borderOnForeground: false,
                                                          shadowColor: AppColors.white,
                                                          surfaceTintColor:AppColors.white ,
                                                          // height: 50,
                                                          // width: 180,
                                                          color: AppColors.Common,
                                                          elevation: 15,



                                                          shape: RoundedRectangleBorder(

                                                              borderRadius: BorderRadius.circular(5),

                                                              side: BorderSide( color: AppColors.Common,width: 1,)

                                                          ),

                                                          child: Row(
                                                            children: [

                                                              SizedBox(
                                                                  height: 20,
                                                                  child: Image.network("https://comeet-euw-app.s3.amazonaws.com/1195/98accb3617b74fac6ad573a673ef8cca00b6cc3f")),

                                                              SizedBox(width: 15,),
                                                              CustomText(text: " Flipkart ➡️",fontSize: 16,weight: FontWeight.w700,),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Center(
                                                      child: SizedBox(
                                                        // width: 150,
                                                        height: 50,
                                                        child: Card(
                                                          borderOnForeground: false,
                                                          shadowColor: AppColors.white,
                                                          surfaceTintColor:AppColors.white ,
                                                          // height: 50,
                                                          // width: 180,
                                                          color: AppColors.Common,
                                                          elevation: 15,



                                                          shape: RoundedRectangleBorder(

                                                              borderRadius: BorderRadius.circular(5),

                                                              side: BorderSide( color: AppColors.Common,width: 1,)

                                                          ),

                                                          child: Row(
                                                            children: [

                                                              // SizedBox(
                                                              //     height: 20,
                                                              //     child: Image.network("https://comeet-euw-app.s3.amazonaws.com/1195/98accb3617b74fac6ad573a673ef8cca00b6cc3f")),

                                                              SizedBox(width: 15,),
                                                              Center(child: CustomText(text: "       For Student & Coperated Offer  ➡️",fontSize: 14,weight: FontWeight.w700,)),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),



                                                    const ProDetailsHeader(
                                                      label: '   Item Highlight  ',
                                                    ),
                                                    // information?SizedBox(height: 5,):
                                                    Text(
                                                      "🔶  ️  Amd hexa core -Ryzen 5600 processor\n"

                                                          "🔶  ️ 8 Gb DDr4 Ram\n"

                                                          "🔶  ️ 512 Sata SSD\n"
                                                      // "(Better then 256 SSd + 1tb hhd)\n"
                                                          "🔶  ️ Genunine Window 11\n"
                                                          "🔶  ️ 60000mah Battery\n"
                                                      // "(Battery upto 5-6 hour on simple usage &2-3 on extremely 8usage)\n"
                                                          "🔶  ️ 8 core & 12 thread\n"
                                                          "🔶  ️ RBG backlight keyboard\n"
                                                      // "(Excellent choice for coder & video editior)\n"
                                                          "🔶  ️ 4 GB Dedicated Graphic card of 3060x\n"
                                                          "🔶  ️ Dual Fans with Quad Exhaust Port\n"
                                                          "🔶  ️ Acer Nitro sense & Cooler Sense\n"
                                                      // 🔶  ️Killer Ethernet E2600 \n
                                                      //  🔶️  Pre installed window home \n
                                                      //
                                                      //  🔶️ Too many port & connectivity\n
                                                      //  🔶️ Cinebench Score for - 2167/8500\n
                                                      //  🔶️ overall Score 65/100\n
                                                      //  🔶️ Too many port & connectivity\n,

                                                      // widget.proList['itemhighlighed'].replaceAll("\\n","\n"
                                                      ,
                                                      // snapshot.data!.docs[index]['specification'].replaceAll("\\n","\n"),


                                                      // overflow: TextOverflow.ellipsis,
                                                      // maxLines: 10,
                                                      // textAlign: TextAlign.left,
                                                      // textDirection: TextDirection.ltr,

                                                      textScaleFactor: 1.1,
                                                      style: TextStyle(
                                                        // letterSpacing: 1.2,

                                                          height: 1.7,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                          color: AppColors.black),
                                                    ),

                                                  ]
                                              )
                                          )
                                        ]


                                    )
                                )
                            )
                        )
      )
        );





    }
  }





