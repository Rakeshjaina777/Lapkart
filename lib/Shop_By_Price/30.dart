
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laptops_expert/Main_Screen/Shop_BY_Price.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
// import {query,orderBy} from "firebase/firestore";

// List<dynamic>number=[
//   "40k",
//   "50k",
//   "70k",
//
// ];

class belowthirty extends StatefulWidget {
  const belowthirty({Key? key}) : super(key: key);

  @override
  State<belowthirty> createState() => _belowthirtyState();
}

class _belowthirtyState extends State<belowthirty> {

  // final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
  //     .collection('Products').where('Price', isEqualTo:'40k').snapshots();
  // // final product = snapshot.data!.docs[index];

  @override
  Widget build (BuildContext context) {
    // for (var i = 0; i < number.length; ++i) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products').where("Price", isEqualTo: '30').snapshots();
    // final product = snapshot.data!.docs[index];

    // const q =query(Price,orderBy("Score"));


    return
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
                    child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide( color: Colors.teal,width: 1.2,)
            ),

            // color: Colors.black,
            child: ExpansionTile(
                    // collapsedIconColor: Colors.tealAccent,
                    // iconColor: Colors.tealAccent,
                    children: [

                      // CustomText(text: "Benchmark For these Category",fontSize: 18,weight: FontWeight.w600,),

                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                          "🔶   Processor:  I3 11 generation >>\n    I3 10 generation = Ryzen 3 \n\n"
                              "🔶   Cores: 4 Cores >> 2 Cores\n\n"
                              "🔶   Storage :  256 GB  SSD >> 1 TB HHD \n\n"
                              "🔶   Ram :  Min 4 GB RAM (if processor is Good) or  else   Prefer 8 GB RAM  \n\n "
                              "🔶   Upgradable option : Additional free slot other then 8GB (8+8 type)>> Total one slot(16GB)  \n\n"
                              "🔶   Expandable storatage: One extra slot for SSD or HDD\n\n"
                              "🔶   Max clock speed: must Be Greater then3.3 GHz\n\n"
                              "🔶   Customisable Additional features :\n\n  Backlight Keyboard, Display quality ,Integrated Graphic Card, Necessary Port Refresh rate, Ram & SSD speed\n\n"
                              "🔶   Please look these basic Benchmark  before buying\n\n"

                              "️  ",textScaleFactor: 0.9,


                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,height: 1.1),



                        ),


                      ),



                    ],

                    title:

                    Row(
                      children: [
                        Flexible(
                          child: Card(

                              elevation: 0.0,
                              // color: Colors.black,
                              child: Text('Benchmark For these Category', style: TextStyle(
                                  color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),)

                          ),
                        ),
                      ],
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
                        ProductModel(product: snapshot.data!.docs[index],),
                  ),
                ),



          ],
          ),
          );
        },
      );

  }


}

class thirtyfive extends StatefulWidget {
  const thirtyfive({Key? key}) : super(key: key);

  @override
  State<thirtyfive> createState() => _thirtyfiveState();
}

class _thirtyfiveState extends State<thirtyfive> {
  @override
  Widget build(BuildContext context) {

    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products').where('Price', isEqualTo: "35").snapshots();
    // final product = snapshot.data!.docs[index];



    return
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
                  child: Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide( color: AppColors.Common,width: 1,)
                    ),

