

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laptops_expert/Drawer/Drawer.dart';
import 'package:laptops_expert/Product_detailed_information/Product_detail_screen.dart';
import 'package:laptops_expert/Search/search.dart';
import 'package:laptops_expert/Shop_By_Price/30.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
import 'package:laptops_expert/Main_Screen/Shop_BY_Price.dart';

import '../Shop_By_Category/shop by category__all.dart';

class Laptoop_Information extends StatefulWidget{
  const Laptoop_Information({Key? key}) : super(key: key);

  @override
  State<Laptoop_Information> createState() => _Laptoop_InformationState();
}

class _Laptoop_InformationState extends State<Laptoop_Information> {
  @override

  Widget build(BuildContext context) {



    return  DefaultTabController(

        length: 9,
        child: Scaffold(

        drawer: SizedBox(
        // height: 65,
        width: 265,
        child: DRAWER()),
    appBar:   AppBar(
      // foregroundColor: Colors.red,

    elevation: 0.2,
    // shape: Border(
    //     bottom: BorderSide(
    //       width:1,
    //       color: Colors.transparent,
    //     )

    // ),

        actions:<Widget>[

    Padding(
      padding: const EdgeInsets.all(10.0),
      child: IconButton(
      icon:Icon(
          Icons.search,
          color:Colors.black
      ),
              onPressed: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SearchScreen()));
              }
          ),
    ),
    ],

    automaticallyImplyLeading: true,
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    title: Expanded(
      child: Column(
      children: [
      Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children:<Widget>[
      Text("Shop By Category ",
      textScaleFactor: 1,
      style: GoogleFonts.poppins(fontSize:16,color: Colors.black,fontWeight: FontWeight.w400),),

      ]
      ),



// Divider(height: 1,color: Colors.tealAccent,)


      ],
      ),
    ),

    bottom:  TabBar(
    isScrollable:  true,
    indicatorColor: Colors.teal,
    indicatorWeight: 6,
      labelPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      indicatorSize:TabBarIndicatorSize.label,

    tabs: [


      RepeatedText(label:'For Engenerering Student '),
      RepeatedText(label:'For Coder& Developer'),


      RepeatedText(label:'For Schooling'),
      // RepeatedText(label:'For video editing '),
      RepeatedText(label:'For Bussiness'),
      RepeatedText(label:'For Gaming'),
      RepeatedText(label:'For Mbbs Aspirants'),
      RepeatedText(label:'For MbA Aspirant'),
      RepeatedText(label:'For C.A Aspirant'),
      // RepeatedText(label:'For Designing'),
      // RepeatedText(label:'For U.P.S.C Aspirant'),
      // RepeatedText(label:'For Influencer'),
      RepeatedText(label:'Apple Product'),

    ],
    ),
        // actions:<Widget>[
          // IconButton(
          //     icon:Icon(
          //         Icons.favorite_outline_sharp,
          //         color:Colors.black
          //     ),
          //     onPressed: (){}
          // ),
          //
          // IconButton(
          //   splashRadius: 25,
          //     iconSize: 23,
          //     icon:Icon(
          //         Icons.balance,
          //         color:Colors.black
          //
          //     ),
          //     onPressed: (){}
          // )

        // ]
    ),


          body: TabBarView(
            children: [


              Engineering(),
              Coder(),
              Schooling(),
              // app(),
              Bussiness(),
              Gaming(),
              Mbbs(),
              Mba(),
              CA(),

              apple(),


            ],
          ),

    )
    );
    }
}

