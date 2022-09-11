

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laptops_expert/Drawer/Drawer.dart';
import 'package:laptops_expert/Product_detailed_information/Product_detail_screen.dart';
import 'package:laptops_expert/Search/search.dart';
import 'package:laptops_expert/Shop_By_Price/30.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
import 'package:provider/provider.dart';

import '../providers/wish_provider.dart';
import 'cartpage.dart';

class Laptoop_price extends StatefulWidget {
  const Laptoop_price({Key? key}) : super(key: key);



  @override
  State<Laptoop_price> createState() => _Laptoop_priceState();
}

class _Laptoop_priceState extends State<Laptoop_price> {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade100.withOpacity(0.2),
        drawer: DRAWER(),
        appBar:
        PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: SafeArea(
            child: AppBar(
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(color: Colors.black),
              elevation: 0.1,
              backgroundColor: Colors.white,
              title:Column(
                // alignment: WrapAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

            //       SizedBox(
            //         height: 25,
            //       ),
            //       InkWell(
            //       onTap: () {
            // // Navigator.push(context,
            // // MaterialPageRoute(builder: (context) => const SearchScreen()));
            // },
            //       child:
            //       Container(
            //
            //         height: 20,
            //         decoration: BoxDecoration(
            //         border: Border.all(color: Colors.black, width: 1.4),
            //         borderRadius: BorderRadius.circular(25)),
            //         child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Row(
            //           children: const [
            //             Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 5),
            //               child: Icon(
            //                 Icons.search,
            //                 color: Colors.grey,
            //               ),
            //             ),
            //             Text(
            //               'What are you looking for?  ',
            //               style: TextStyle(fontSize: 12, color: Colors.grey),
            //             ),
            //           ],
            //         ),
                    // Container(
                    //   height: 32,
                    //   // width: 75,
                    //   decoration: BoxDecoration(
                    //       color: Colors.yellow,
                    //       borderRadius: BorderRadius.circular(25)),
                    //   child: const Center(
                    //     child: Text(
                    //       'Search',
                    //       style: TextStyle(fontSize: 16, color: Colors.grey),
                    //     ),
                    //   ),
                    // )
            //       ],
            //         ),
            //       ),
            // ),

                  Text("Price Preference ", style: GoogleFonts.poppins(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w400),)
                ],
              ),


              bottom:  TabBar(
                isScrollable:  true,
                indicatorColor: Colors.teal,
                indicatorWeight: 6,
                indicatorSize:TabBarIndicatorSize.label,


                labelPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                // labelPadding: EdgeInsets.all(3),
// padding: EdgeInsets.all(15),
                // indicatorPadding: EdgeInsets.all(10),
                tabs: [

                  RepeatedText(label:'Below 30k'),
                  // RepeatedText(label:'30k-35k'),
                  RepeatedText(label:'35k-40k'),
                  RepeatedText(label:'40k-45k'),
                  RepeatedText(label:'45k-50k'),
                  RepeatedText(label:'50k-55k'),
                  RepeatedText(label:'55k-60k'),
                  RepeatedText(label:'60k-70k'),
                  // RepeatedText(label:'65k-70k'),
                  RepeatedText(label:'70k-75k'),
                  RepeatedText(label:'Above 75k'),
                  RepeatedText(label:'Apple Laptop'),
                  // RepeatedText(label:"Above 100k"),
                  // RepeatedText(label:'99k-119k'),
                  // RepeatedText(label:'119k-149k'),
                  // RepeatedText(label:'Above 150k'),
                  // RepeatedText(label:'69k-79k'),
                ],




              ),
                actions:<Widget>[

                  IconButton(
                      icon:Icon(
                          Icons.search,
                          color:Colors.black
                      ),
                      onPressed: (){

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const SearchScreen()));
                      }
                  ),

                  IconButton(
                      icon:Icon(
                          Icons.favorite_outline_sharp,
                          color:Colors.black
                      ),
                      onPressed: (){

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const WishlistScreen()));
                      }
                  ),

                  SizedBox(width: 15,)

                  // IconButton(
                  //     icon:Icon(
                  //         Icons.balance_rounded,
                  //         color:Colors.black
                  //     ),
                  //     onPressed: (){}
                  // ),


                ]

            ),
          ),
        ),


        
        body: Material(
          child: TabBarView(
            children: [
              belowthirty(),

              thirtyfive(),
              fourty(),
              fourtyfive(),
              fifty(),
              fiftyfive(),
              sixity(),
              // sixityfive(),
              seventy(),
              Aboveseventyfive(),
              apple(),
              // seventyfive(),
              // eighty(),
              // onelaks(),
              // onetwentylaks(),
              // onefiftylaks(),
              // abovefiftylaks(),

            ],
          ),
        ),
        
        
      ),
    );
  }
}


class ProductModel extends StatefulWidget {
  final dynamic product;
  const ProductModel({Key? key,required this.product}) : super(key: key);