                    // color: Colors.black,
                    child: ExpansionTile(
                      // collapsedIconColor: Colors.tealAccent,
                      // iconColor: Colors.tealAccent,
                      children: [

                        // CustomText(text: "Benchmark For these Category",fontSize: 18,weight: FontWeight.w600,),

                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                            "🔶   Processor: \n    I5 10 Generation > I3 11 generation              .                            >>\n    I3 10 generation = Ryzen 3 \n\n"
                                "🔶   Cores: 4 Cores >> 2 Cores\n\n"
                                "🔶   Storage :  512 SSd >>256 GB  SSD >> 1 TB HHD \n\n"
                                "🔶   Ram :  Min 4 GB Ram if Processor is Good Else 8 GB Ram Must Prefer\n\n "
                                "🔶   Upgradability option : 16GB  Ram , one extra slot+ one Previous once (8+8 type)>> Total one slot(16 Gb Total)  \n\n"
                                "🔶   Expandable storatage: one extra slot for SSD or HDD\n\n"
                                "🔶   Max clock speed: must Be Greater then3.3 GHz\n\n"
                                "🔶   Addition feature to look  by You As per You Choise:\n\n  Backlight Keyboard, Display quality ,Integrated Graphic Card, Necessary Port Refresh rate, Ram & SSD speed\n\n"
                                "🔶   Please Look these basic Benchmare before buying\n\n"

                                "️  ",textScaleFactor: 0.9,


                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,height: 1.1),



                          ),


                        ),



                      ],

                      title:

                      Row(
                        children: [
                          Flexible(
                            child: Card(

                                elevation: 0.0,
                                // color: Colors.black,
                                child: Text('Benchmark For these Category', style: TextStyle(
                                    color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),)

                            ),
                          ),
                        ],
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
                        ProductModel(product: snapshot.data!.docs[index],),
                  ),
                ),



              ],
            ),
          );
        },
      );

  }


  }

  class fourty extends StatefulWidget {
    const fourty({Key? key}) : super(key: key);

    @override
    State<fourty> createState() => _fourtyState();
  }

  class _fourtyState extends State<fourty> {
    @override

    Widget build(BuildContext context) {

      final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
          .collection('Products').where('Price', isEqualTo: "40").snapshots();
      // final product = snapshot.data!.docs[index];



      return
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
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide( color: AppColors.Common,width: 1,)
                      ),

                      // color: Colors.black,
                      child: ExpansionTile(
                        // collapsedIconColor: Colors.tealAccent,
                        // iconColor: Colors.tealAccent,
                        children: [

                          // CustomText(text: "Benchmark For these Category",fontSize: 18,weight: FontWeight.w600,),

                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                              "🔶   Processor: \n    I5 10 Generation > I3 11 generation              .                            >>\n    I3 10 generation = Ryzen 3 \n\n"
                                  "🔶   Cores: 4 Cores >> 2 Cores\n\n"
                                  "🔶   Storage :  512 SSd >>256 GB  SSD >> 1 TB HHD \n\n"
                                  "🔶   Ram :  Min 4 GB Ram if Processor is Good Else 8 GB Ram Must Prefer\n\n "
                                  "🔶   Upgradability option : 16GB  Ram , one extra slot+ one Previous once (8+8 type)>> Total one slot(16 Gb Total)  \n\n"
                                  "🔶   Expandable storatage: one extra slot for SSD or HDD\n\n"
                                  "🔶   Max clock speed: must Be Greater then3.3 GHz\n\n"
                                  "🔶   Addition feature to look  by You As per You Choise:\n\n  Backlight Keyboard, Display quality ,Integrated Graphic Card, Necessary Port Refresh rate, Ram & SSD speed\n\n"
                                  "🔶   Please Look these basic Benchmare before buying\n\n"

                                  "️  ",textScaleFactor: 0.9,


                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,height: 1.1),



                            ),


                          ),



                        ],

                        title:

                        Row(
                          children: [
                            Flexible(
                              child: Card(

                                  elevation: 0.0,
                                  // color: Colors.black,
                                  child: Text('Benchmark For these Category', style: TextStyle(
                                      color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),)

                              ),
                            ),
                          ],
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
                          ProductModel(product: snapshot.data!.docs[index],),
                    ),
                  ),



                ],
              ),
            );
          },
        );

    }


  }

  class fourtyfive extends StatefulWidget {
    const fourtyfive({Key? key}) : super(key: key);

    @override
    State<fourtyfive> createState() => _fourtyfiveState();
  }

  class _fourtyfiveState extends State<fourtyfive> {
    @override

    Widget build(BuildContext context) {

      final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
          .collection('Products').where('Price', isEqualTo: "45").snapshots();
      // final product = snapshot.data!.docs[index];



      return
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
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide( color:AppColors.Common,width: 1,)
                      ),

                      // color: Colors.black,
                      child: ExpansionTile(
                        // collapsedIconColor: Colors.tealAccent,
                        // iconColor: Colors.tealAccent,
                        children: [

                          // CustomText(text: "Benchmark For these Category",fontSize: 18,weight: FontWeight.w600,),

                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                              "🔶   Processor: \n  Ryzen 5600h  >I5 11 Generation > I5 10 generation > I3 11 Generation  \n\n"
                                  "🔶   Cores: 6 cores >>4 Cores >> 2 Cores\n\n"
                                  "🔶    Fast Charging \n\n"
                                  "🔶   Storage :  512 SSD(M2 type SATA) >>256 GB  SSD >> 1 TB HHD \n\n"
                                  "🔶   Ram :  Min 8 GB Ram if Processor is Good Else 16 GB Ram Must Prefer\n\n "
                                  "🔶   Upgradability option : 16 or 32 GB  Ram , one extra slot+ one Previous once (8+8 type/16+16)>> Total one slot(32 Gb Total)  \n\n"
                                  "🔶   Expandable storatage: One or two extra slot for SSD or HDD\n\n"
                                  "🔶   Max clock speed: must Be Greater then 4.2 GHz\n\n"
                                  "🔶   Addition feature must have :\n\n 1.Backlight Keyboard\n2. Display quality(2k> Full Hd)\n3. Dedicated Graphic Card(2 GB  )>>Integrated Graphic Card\n4. Necessary  Refresh rate : Minium :90-120\n  5: See wifi And port as per Your Requirement\n"
                                  "🔶   Please Look these basic Benchmare before buying\n\n"

                                  "️  ",textScaleFactor: 0.9,


                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,height: 1.1),



                            ),


                          ),



                        ],

                        title:

                        Row(
                          children: [
                            Flexible(
                              child: Card(

                                  elevation: 0.0,
                                  // color: Colors.black,
                                  child: Text('Benchmark For these Category', style: TextStyle(
                                      color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),)

                              ),
                            ),
                          ],
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
                          ProductModel(product: snapshot.data!.docs[index],),
                    ),
                  ),



                ],
              ),
            );
          },
        );

    }


  }

  class fifty extends StatefulWidget {
    const fifty({Key? key}) : super(key: key);

    @override
    State<fifty> createState() => _fiftyState();
  }

  class _fiftyState extends State<fifty> {
    @override

    Widget build(BuildContext context) {

      final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
          .collection('Products').where('Price', isEqualTo: "50").snapshots();
      // final product = snapshot.data!.docs[index];



      return
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
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide( color: AppColors.Common,width: 1,)
                      ),

                      // color: Colors.black,
                      child: ExpansionTile(
                        // collapsedIconColor: Colors.tealAccent,
                        // iconColor: Colors.tealAccent,
                        children: [

                          // CustomText(text: "Benchmark For these Category",fontSize: 18,weight: FontWeight.w600,),

                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                              "🔶   Processor: \n  Ryzen 5600h  >I5 11 Generation > I5 10 generation \n\n"
                                  "🔶   Cores: 6 cores >>4 Cores >> 2 Cores\n\n"

                                  "🔶   Storage :  512 SSD(M2 type SATA) >>256 GB  SSD >> 1 TB HHD \n\n"
                                  "🔶   Ram :  Min 8 GB Ram if Processor is Good Else 16 GB Ram Must Prefer\n\n "
                                  "🔶   Upgradability option : 16 or 32 GB  Ram , one extra slot+ one Previous once (8+8 type/16+16)>> Total one slot(32 Gb Total)  \n\n"
                                  "🔶   Expandable storatage: One or two extra slot for SSD or HDD\n\n"
                                  "🔶   Max clock speed: must Be Greater then 4.2 GHz\n\n"
                                  "🔶   Addition feature must have :\n\n 1.Backlight Keyboard\n2. Display quality(2k> Full Hd)\n3. Dedicated Graphic Card(2 GB  )>>Integrated Graphic Card\n4. Necessary  Refresh rate : Minium :90-120\n  5: See wifi And port as per Your Requirement\n"
                                  "🔶   Please Look these basic Benchmare before buying\n\n"

                                  "️  ",textScaleFactor: 0.9,


                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,height: 1.1),



                            ),


                          ),



                        ],

                        title:

                        Row(
                          children: [
                            Flexible(
                              child: Card(

                                  elevation: 0.0,
                                  // color: Colors.black,
                                  child: Text('Benchmark For these Category', style: TextStyle(
                                      color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),)

                              ),
                            ),
                          ],
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
                          ProductModel(product: snapshot.data!.docs[index],),
                    ),
                  ),



                ],
              ),
            );
          },
        );

    }


  }

  class fiftyfive extends StatefulWidget {
    const fiftyfive({Key? key}) : super(key: key);

    @override
    State<fiftyfive> createState() => _fiftyfiveState();
  }

  class _fiftyfiveState extends State<fiftyfive> {
    @override
    Widget build(BuildContext context) {

      final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
          .collection('Products').where('Price', isEqualTo: "55").snapshots();
      // final product = snapshot.data!.docs[index];



      return
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
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide( color: AppColors.Common,width: 1,)
                      ),

                      // color: Colors.black,
                      child: ExpansionTile(
                        // collapsedIconColor: Colors.tealAccent,
                        // iconColor: Colors.tealAccent,
                        children: [

                          // CustomText(text: "Benchmark For these Category",fontSize: 18,weight: FontWeight.w600,),

                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                              "🔶   Processor: \n I5 12 Generation >>  Ryzen 5600h  >I5 11 Generation > I5 10 generation  \n\n"
                                  "🔶   Cores: 6 cores >>4 Cores >> 2 Cores\n\n"
                                  "🔶   Storage :  512 SSD(M2 type SATA)>> 1TB HHD + 256SSD >>256 GB  SSD >> 1 TB HHD \n\n"
                                  "🔶   Ram :  Min 8 GB Ram if Processor is Good Else 16 GB Ram Must Prefer\n\n "
                                  "🔶   Upgradability option : 16 or 32 GB  Ram , one extra slot+ one Previous once (8+8 type/16+16)>> Total one slot(32 Gb Total)  \n\n"
                                  "🔶   Expandable storatage: One or two extra slot for SSD or HDD\n\n"
                                  "🔶   Max clock speed: must Be Greater then 4.2 GHz\n\n"
                                  "🔶   For Office Usage: Fast Charging, wifi -6 or higher ,16Gb Ram, Fingerprint Scaner, Light weight\n\n"
                                  "For Gamer : 2 Cooling Fan\nSPEED :\nMIN: 3000 \nMAX:6000 + \n  4 GB Dedicated Graphic Card( GTX 1650TI> GTX 1650) \n\n "
                                  "🔶   Addition feature must have :\n\n 1.Backlight Keyboard(RBG>> ONE COLOUR)\n2. Display quality(2k> Full Hd)\n\3. Necessary  Refresh rate : Minium :120-144Hz\n  5: See wifi And port as per Your Requirement\n"
                                  "🔶   Please Look these basic Benchmare before buying\n\n"

                                  "️  ",textScaleFactor: 0.9,


                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,height: 1.3),



                            ),


                          ),



                        ],

                        title:

                        Row(
                          children: [
                            Flexible(
                              child: Card(

                                  elevation: 0.0,
                                  // color: Colors.black,
                                  child: Text('Benchmark For these Category', style: TextStyle(
                                      color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),)

                              ),
                            ),
                          ],
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
                          ProductModel(product: snapshot.data!.docs[index],),
                    ),
                  ),



                ],
              ),
            );
          },
        );

    }

  }

  class sixity extends StatefulWidget {
    const sixity({Key? key}) : super(key: key);

    @override
    State<sixity> createState() => _sixityState();
  }

  class _sixityState extends State<sixity> {
    @override
    Widget build(BuildContext context) {

      final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
          .collection('Products').where('Price', isEqualTo: "60").snapshots();
      // final product = snapshot.data!.docs[index];



      return
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
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide( color: AppColors.Common,width: 1,)
                      ),

                      // color: Colors.black,
                      child: ExpansionTile(
                        // collapsedIconColor: Colors.tealAccent,
                        // iconColor: Colors.tealAccent,
                        children: [

                          // CustomText(text: "Benchmark For these Category",fontSize: 18,weight: FontWeight.w600,),

                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                              "🔶   Processor: \n I5 12 Generation >>  Ryzen 5600h  >I5 11 Generation > I5 10 generation  \n\n"
                                  "🔶   Cores:10 Cores>> 6 cores >>4 Cores \n\n"
                                  "🔶   Storage :  512 SSD(M2 type SATA)>> 1TB HHD + 256SSD >>256 GB  SSD >> 1 TB HHD \n\n"
                                  "🔶   Ram :  Min 8 GB Ram if Processor is Good Else 16 GB Ram Must Prefer\n\n "
                                  "🔶   Upgradability option : 16 or 32 GB  Ram , one extra slot+ one Previous once (8+8 type/16+16)>> Total one slot(32 Gb Total)  \n\n"
                                  "🔶   Expandable storatage: One or two extra slot for SSD or HDD\n\n"
                                  "🔶   Max clock speed: must Be Greater then 4.2 GHz\n\n"
                                  "🔶   For Office Usage: Fast Charging, wifi -6 or higher ,16Gb Ram, Fingerprint Scaner, Light weight\n\n"
                                  "For Gamer : 2 Cooling Fan\nSPEED :\nMIN: 3000 \nMAX:6000 + \n  4 GB Dedicated Graphic Card(  RTX 3050>>GTX 1650TI> GTX 1650) \n\n "
                                  "🔶   Addition feature must have :\n\n 1.Backlight Keyboard(RBG>> ONE COLOUR)\n2. Display quality(2k> Full Hd)\n\3. Necessary  Refresh rate : Minium :120-144Hz\n  5: See wifi And port as per Your Requirement\n"
                                  "🔶   Please Look these basic Benchmare before buying\n\n"

                                  "️  ",textScaleFactor: 0.9,


                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,height: 1.3),



                            ),


                          ),



                        ],

                        title:

                        Row(
                          children: [
                            Flexible(
                              child: Card(

                                  elevation: 0.0,
                                  // color: Colors.black,
                                  child: Text('Benchmark For these Category', style: TextStyle(
                                      color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),)

                              ),
                            ),
                          ],
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
                          ProductModel(product: snapshot.data!.docs[index],),
                    ),
                  ),



                ],
              ),
            );
          },
        );

    }


  }

  // class sixityfive extends StatefulWidget {
  //   const sixityfive({Key? key}) : super(key: key);
  //
  //   @override
  //   State<sixityfive> createState() => _sixityfiveState();
  // }
  //
  // class _sixityfiveState extends State<sixityfive> {
  //   @override
  //   Widget build(BuildContext context) {
  //
  //     final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
  //         .collection('Products').where('Pricetype', isEqualTo: "40k").snapshots();
  //     // final product = snapshot.data!.docs[index];
  //
  //
  //
  //     return
  //       StreamBuilder<QuerySnapshot>(
  //         stream: _prodcutsStream,
  //
  //         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
  //           if (snapshot.hasError) {
  //             return const Text('Something went wrong');
  //           }
  //
  //           if (snapshot.connectionState == ConnectionState.waiting) {
  //             return const Center(
  //               child: CircularProgressIndicator(),
  //             );
  //           }
  //
  //           if (snapshot.data!.docs.isEmpty) {
  //             return const Center(
  //                 child: Text(
  //                   'This category \n\n has no items yet !',
  //                   textAlign: TextAlign.center,
  //                   style: TextStyle(
  //                       fontSize: 26,
  //                       color: Colors.blueGrey,
  //                       fontWeight: FontWeight.bold,
  //                       fontFamily: 'Acme',
  //                       letterSpacing: 1.5),
  //                 ));
  //           }
  //           return SingleChildScrollView(
  //             child: Column(
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Card(
  //                     elevation: 8.0,
  //                     shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(10),
  //                         side: BorderSide( color: Colors.tealAccent,width: 1,)
  //                     ),
  //
  //                     // color: Colors.black,
  //                     child: ExpansionTile(
  //                       // collapsedIconColor: Colors.tealAccent,
  //                       // iconColor: Colors.tealAccent,
  //                       children: [
  //
  //                         // CustomText(text: "Benchmark For these Category",fontSize: 18,weight: FontWeight.w600,),
  //
  //                         Padding(
  //                           padding: const EdgeInsets.all(18.0),
  //                           child: Text(
  //                             // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
  //                             "🔶   Processor: \n I5 12 Generation >> Ryzen 7 >>  Ryzen 5600h  >I5 11 Generation > I5 10 generation  \n\n"
  //                                 "🔶   Cores: 6 cores >>4 Cores >> 2 Cores\n\n"
  //                                 "🔶   Storage :  512 SSD(M2 type SATA)>> 1TB HHD + 256SSD >>256 GB  SSD >> 1 TB HHD \n\n"
  //                                 "🔶   Ram :  Min 8 GB Ram if Processor is Good Else 16 GB Ram Must Prefer\n\n "
  //                                 "🔶   Upgradability option : 16 or 32 GB  Ram , one extra slot+ one Previous once (8+8 type/16+16)>> Total one slot(32 Gb Total)  \n\n"
  //                                 "🔶   Expandable storatage: One or two extra slot for SSD or HDD\n\n"
  //                                 "🔶   Max clock speed: must Be Greater then 4.2 GHz\n\n"
  //                                 "🔶   For Office Usage: Fast Charging, wifi -6 or higher ,16Gb Ram, Fingerprint Scaner, Light weight\n\n"
  //                                 "For Gamer : 2 Cooling Fan\nSPEED :\nMIN: 3000 \nMAX:6000 + \n  4 GB Dedicated Graphic Card( RTX 3050>> GTX 1650TI> GTX 1650) \n\n "
  //                                 "🔶   Addition feature must have :\n\n 1.Backlight Keyboard(RBG>> ONE COLOUR)\n2. Display quality(2k> Full Hd)\n\3. Necessary  Refresh rate : Minium :120-144Hz\n  5: See wifi And port as per Your Requirement\n"
  //                                 "🔶   Please Look these basic Benchmare before buying\n\n"
  //
  //                                 "️  ",textScaleFactor: 0.9,
  //
  //
  //                             style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,height: 1.3),
  //
  //
  //
  //                           ),
  //
  //
  //                         ),
  //
  //
  //
  //                       ],
  //
  //                       title:
  //
  //                       Row(
  //                         children: [
  //                           Flexible(
  //                             child: Card(
  //
  //                                 elevation: 0.0,
  //                                 // color: Colors.black,
  //                                 child: Text('Benchmark For these Category', style: TextStyle(
  //                                     color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),)
  //
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //
  //                     ),
  //                   ),
  //                 ),
  //
  //                 SizedBox(
  //                   // height:2580,
  //                   width: 420,
  //                   child: ListView.builder(
  //                     itemCount: snapshot.data!.docs.length,
  //                     shrinkWrap: true,
  //                     scrollDirection: Axis.vertical,
  //                     physics: NeverScrollableScrollPhysics(),
  //                     itemBuilder: (context, index) =>
  //                         ProductModel(product: snapshot.data!.docs[index],),
  //                   ),
  //                 ),
  //
  //
  //
  //               ],
  //             ),
  //           );
  //         },
  //       );
  //
  //   }
  //
  //
  // }

  class seventy extends StatefulWidget {
    const seventy({Key? key}) : super(key: key);

    @override
    State<seventy> createState() => _seventyState();
  }

  class _seventyState extends State<seventy> {
    @override
    Widget build(BuildContext context) {

      final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
          .collection('Products').where('Price', isEqualTo: "70").snapshots();
      // final product = snapshot.data!.docs[index];



      return
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
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide( color: AppColors.Common,width: 1,)
                      ),

                      // color: Colors.black,
                      child: ExpansionTile(
                        // collapsedIconColor: Colors.tealAccent,
                        // iconColor: Colors.tealAccent,
                        children: [

                          // CustomText(text: "Benchmark For these Category",fontSize: 18,weight: FontWeight.w600,),

                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                              "🔶   Processor: \n I5 12 Generation>> Ryzen 7 >>  Ryzen 5600h  >I5 11 Generation > I5 10 generation  \n\n"
                                  "🔶   Cores: 6 cores >>4 Cores >> 2 Cores\n\n"
                                  "🔶   Storage :  512 SSD(M2 type SATA)>> 1TB HHD + 256SSD >>256 GB  SSD >> 1 TB HHD \n\n"
                                  "🔶   Ram :  Min 8 GB Ram if Processor is Good Else 16 GB Ram Must Prefer\n\n "
                                  "🔶   Upgradability option : 16 or 32 GB  Ram , one extra slot+ one Previous once (8+8 type/16+16)>> Total one slot(32 Gb Total)  \n\n"
                                  "🔶   Expandable storatage: One or two extra slot for SSD or HDD\n\n"
                                  "🔶   Max clock speed: must Be Greater then 4.2 GHz\n\n"
                                  "🔶   For Office Usage: Touch Screen,Fast Charging, wifi -6 or higher ,16Gb Ram, Fingerprint Scaner, Light weight,\n\n"
                                  "For Gamer : 2 Cooling Fan\nSPEED :\nMIN: 3000 \nMAX:6000 + \n  4 GB Dedicated Graphic Card( RTX 3050>> GTX 1650TI> GTX 1650) \n\n "
                                  "🔶   Addition feature must have :\n\n 1.Backlight Keyboard(RBG>> ONE COLOUR)\n2. Display quality(2k> Full Hd)\n\3. Necessary  Refresh rate : Minium :120-144Hz\n  5: See wifi And port as per Your Requirement\n"
                                  "🔶   Please Look these basic Benchmare before buying\n\n"

                                  "️  ",textScaleFactor: 0.9,


                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,height: 1.3),



                            ),


                          ),



                        ],

                        title:

                        Row(
                          children: [
                            Flexible(
                              child: Card(

                                  elevation: 0.0,
                                  // color: Colors.black,
                                  child: Text('Benchmark For these Category', style: TextStyle(
                                      color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),)

                              ),
                            ),
                          ],
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
                          ProductModel(product: snapshot.data!.docs[index],),
                    ),
                  ),



                ],
              ),
            );
          },
        );

    }


  }






  class Aboveseventyfive extends StatefulWidget {
    const Aboveseventyfive({Key? key}) : super(key: key);

    @override
    State<Aboveseventyfive> createState() => _AboveseventyfiveState();
  }

  class _AboveseventyfiveState extends State<Aboveseventyfive> {
    @override
    Widget build(BuildContext context) {

      final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
          .collection('Products').where('Price', isEqualTo: "80").snapshots();
      // final product = snapshot.data!.docs[index];



      return
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
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide( color: AppColors.Common,width: 1,)
                      ),

                      // color: Colors.black,
                      child: ExpansionTile(
                        // collapsedIconColor: Colors.tealAccent,
                        // iconColor: Colors.tealAccent,
                        children: [

                          // CustomText(text: "Benchmark For these Category",fontSize: 18,weight: FontWeight.w600,),

                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                              "🔶   Processor: \n  I7 >>I5 12 Generation>> Ryzen 7    \n\n"
                                  "🔶   Cores: 12>>10 >>6 cores >>\n\n"
                                  "🔶   Storage :  1TB SSD(M2 type SATA)>> 512 SSD \n\n"
                                  "🔶   Ram :  Min 16 GB Ram if Processor is Good Else 32 GB Ram Must Prefer\n\n "
                                  "🔶   Upgradability option : 32 or 64 GB  Ram   \n\n"
                                  "🔶   Expandable storatage: Two extra slot for SSD or HDD\n\n"
                                  "🔶   Max clock speed: must Be Greater then 5 GHz\n\n"
                                  "🔶   For Office Usage: Touch Screen,Fast Charging, wifi -6 or higher ,16Gb Ram, Fingerprint Scaner, Light weight,\n\n"
                                  "For Gamer : 4 Cooling Fan\nSPEED :\nMIN: 3000 \nMAX:6000 + \n  6 GB Dedicated Graphic Card( RTX 3050 ) \n\n "
                                  "🔶   Addition feature must have :\n\n 1.Backlight Keyboard(RBG>> ONE COLOUR)\n2. Display quality(2k> Full Hd)\n\3. Necessary  Refresh rate : Minium :144Hz\n  5: See wifi And port as per Your Requirement\n"
                                  "🔶   Please Look these basic Benchmare before buying\n\n"

                                  "️  ",textScaleFactor: 0.9,


                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,height: 1.3),



                            ),


                          ),



                        ],

                        title:

                        Row(
                          children: [
                            Flexible(
                              child: Card(

                                  elevation: 0.0,
                                  // color: Colors.black,
                                  child: Text('Benchmark For these Category', style: TextStyle(
                                      color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),)

                              ),
                            ),
                          ],
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
                          ProductModel(product: snapshot.data!.docs[index],),
                    ),
                  ),



                ],
              ),
            );
          },
        );

    }


  }



