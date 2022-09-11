
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
import 'package:laptops_expert/Main_Screen/Shop_BY_Price.dart';

class ProductInformation extends StatefulWidget {
  final dynamic products;
  const ProductInformation({Key? key,required this.products}) : super(key: key);

  @override
  State<ProductInformation> createState() => _ProductInformationState();
}

class _ProductInformationState extends State<ProductInformation> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 1,
        child: Scaffold(

          appBar:   PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBar(
              // foregroundColor: Colors.red,

                elevation: 0.2,
                // shape: Border(
                //     bottom: BorderSide(
                //       width:1,
                //       color: Colors.transparent,
                //     )

                // ),
                // automaticallyImplyLeading: true,
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Colors.white,
                title: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                        children:<Widget>[
                          Text("Product Detail ",
                            style: TextStyle(fontSize:18,color: Colors.black,fontWeight: FontWeight.w700),),

                        ]
                    ),




// Divider(height: 1,color: AppColors.Common,)


                  ],
                ),

                // bottom:  TabBar(
                //   isScrollable:  true,
                //   indicatorColor: Colors.yellow,
                //   indicatorWeight: 4,
                //
                //   tabs: [
                //
                //
                //     // RepeatedText(label:'DESCRIPTION'),
                //     RepeatedText(label:'SPECIFICATION'),
                //
                //
                //   ],
                // ),
                // actions:<Widget>[
                //   IconButton(
                //       icon:Icon(
                //           Icons.favorite_outline_sharp,
                //           color:Colors.black
                //       ),
                //       onPressed: (){}
                //   ),
                //
                //   IconButton(
                //       splashRadius: 25,
                //       iconSize: 23,
                //       icon:Icon(
                //           Icons.balance,
                //           color:Colors.black
                //
                //       ),
                //       onPressed: (){}
                //   )
                //
                // ]
            ),
          ),


          body:
             Specification()

              // app(),



        )
    );
  }
}


class Specification extends StatefulWidget {
  const Specification({Key? key}) : super(key: key);

  @override
  State<Specification> createState() => _SpecificationState();
}

