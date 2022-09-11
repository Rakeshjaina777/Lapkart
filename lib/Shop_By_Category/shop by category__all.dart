




import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laptops_expert/Main_Screen/Shop_BY_Price.dart';

import '../Shortcuts_widgets/Widigit.dart';

class Engineering extends StatefulWidget {
  const Engineering({Key? key}) : super(key: key);

  @override
  State<Engineering> createState() => _EngineeringState();
}

class _EngineeringState extends State<Engineering> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products')
        .where("Category == gaming || Category == coding" )
        // .where('type', isEqualTo: "coding")
        .snapshots();
    // final product = snapshot.data!.docs[index];


    return
      StreamBuilder<QuerySnapshot>(
        stream: _prodcutsStream ,

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
                        //
                        Center(
                          child: Text("Most  Engineering Students are interested  in \n\n 1: Coding & Developing\n 2: Gaming\n 3: Video Editing & Designing \n"
                              "(For Future  Collegs Clubs & Fests )\n& 4: For Meeting & Presentation."
                            , textScaleFactor: 0.9,


                            style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3),),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."


                            "🔶   So best choice for them could be Gaming Laptop. \n\n"
                                "🔶   But major drawback is that  Gaming Laptop are heavy and have only 3-5 hours Battery life.\n\n "
                                // "🔶  So they should g  Gaming Laptops   "
                                ""
                                "", textScaleFactor: 0.9,


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









class Coder extends StatefulWidget {
  const Coder({Key? key}) : super(key: key);

  @override
  State<Coder> createState() => _CoderState();
}

class _CoderState extends State<Coder> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products')
        .where( "Category",isNotEqualTo: "gaming")
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
                        //
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text("Mostly coder and developer do  coding, C.P. ,App  Development, Web Development and Simple A.I & Maching Learning.\n So you must prefer:"
                            , textScaleFactor: 0.9,


                            style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3),),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."

                            "🔶  Intel CPU: Quad core 2GHZ or Higher (I5 10 generation or Higher) \nOR\n."
                                "🔶   AMD CPU: Quad core 3GHZ or Higher.(Ryzen 5 will be best )\n\n"
                                "🔶  Minimum 8 GB RAM recommended. \n\n"
                                "🔶   512 GB Solid State Hard Drive >> 256 SSD +1TB HDD\n\n"
                                "🔶   Monitor: 1080p or higher (we strongly recommend having more than a single screen).\n\n"

                                "🔶  Backlight Keyboard is preferred\n\n"
                                "🔶  Refresh Rate 120 or higher \n\n"
                                "🔶  Min. 4 Cores is Necessary(6 core will be best)\n\n"
                                "🔶  Prefer  Light weight Laptops as is makes Traveling during hostel easier. "
                                "🔶  If you want to do advance  A.I & Machine Learning  you can also prefer Gaming Laptop or Laptop having dedicated Grapic Card", textScaleFactor: 0.9,


                            style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.2),


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



class Schooling extends StatefulWidget {
  const Schooling({Key? key}) : super(key: key);

  @override
  State<Schooling> createState() => _SchoolingState();
}

class _SchoolingState extends State<Schooling> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products')
        .where("Category == schooling || Category == gaming")
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
                        //
                        // Padding(
                        //   padding: const EdgeInsets.all(18.0),
                        //   child: Text(
                        //     "🔶  For Coding, C.P ,App  development, Web development and simple A.I & Maching Learning So you Must Have"
                        //     , textScaleFactor: 0.9,
                        //
                        //
                        //     style: TextStyle(fontWeight: FontWeight.w500,
                        //         fontSize: 16,
                        //         height: 1.3),),
                        // ),

                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."

                            "🔶  Intel CPU: Quad core 2GHZ or Higher (I5 10 generation or Higher) \nOR\n\n."
                                "🔶   AMD CPU: Quad core 3GHZ or Higher.(Ryzen 5 will be best )\n\n"
                                "🔶   4 GB RAM minimum recommended. \n\n"
                                "🔶   512 GB Solid State Hard Drive >> 256 SSD +1TB HDD\n\n"
                                "🔶   Monitor: 1080p or higher (we strongly recommend having more than a single screen).\n\n"

                                "🔶  Refresh Rate 60 or higher \n\n"
                                "🔶  Min. 2 Cores is Necesarry(4 core will be best)\n\n"
                                "🔶 Good Display & Audio must Prefer \n\n "
                                "🔶  M.S Office Home  can be included  by you as per Your requirement  ",

                            textScaleFactor: 0.9,


                            style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.2),


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



class Gaming extends StatefulWidget {
  const Gaming({Key? key}) : super(key: key);

  @override
  State<Gaming> createState() => _GamingState();
}