class apple extends StatefulWidget {
  const apple({Key? key}) : super(key: key);

  @override
  State<apple> createState() => _appleState();
}

class _appleState extends State<apple> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products')
        .where('Brand', isEqualTo: "Apple")
        .snapshots();
    // final product = snapshot.data!.docs[index];


    return
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
                  child: Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: AppColors.Common, width: 1,)
                    ),

                    // color: Colors.black,
                    child: ExpansionTile(
                      // collapsedIconColor: Colors.tealAccent,
                      // iconColor: Colors.tealAccent,
                      children: [

                        CustomText(text: "Apple Strength",fontSize: 18,weight: FontWeight.w600,),



                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."


                             "🔶 Impressive Performing Laptops: Apple’s laptops are powered by impressive SSDs that are so efficient, your laptop boots in seconds.\n\n"
                         "🔶 Optimized OS and Best Ecosystem: Apple’s own operating system has been their strength from the beginning and still boasting until now and Apple’s ecosystem is simply the best you can experience.\n\n"
                          "🔶Best tech-support: Apple has the most friendly agents, and more importantly they are knowledgeable and know what to do.\n\n"
                             "🔶 Sleek-looking Laptops: One edge of Apple to its competitors is that their laptops are so thin and lightweight, portability at its best.\n\n"

                             "",textScaleFactor: 0.9,


                            style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3),


                          ),


                        ),


                      ],

                      title:

                      Row(
                        children: [
                          Flexible(
                            child: Card(

                                elevation: 0.0,
                                // color: Colors.black,
                                child: Text('Benchmark For these Category',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),)

                            ),
                          ),
                        ],
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
                        ProductModel(product: snapshot.data!.docs[index],),
                  ),
                ),


              ],
            ),
          );
        },
      );
  }


}