class _SpecificationState extends State<Specification> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Stack(
        children: [
          


      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          SizedBox(
          height: 120,
          width: double.infinity,
          child: Card(
          color: Colors.white,
          elevation: 20,



          shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(5),

          side: BorderSide( color: Colors.black,width: 1,)

          ),
            child:  Stack(
              children: [
                Positioned(
                  left: 1,
                  child: Container(

                    // color: Colors.red,
                    height: 90,

                    width: 140,

                    margin: EdgeInsets.all(5),


                    decoration: BoxDecoration(

                      // color: Colors.green,

                      // border: Border.all(color:Colors.black54,width: 2.55),

                        borderRadius: BorderRadius.circular(1),

                        image:DecorationImage(

                          image: NetworkImage(
                              "https://m.media-amazon.com/images/I/71TPda7cwUL._AC_SL1500_.jpghttps://m.media-amazon.com/images/I/71TPda7cwUL._AC_SL1500_.jpg" // color: Colors.grey[700],),
                          ),
                          fit: BoxFit.fitHeight,
                        )   //
                    ),
                  ),


                ),
                Positioned(
                    right: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 10,),
                        Text("Acer Aspire 7\nRyzen 5600 hexa core",style: TextStyle(fontWeight: FontWeight.w600),),
                        SizedBox(height: 5,),
                        SizedBox(
                          width: 150,
                          child: Positioned(
                            right: 35,
                            child: Card(
                              borderOnForeground: false,
                              shadowColor: Colors.white,
                              surfaceTintColor:Colors.white ,
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

                                  Icon(FontAwesomeIcons.amazon,color: Colors.black,),

                                  SizedBox(width: 15,),
                                  CustomText(text: "  Checkout Price\n at Amazon ➡️",fontSize: 10,weight: FontWeight.w700,),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ))
              ],
            ),
            //,

          ),
          ),
          SizedBox(height: 20,),
          Center(child: CustomText(text: "Specification",fontSize: 22,weight: FontWeight.w700,)),

          CustomText(text: "   Key Feacture:",fontSize: 18,weight: FontWeight.w500,),

          SizedBox(
            height: 140,
            width: double.infinity,
            child: Card(
              borderOnForeground: false,
              shadowColor: Colors.white,
              surfaceTintColor:Colors.white ,
              // height: 50,
              // width: 180,
              color: Colors.white,
              elevation: 20,



              shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(5),

                  side: BorderSide( color: Colors.white,width: 1,)

              ),
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Text( "🔶   15.6 inch Full Hd Led Backlit Ips Comfy      View Display \n"
                      "🔶  Light Laptoop without Optical Disk    Drive\n"
                      "🔶   Pre- Install Genunine Window 10 Os\n",
                  style: TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.w400,fontSize: 15
                  ),

                ),

                // Column(
                //   children: [
                //     // RichText(
                //     //
                //     //
                //     //
                //     //
                //     //   textDirection: TextDirection.ltr,
                //     //
                //     //   textScaleFactor: 1.1,
                //     //   text: TextSpan(
                //     //     text: "Dedicated Graphic Memory",
                //     //     style: TextStyle(
                //     //         fontSize: 14,
                //     //         fontWeight: FontWeight.w400,
                //     //         color: Colors.grey),
                //     //
                //     //
                //     //     children: const <TextSpan>[
                //     //
                //     //
                //     //       TextSpan(
                //     //           text: " GDDR4 6 GB\n", style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,)),
                //     //
                //     //
                //     //
                //     //       // TextSpan(
                //     //       //     text: "✔️ 8 Gb DDr4 Ram\n"
                //     //       //         "✔️ 512 SSD\n"),
                //     //       //
                //     //       // TextSpan(
                //     //       //     text: "(Better then 256 SSd + 1tb hhd)\n", style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey,)),
                //     //       //
                //     //       // TextSpan(
                //     //       //     text: "✔️ window 11\n"
                //     //       //         "✔️ 60000mah Battery\n"),
                //     //       //
                //     //       // TextSpan(
                //     //       //     text:        "(Battery upto 5-6 hour on simple usage &2-3 on extremely 8usage)\n"
                //     //       //     , style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey)),
                //     //       //
                //     //       //
                //     //
                //     //     ],
                //     //
                //     //   ),
                //     // ),
                //     // Divider(height: 1,),
                //     // RichText(
                //     //
                //     //
                //     //
                //     //
                //     //   textDirection: TextDirection.ltr,
                //     //
                //     //   textScaleFactor: 1.1,
                //     //   text: TextSpan(
                //     //     text: "Dedicated Graphic Memory ",
                //     //     style: TextStyle(
                //     //         fontSize: 14,
                //     //         fontWeight: FontWeight.w400,
                //     //         color: Colors.grey),
                //     //
                //     //
                //     //     children: const <TextSpan>[
                //     //
                //     //
                //     //       TextSpan(
                //     //           text: " GDDR4 6 GB\n", style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,)),
                //     //
                //     //
                //     //
                //     //       // TextSpan(
                //     //       //     text: "✔️ 8 Gb DDr4 Ram\n"
                //     //       //         "✔️ 512 SSD\n"),
                //     //       //
                //     //       // TextSpan(
                //     //       //     text: "(Better then 256 SSd + 1tb hhd)\n", style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey,)),
                //     //       //
                //     //       // TextSpan(
                //     //       //     text: "✔️ window 11\n"
                //     //       //         "✔️ 60000mah Battery\n"),
                //     //       //
                //     //       // TextSpan(
                //     //       //     text:        "(Battery upto 5-6 hour on simple usage &2-3 on extremely 8usage)\n"
                //     //       //     , style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey)),
                //     //       //
                //     //       //
                //     //
                //     //     ],
                //     //
                //     //   ),
                //     // ),
                //     // Divider(height: 1,),
                //     // RichText(
                //     //
                //     //
                //     //
                //     //
                //     //   textDirection: TextDirection.ltr,
                //     //
                //     //   textScaleFactor: 1.1,
                //     //   text: TextSpan(
                //     //     text: "Dedicated Graphic Memory ",
                //     //     style: TextStyle(
                //     //         fontSize: 14,
                //     //         fontWeight: FontWeight.w400,
                //     //         color: Colors.grey),
                //     //
                //     //
                //     //     children: const <TextSpan>[
                //     //
                //     //
                //     //       TextSpan(
                //     //           text: " GDDR4 6 GB\n", style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,)),
                //     //
                //     //
                //     //
                //     //       // TextSpan(
                //     //       //     text: "✔️ 8 Gb DDr4 Ram\n"
                //     //       //         "✔️ 512 SSD\n"),
                //     //       //
                //     //       // TextSpan(
                //     //       //     text: "(Better then 256 SSd + 1tb hhd)\n", style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey,)),
                //     //       //
                //     //       // TextSpan(
                //     //       //     text: "✔️ window 11\n"
                //     //       //         "✔️ 60000mah Battery\n"),
                //     //       //
                //     //       // TextSpan(
                //     //       //     text:        "(Battery upto 5-6 hour on simple usage &2-3 on extremely 8usage)\n"
                //     //       //     , style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey)),
                //     //       //
                //     //       //
                //     //
                //     //     ],
                //     //
                //     //   ),
                //     // ),
                //     // Divider(height: 1,),
                //
                //
                //
                //
                //   ],
                // ),


              ),




            ),
          ),



          CustomText(text: "   Processor & Memory Feacture",fontSize: 18,weight: FontWeight.w500,),

          SizedBox(
            height: 140,
            width: double.infinity,
            child: Card(
              borderOnForeground: false,
              shadowColor: Colors.white,
              surfaceTintColor:Colors.white ,
              // height: 50,
              // width: 180,
              color: Colors.white,
              elevation: 5,



              shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(5),

                  side: BorderSide( color: Colors.white,width: 1,)

              ),
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text( "🔶   Dedicated Graphic Memory - GDDR6\n"
                    "🔶    Dedicated Graphic Memory Capacity-    6 GB\n"
                    "🔶    Processor Brand -AMD",
                  style: TextStyle(
                    height: 1.5,
                      fontWeight: FontWeight.w400,fontSize: 15
                  ),

                ),
              ),
            ),
          ),
          CustomText(text: "   Storage :",fontSize: 18,weight: FontWeight.w500,),

          SizedBox(
            height: 140,
            width: double.infinity,
            child: Card(
              borderOnForeground: false,
              shadowColor: Colors.white,
              surfaceTintColor:Colors.white ,
              // height: 50,
              // width: 180,
              color: Colors.white,
              elevation: 20,



              shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(5),

                  side: BorderSide( color: Colors.white,width: 1,)

              ),
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text( "🔶️  1 TB HDD\n"
                    "🔶  256 GB SSD\n"
                    "🔶  SATA\n"
                    "🔶   5400 RPM",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                    height: 1.4,
                      fontWeight: FontWeight.w400,fontSize: 15
                  ),

                ),
              ),
            ),
          ),
          CustomText(text: "   Warranty ",fontSize: 18,weight: FontWeight.w500,),

          SizedBox(
            height: 150,
            width: double.infinity,
            child: Card(
              borderOnForeground: false,
              shadowColor: Colors.white,
              surfaceTintColor:Colors.white ,
              // height: 50,
              // width: 180,
              color: Colors.white,
              elevation: 20,



              shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(5),

                  side: BorderSide( color: Colors.white,width: 1,)

              ),
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text( "🔶  One - Year International Travelers Warranty\n"
                    "🔶   Cover in warranty = Manufacturing Defects\n"
                    "🔶  Not cover in warranty = Physical damage\n",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,fontSize: 15
                  ),

                ),
              ),
            ),
          ),
          CustomText(text: "   Key Feacture:",fontSize: 18,weight: FontWeight.w500,),

          SizedBox(
            height: 140,
            width: double.infinity,
            child: Card(
              borderOnForeground: false,
              shadowColor: Colors.white,
              surfaceTintColor:Colors.white ,
              // height: 50,
              // width: 180,
              color: Colors.white,
              elevation: 20,



              shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(5),

                  side: BorderSide( color: Colors.black,width: 1,)

              ),
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text( "👉🏾  15.6 inch Full Hd Led Backlit Ips Comfy   View Display \n"
                    "👉🏾  Light Laptoop without Optical Disk Drive\n"
                    "👉🏾  Pre- Install Genunine Window 10 Os\n",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,fontSize: 15
                  ),

                ),
              ),
            ),
          )
        ],
      ),
          

  ],
      ),
    );
  }
}
