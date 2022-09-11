
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laptops_expert/Main_Screen/Shop_BY_Price.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';




class shopByBrand extends StatefulWidget {

  final String  company;

  const shopByBrand({Key? key,required this.company}) : super(key: key);

  @override
  State<shopByBrand> createState() => _shopByBrandState();
}

class _shopByBrandState extends State<shopByBrand> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
        .collection('Products').where('Brand', isEqualTo: widget.company
    ).snapshots();
    // final product = snapshot.data!.docs[index];



    return

    //   DefaultTabController(
    //     length: 10,
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
    title:Text(widget.company, style: TextStyle(fontSize: 22, color: AppColors.black,fontWeight: FontWeight.w900),),
    )
    )
    ),
          body:
    Material(
      // color: Colors.red,
      child: StreamBuilder<QuerySnapshot>(
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
              return Material(
                child: SingleChildScrollView(
                    child: SizedBox(
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
                    )
                ),
              );
            },
          ),
    ),
          ),
        );

  }


}