class _GamingState extends State<Gaming> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore
        .instance
        .collection('Products')
        .where("Category" ,isEqualTo: "gaming")
        .snapshots();
    // final product = snapshot.data!.docs[index];


    return
      StreamBuilder<QuerySnapshot>(
        stream: _prodcutsStream,

        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot> snapshot) {
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
                        side: BorderSide(
                          color: AppColors.Common, width: 1,)
                    ),

                    // color: Colors.black,
                    child: ExpansionTile(
                      // collapsedIconColor: Colors.tealAccent,
                      // iconColor: Colors.tealAccent,
                      children: [
                        //

                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."

                            "🔶  Intel CPU: Quad core 3GHZ or Higher (I5 11 generation or Higher) \nOR\n\n."
                                "🔶   AMD CPU: Quad core 3GHZ or Higher.(Ryzen 5 will be best )\n\n"
                                "🔶   8 GB RAM minimum , 16 G.B will recomended for better Gaming Performance\n\n"
                                "🔶   512 GB Solid State Hard Drive >> 256 SSD +1TB HDD\n\n"
                                "🔶   Monitor: 1080p or higher (17 Inch will be Better Choice for Gaming only ).\n\n"
                                "🔶  Backlight Keyboard is Must\n\n"
                                "🔶  Refresh Rate 120 or higher \n\n"
                                "🔶   Min. 2 Fans  is Recommended for moderate Gaming\n\n",

                            style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 15,
                                height: 1.2),


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



class app extends StatefulWidget {
  const app({Key? key}) : super(key: key);

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products')
        .where('Pricetype', isEqualTo: "40k")
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


class Bussiness extends StatefulWidget {
  const Bussiness({Key? key}) : super(key: key);

  @override
  State<Bussiness> createState() => _BussinessState();
}

class _BussinessState extends State<Bussiness> {

  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products')
        .where("Category",isNotEqualTo: "gaming")
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
                        //


                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                                "🔶  Apple are Best for Bussiness, You can choose Mac Blindly for your Bussiness .\n\n"
                                    "🔶  Extra Security Are  Provide in Mac to You which is very important in Bussiness\n\n"
                                "🔶  Intel CPU: Quad core 3GHZ or Higher (I5 12 generation or Higher) \n\n."
                                // "🔶   AMD CPU: Quad core 3GHZ or Higher.(Ryzen 5 will be best )\n\n"
                                "🔶   8 GB RAM or Higher\n\n"
                                "🔶   512 GB Solid State Hard Drive or Higher \n\n"
                                "🔶   Monitor: 1080p or higher .\n\n"
                                "🔶  Backlight Keyboard is Must\n\n"
                                "🔶  Refresh Rate 120 or higher \n\n"
                                "🔶 Ms Office Home Must Prefer \n\n"
                                "🔶  Light Weight Laptop must Prefer  (Must be Less then 1800 gram)  ",       textScaleFactor: 0.9,


                            style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.2),


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

class CA extends StatefulWidget {
  const CA({Key? key}) : super(key: key);

  @override
  State<CA> createState() => _CAState();
}

class _CAState extends State<CA> {

  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products')
        .where("Category",isNotEqualTo: "gaming")
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
                        //


                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                            "🔶  Apple are Best for Office Work As well they Provide Extra Securitey to Your Data\n\n"
                                "🔶  Intel CPU: Quad core 3GHZ or Higher (I5 12 generation or Higher) \n\n."
                            // "🔶   AMD CPU: Quad core 3GHZ or Higher.(Ryzen 5 will be best )\n\n"
                                "🔶   8 GB RAM or Higher\n\n"
                                "🔶   512 GB Solid State Hard Drive or Higher \n\n"
                                "🔶   Monitor: 1080p or higher .\n\n"
                                "🔶  Backlight Keyboard is Must\n\n"
                                "🔶  Refresh Rate 120 or higher \n\n"
                                "🔶 Ms Office Home Must Prefer\n\n "
                                "🔶  Light Weight Laptop must Prefer  (Must be Less then 1800 gram)  ",       textScaleFactor: 0.9,


                            style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.2),


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


class Mbbs extends StatefulWidget {
  const Mbbs({Key? key}) : super(key: key);

  @override
  State<Mbbs> createState() => _MbbsState();
}

class _MbbsState extends State<Mbbs> {
  @override

  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products')
        .where("Category",isNotEqualTo: "gaming")
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
                        //


                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                            "🔶  Apple are Best for Your Study, as well for internship.,  As well they Provide Extra Securitey  to Your Data\n\n"
                                "🔶  Intel CPU: Quad core 3GHZ or Higher (I5 12 generation or Higher) \n\n."
                            // "🔶   AMD CPU: Quad core 3GHZ or Higher.(Ryzen 5 will be best )\n\n"
                                "🔶   8 GB RAM or Higher\n\n"
                                "🔶   512 GB Solid State Hard Drive or Higher \n\n"
                                "🔶   Monitor: 1080p or higher .\n\n"
                                "🔶  Backlight Keyboard is Must\n\n"
                                "🔶  Refresh Rate 120 or higher \n\n"
                                "🔶  Ms Office Home Must Prefer \n\n"
                                "🔶  Light Weight Laptop must Prefer  (Must be Less then 1800 gram)  ",       textScaleFactor: 0.9,


                            style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.2),


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

class Mba extends StatefulWidget {
  const Mba({Key? key}) : super(key: key);

  @override
  State<Mba> createState() => _MbaState();
}

class _MbaState extends State<Mba> {
  @override

  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products')
        .where("Category",isNotEqualTo: "gaming")
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
                        //


                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            // "The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                            "🔶  Apple are Best for Office Work As well they Provide Extra Securitey to Your Data\n\n"
                                "🔶  Intel CPU: Quad core 3GHZ or Higher (I5 12 generation or Higher) \n\n."
                            // "🔶   AMD CPU: Quad core 3GHZ or Higher.(Ryzen 5 will be best )\n\n"
                                "🔶   8 GB RAM or Higher\n\n"
                                "🔶   512 GB Solid State Hard Drive or Higher \n\n"
                                "🔶   Monitor: 1080p or higher .\n\n"
                                "🔶  Backlight Keyboard is Must\n\n"
                                "🔶  Refresh Rate 120 or higher \n\n"
                                "🔶 Ms Office Home Must Prefer \n\n"
                                "🔶  Light Weight Laptop must Prefer  (Must be Less then 1800 gram)   ",       textScaleFactor: 0.9,


                            style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.2),


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