  @override
  State<ProductModel> createState() => _ProductModelState();
}

class _ProductModelState extends State<ProductModel> {
  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

//
// class belowthirty extends StatefulWidget {
//   const belowthirty({Key? key}) : super(key: key);
//
//   @override
//   State<belowthirty> createState() => _belowthirtyState();
// }
//
// class _belowthirtyState extends State<belowthirty> {
//
//   final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
//       .collection('Products').where('Price', isEqualTo:'40k').snapshots();
//   // final product = snapshot.data!.docs[index];
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//
//


          return
            // SingleChildScrollView(
            // child: SizedBox(
            //   // height:2580,
            //   width: 420,
            //   child: ListView.builder(
            //       itemCount: snapshot.data!.docs.length,
            //       shrinkWrap: true,
            //       scrollDirection: Axis.vertical,
            //       physics: NeverScrollableScrollPhysics(),
            //       itemBuilder: (context, index) =>
                  //   Column(
                  // // children: [
                  // Link(
                  //   uri: Uri.parse(Homeadd[index].link),
                  //   // target: LinkTarget.blank,
                  //   builder: (context, followLink) =>


                  Material(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:
                      Stack(

                        children: <Widget>[


                          SizedBox(
                            height: 280,
                            width: MediaQuery.of(context).size.width,
                            child: GestureDetector(

                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>
                                        ProductDetailsScreen(
                                          proList: widget.product
                                        )
                                    ));
                              },


                              child: Card(
                                borderOnForeground: false,
                                shadowColor: Colors.white,
                                surfaceTintColor: Colors.white,
                                elevation: 20,


                                shape: RoundedRectangleBorder(

                                    borderRadius: BorderRadius.circular(10),

                                    side: BorderSide(
                                      color: AppColors.Common, width: 1,)

                                ),

                                color: Colors.white,


                                child:
                                Stack(
                                  children: [
                                    Positioned(
                                      top: 35,
                                      left: 0,
                                      child: Container(

                                        // color: Colors.red,
                                        height: 180,

                                        width: size.width * 0.33,

                                        margin: EdgeInsets.all(5),


                                        decoration: BoxDecoration(

                                          // color: Colors.green,

                                          // border: Border.all(color:Colors.black54,width: 2.55),

                                            borderRadius: BorderRadius.circular(
                                                1),

                                            image: DecorationImage(

                                              image: NetworkImage(
                                                  widget.product['Images'][0]),
                                                  // "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp-spacegray-select-202206?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1653493200207"),
                                              fit: BoxFit.fitWidth,
                                            ) //
                                        ),
                                      ),
                                    ),

                                    // Positioned(
                                    //     bottom: 60,
                                    //     left: 15,
                                    //     child: Row(
                                    //       mainAxisAlignment: MainAxisAlignment
                                    //           .start,
                                    //       children: [
                                    //         Icon(Icons.add_circle_outline,
                                    //           color: Colors.redAccent,),
                                    //
                                    //         Text("   Compare",)
                                    //       ],
                                    //     )
                                    //
                                    // ),

                                    Positioned(
                                        bottom: 50,
                                        left: 1,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceEvenly,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  var existingItemWishlist = context
                                                      .read<Wish>()
                                                      .getWishItems
                                                      .firstWhereOrNull((product) =>
                                                  product.documentId ==
                                                      widget.product['Proid']);
                                                  existingItemWishlist != null
                                                      ? context
                                                      .read<Wish>()
                                                      .removeThis(widget.product['Proid'])
                                                      : context.read<Wish>().addWishItem(
                                                    widget.product['Category'],
                                                    // onSale != 0
                                                    //     ? ((1 -
                                                    //     (widget.product[
                                                    //     'discount'] /
                                                    //         100)) *
                                                    //     widget.product['price'])
                                                    //     :
                                                    widget.product['Price'],
                                                    1,

                                                    widget.product['Amazon'],
                                                    widget.product['Images'],
                                                    widget.product['Proid'],
                                                    // widget.product['sid'],
                                                  );
                                                  return print("jjjjjjjjjjj");
                                                },
                                                icon: context
                                                    .watch<Wish>()
                                                    .getWishItems
                                                    .firstWhereOrNull((product) =>
                                                product.documentId ==
                                                    widget.product['Proid']) !=
                                                    null
                                                    ? const Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                  size: 30,
                                                )
                                                    : const Icon(
                                                  Icons.favorite_outline,
                                                  color: Colors.red,
                                                  size: 30,
                                                )),
                                            Text("Like",)
                                          ],
                                        )

                                    ),
                                    Positioned(
                                        bottom: 25,
                                        left: 10,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceEvenly,
                                          children: [
                                            Icon(FontAwesomeIcons.amazon,
                                              color: Colors.black,),

                                            Text("    Buy ➡️",)
                                          ],
                                        )
                                      //
                                    ),
                                    Positioned(
                                      // bottom: 100,
                                        right: 0,
                                        child: Container(
                                          // height: 22,
                                          width: size.width * 0.58,
                                          // color: Colors.black,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            children: [
                                              SizedBox(height: 10,),
                                              Align(
                                                  alignment: Alignment.center,


                                                  child: CustomText(
                                                    text: widget.product['Proname'][0].replaceAll("  ","",),
                                                    fontSize: 16,
                                                    textdirection: TextDirection
                                                        .ltr,
                                                    weight: FontWeight.w500,
                                                  )),
                                              // Align(
                                              //     alignment: Alignment.center,
                                              //     child: CustomText(text: "window 11",fontSize:14,)),

                                              Center(child: Text(widget.product['Proname'][1].replaceAll("  ","",),
                                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300), overflow: TextOverflow.ellipsis,maxLines: 2, )),
                                              SizedBox(height: 10,),

                                              // Center(child: Text(widget.product['Proname'][3].replaceAll("  ","",),
                                              //   style: TextStyle(fontSize: 14),)),
                                              CustomText(
                                                text:  widget.product['Proname'][3] ,
                                                height: 1.3,
                                                fontSize: 12,
                                                weight: FontWeight.w500,
                                                color: Colors.teal,),
                                              SizedBox(height: 5,),
                                              // CustomText(text: "✔️Amd hexa core -Ryzen 5 processor\n"
                                              //     "✔️8 Gb DDr4 Ram\n"
                                              //     "✔️512 SSD\n"
                                              //     "✔️New generation\n"


                                              // ,fontSize:14,),

                                              Text(
                                                  // "🔶️ Inter 11th Gen Core i5\n"
                                                  //     "🔶️ 8 Gb LPDDDr4 RAM & 512 SSD\n"
                                                  //     "🔶️ Intel Irix xe Graphic Card\n"
                                                  //     "🔶️ Light weight & Stylish Look\n"
                                                  //     "🔶 ️New generation\n"
                                                widget.product['Prodesc'].replaceAll("\\n","\n",).replaceAll("  ","",),
// textScaleFactor: ,
                                                style: GoogleFonts.poppins(wordSpacing: 2,fontSize: 13,height: 1.5,fontWeight: FontWeight.w300,),
                                                overflow: TextOverflow.ellipsis,maxLines: 5,
                                              )

                                              // SizedBox(
                                              //   height: 5,
                                              //     width: 95,
                                              //   child: ListTile(
                                              //     title: CustomText(text: "IPHONE Z SERIES 512 GB\n 8GB RAM I7 GENERATION 2022",fontSize: 11,)
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        )

                                    )

                                  ],
                                ),


                                //
                                // Divider(height: 5,thickness:5,color: Colors.black,),
                                //
                                //
                                // CustomText(text: "IPHONE Z SERIES 512 GB\n 8GB RAM I7 GENERATION 2022\n",fontSize: 18,),
                                // CustomText(text: "Price: Rs: 60000",fontSize: 20,),

                                // SizedBox(
                                //   height: 5,
                                //     width: 95,
                                //   child: ListTile(
                                //     title: CustomText(text: "IPHONE Z SERIES 512 GB\n 8GB RAM I7 GENERATION 2022",fontSize: 11,)
                                //   ),
                                // ),
                                //
                                //
                                // Container(
                                //   height: 25,
                                //   width: 95,
                                //   color: Colors.yellow,
                                // )

                                //   ],
                                // ),
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Positioned(
                              top: MediaQuery.of(context).size.height*0.009,
                              left: MediaQuery.of(context).size.height*0.009,
                              // right: 12,
                              // bottom: 1,
                              child: Container(
                                  decoration: BoxDecoration(


                                    color: AppColors.Common,

                                    // border: Border.all(color:Colors.black54,width: 2.55),

                                    borderRadius: BorderRadius.circular(8),
                                  ),

                                  height: 50,
                                  width: 45,


                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 4,),

                                      Text(widget.product['Score'],

                                      //     "\n spec\n Score",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black,height: 1.4),),

                                  SizedBox(
                                    height: 1,
                                    child: Divider(
                                 color: Colors.black,
                                    ),
                                  ),
                                  // SizedBox(height: 1,),
                                  Text("Specific", style: TextStyle(
                                      fontSize: 8, color: Colors.black),),
                                    Text("Score", style: TextStyle(
                                        fontSize: 9, color: Colors.black),),

                                    ],
                                  )

                              ),
                            ),
                          ),


                          // Positioned(
                          // top: 4,
                          // right: 5,
                          // child:   Container(
                          //
                          //   height: 59,
                          //   width: 45,
                          //   color: Colors.purple,
                          //
                          // ),
                          // )

                        ],
                      ),
                    ),
                  );


  }
}

class RepeatedText extends StatelessWidget {
 final String label;
  const RepeatedText({Key? key,required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(label, style: TextStyle(color: Colors.grey.shade600),);
  }
}
