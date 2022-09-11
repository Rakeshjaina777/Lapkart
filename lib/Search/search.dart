//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:laptops_expert/Product_detailed_information/Product_detail_screen.dart';
// // import 'package:multi_store_app/minor_screens/product_details.dart';
//
// class SearchScreen extends StatefulWidget {
//   const SearchScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }
//
// class _SearchScreenState extends State<SearchScreen> {
//   dynamic searchInput ;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade300,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.grey.shade300,
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_ios_new,
//             color: Colors.black,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: CupertinoSearchTextField(
//           autofocus: true,
//           autocorrect: true,
//           backgroundColor: Colors.white,
//           onChanged: (value) {
//             setState(() {
//               searchInput = value;
//             });
//           },
//         ),
//       ),
//       body: searchInput == null
//           ? Center(
//         child: Container(
//           decoration: BoxDecoration(
//               color: Colors.yellow,
//               borderRadius: BorderRadius.circular(25)),
//           height: 30,
//           width: MediaQuery.of(context).size.width * 0.7,
//           child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 15),
//                   child: Icon(Icons.search, color: Colors.grey),
//                 ),
//                 Text(
//                   'Search for any thing ..',
//                   style: TextStyle(color: Colors.grey),
//                 )
//               ]),
//         ),
//       )
//           : StreamBuilder<QuerySnapshot>(
//           stream:
//           FirebaseFirestore.instance.collection('Products').snapshots(),
//           builder: (BuildContext context,
//               AsyncSnapshot<QuerySnapshot> snapshot) {
//
//             if (snapshot.hasError) {
//               return const Text('Something went wrong');
//             }
//
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Material(
//                 child: Center(
//                   child: CircularProgressIndicator(),
//                 ),
//               );
//             }
//             if (snapshot.data!.docs.isEmpty) {
//               return const Center(
//                   child: Text(
//                     'This category \n\n has no items yet !',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontSize: 26,
//                         color: Colors.blueGrey,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'Acme',
//                         letterSpacing: 1.5),
//                   ));
//             }
//
//             //
//             final result = snapshot.data!.docs.where(
//                     (e) =>
//                 e['type'.toLowerCase()]
//                     .contains(searchInput.toLowerCase())
//                     ||
//                     e['Price'.toLowerCase()]
//                         .contains(searchInput.toLowerCase())
//                         ||
//                 e['Score'.toLowerCase().toString()]
//                 .contains(searchInput.toLowerCase())
//               // ||
//               // searchInput.toString(
//               // .contains(e['discount']),
//
//
//             );
//
//             // final result1 = snapshot.data!.docs.where(
//             //       (e) => e['price'.toLowerCase()]
//             //       .contains(searchInput.toLowerCase()),
//             // );
//
//             return ListView(
//               children: result.map((e) => SearchModel(e: e)).toList(),
//             );
//           }),
//     );
//   }
// }
//
// class SearchModel extends StatelessWidget {
//   final dynamic e;
//   const SearchModel({Key? key, required this.e}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => ProductDetailsScreen(proList: e)));
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
//         child: Container(
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(12)),
//           height: 100,
//           width: double.infinity,
//           child: Padding(
//             padding: const EdgeInsets.only(right: 10),
//             child: Row(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(8),
//                   child: SizedBox(
//                       height: 100,
//                       width: 100,
//                       child: Image(
//                         image: NetworkImage(e['Images'][0]),
//                         fit: BoxFit.cover,
//                       )),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Flexible(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         e['type'],
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 1,
//                         style: const TextStyle(
//                             fontSize: 14,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w600),
//                       ),
//                       Text(
//                         e['type'],
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 2,
//                         style: const TextStyle(
//                           fontSize: 12,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laptops_expert/Product_detailed_information/Product_detail_screen.dart';
// import 'package:multi_store_app/minor_screens/product_details.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  dynamic searchInput = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: CupertinoSearchTextField(
          autofocus: true,
          autocorrect: true,
          backgroundColor: Colors.white,
          onChanged: (value) {
            setState(() {
              searchInput = value;
            });
          },
        ),
      ),
      body: searchInput == ''
          ? Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.tealAccent,
              borderRadius: BorderRadius.circular(15)),
          height: 30,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.search, color: Colors.black),
                ),
                Text(
                  'Search for any thing ..',
                  style: TextStyle(color: Colors.black),
                )
              ]),
        ),
      )
          : StreamBuilder<QuerySnapshot>(
          stream:
          FirebaseFirestore.instance.collection('Products').snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Material(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }


            //

            final result = snapshot.data!.docs.where(
                    (e) =>
                e['type'.toLowerCase()]
                    .contains(searchInput.toLowerCase())
                    ||
                    e['Price'.toLowerCase()]
                        .contains(searchInput.toLowerCase())
              // ||
              // searchInput.toString(
              // .contains(e['discount']),


            );




            // if (snapshot.hasError) {
            //   print('error');
            //
            //   return Text("hh");
            // }



            // if (result.isEmpty) {
            //   return const Center(
            //       child: Text(
            //         'This category \n\n has no items yet !',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //             fontSize: 26,
            //             color: Colors.blueGrey,
            //             fontWeight: FontWeight.bold,
            //             fontFamily: 'Acme',
            //             letterSpacing: 1.5),
            //       ));
            // }

            // final result1 = snapshot.data!.docs.where(
            //       (e) => e['price'.toLowerCase()]
            //       .contains(searchInput.toLowerCase()),
            // );

            // return




  return
    ListView(
      children: result.map((e) => SearchModel(e: e)).toList(),
    );





          }),
    );
  }
}

class SearchModel extends StatelessWidget {
  final dynamic e;
  const SearchModel({Key? key, required this.e}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // if (e.hasError) {
    //   return const Text('Something went wrong');
    // }



    // if (e.isEmpty) {
    //   return const Center(
    //       child: Text(
    //         'This category \n\n has no items yet !',
    //         textAlign: TextAlign.center,
    //         style: TextStyle(
    //             fontSize: 26,
    //             color: Colors.blueGrey,
    //             fontWeight: FontWeight.bold,
    //             fontFamily: 'Acme',
    //             letterSpacing: 1.5),
    //       ));
    // }

    return




      InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(proList: e)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          height: 100,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image(
                        image: NetworkImage(e['Images'][0]),
                        fit: BoxFit.cover,
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        e['type'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        e['type'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
