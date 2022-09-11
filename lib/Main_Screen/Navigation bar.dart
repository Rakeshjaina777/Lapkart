
import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laptops_expert/Main_Screen/cartpage.dart';
import 'package:laptops_expert/Main_Screen/homepage.dart';
import 'package:laptops_expert/Main_Screen/laptoopCategory.dart';
import 'package:laptops_expert/Main_Screen/Shop_BY_Price.dart';
import 'package:laptops_expert/Main_Screen/profile.dart';
import 'package:laptops_expert/providers/wish_provider.dart';
import 'package:provider/provider.dart';

class NavigationBardown extends StatefulWidget {

  late int index=0  ;



  NavigationBardown({Key? key,required this.index}) : super(key: key);

  @override



  State<NavigationBardown> createState() => _NavigationBardownState();


}



class _NavigationBardownState extends State<NavigationBardown> {

  // initState() {         // this is called when the class is initialized or called for the first time
  //   super.initState();  //  this is the material super constructor for init state to link your instance initState to the global initState context
  // }


// int index=0;

  final screens =[
    Home_page(),
    Laptoop_price(),
    Laptoop_Information(),
    WishlistScreen(),
    // Profile(),

  ];




  final items = <Widget>[

    // bottomItem(title:"ghhjh",icon:Icons.favorite)
    Icon(Icons.home,size: 30,color: Colors.black87,),
    Icon(Icons.laptop_mac,size: 30,color: Colors.black87),
    Icon(Icons.store,size: 30,color: Colors.black87),
  //   Badge(
  // showBadge:  context.read<Wish>().getWishItems.isEmpty ? false : true,
  // padding: const EdgeInsets.all(2),
  // badgeColor: Colors.yellow,
  // badgeContent: Text(
  // context.watch<Wish>().getWishItems.length.toString(),
  // style: const TextStyle(
  // fontSize: 16, fontWeight: FontWeight.w600),
  // ),
  // child: const
  Icon(Icons.shopping_cart,size: 30,color: Colors.black87),
  // ),
    // Icon(Icons.person,size: 30,color: Colors.black87),
  ];




  @override




  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 15,
        width: 100,
        child: WillPopScope(
          onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Do you want to go back?'),
              actionsAlignment: MainAxisAlignment.spaceBetween,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text('No'),
                ),
              ],
            );
          },
        );
        return shouldPop!;
    },


     child: SafeArea(

        child: Scaffold(




          body:   screens[widget.index],
          bottomNavigationBar: CurvedNavigationBar(
            index :widget.index,
            backgroundColor: Colors.black12,
            color: Colors.white,
            height:50,
            items: items,

            onTap: (index)=>setState(() =>
            this.widget.index=index
            ),
          ),
        ),
     )
    ),
      );
  }
}
