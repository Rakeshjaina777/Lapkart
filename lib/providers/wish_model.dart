    import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:laptops_expert/Product_detailed_information/Product_detail_screen.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
import 'package:laptops_expert/providers/product_class.dart';
import 'package:laptops_expert/providers/wish_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';

class WishlistModel extends StatelessWidget {
  const WishlistModel({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  // final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
  //     .collection('Products')
  //     // .where('Price', isEqualTo: "40k")
  //     .snapshots();

  // CollectionReference a= FirebaseFirestore.instance.collection('Products');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: (){
          // Navigator.push(context,
          //   MaterialPageRoute(builder: (context) =>
          //       ProductDetailsScreen(
          //           proList:
          //       )
          //   ));
          },
        child: Card(
            child: SizedBox(
          height: 120,
          child: Row(
            children: [
              SizedBox(
                height: 100,
                width: 120,
                child: Image.network(product.imagesUrl.first),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade700),
                      ),

                      Text(
                        product.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade700),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Link(
                            uri: Uri.parse(product.amazon),
                            //   uri: Uri.parse(snapshot.data!.docs[index]['link']),
                            //   uri: Uri.parse("https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg"),
                            target: LinkTarget.blank,
                    builder: (context, followLink) =>

                        GestureDetector(
                            onTap: followLink,

                            child: Container(
                              width: 120,
                              child: CustomText(
                                text: "Checkout At Amazon",
                                fontSize: 14,
                              ),


                              decoration: BoxDecoration(

                                color: Colors.transparent,
                                border: Border.all(
                                    color: Colors.teal, width: 2.55),

                                borderRadius: BorderRadius.circular(15),
                                // shape: RoundedRectangleBorder(
                                //
                                //   borderRadius: BorderRadius
                                //       .circular(10)),
                                // child: Image(
                                // image: DecorationImage(
                                //
                                //   image: NetworkImage(
                                //     snapshot.data!
                                //         .docs[index]['Images'],
                                //
                                //
                                //   ),
                                //   fit: BoxFit.fill,
                                // ),
                              ),
                            )
                        )
                ),
                          // Text(
                          //   product.amazon,
                          //   style: const TextStyle(
                          //       fontSize: 16,
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.red),
                          // ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    context.read<Wish>().removeItem(product);
                                  },
                                  icon: const Icon(Icons.delete_forever)),
                              // const SizedBox(width: 10),
                              // context.watch<Cart>().getItems.firstWhereOrNull(
                              //                 (element) =>
                              //                     element.documentId ==
                              //                     product.documentId) !=
                              //             null ||
                              //         product.qntty == 0
                              //     ? const SizedBox()
                              //     : IconButton(
                              //         onPressed: () {
                              //           context.read<Cart>().addItem(
                              //                 product.name,
                              //                 product.price,
                              //                 1,
                              //                 product.qntty,
                              //                 product.imagesUrl,
                              //                 product.documentId,
                              //                 product.suppId,
                              //               );
                              //         },
                              //         icon: const Icon(Icons.add_shopping_cart))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
