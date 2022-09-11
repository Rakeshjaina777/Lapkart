import 'package:card_swiper/card_swiper.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laptops_expert/Main_Screen/cartpage.dart';
import 'package:laptops_expert/Product_detailed_information/Product_information.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
import 'package:laptops_expert/minor_screen/Alert.dart';
import 'package:laptops_expert/providers/wish_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';




Map<dynamic,dynamic>Brande={

  "Apple":"Apple Strengths\n\n"
"🔶 Impressive Performing Laptops: Apple’s laptops are powered by impressive SSDs that are so efficient, your laptop boots in seconds.\n"
"🔶 Optimized OS and Best Ecosystem: Apple’s own operating system has been their strength from the beginning and still boasting until now and Apple’s ecosystem is simply the best you can experience.\n"
"🔶 Best tech-support: Apple has the most friendly agents, and more importantly they are knowledgeable and know what to do.\n"
"🔶 Sleek-looking Laptops: One edge of Apple to its competitors is that their laptops are so thin and lightweight, portability at its best.\n\n"
"Apple Weaknesses\n\n"
"🔶 Aging Design: Apple had become more comfortable with their old design that they never made an effort of changing or improving it.\n"
"🔶 High Priced: Apple’s laptops are quite expensive, making it a hard choice for the budget-focused shopper.\n"
"🔶 No New Innovation: As" "impressive and powerful Apple laptops are, they don’t seem to put up new innovation on their machines and rely on what is already there, in the past few years, Apple hardly introduced new tricks on their laptops.\n\n"


"Support And Warranty (29/30)\n\n"
"Apple’s customer support is one of the brand’s assets, they have amazingly friendly and knowledgeable support, providing prompt accurate answers. Apple had a year warranty for its hardware and 90 days of phone support which is extendable for three years. You just need to add 20k for MacBook Air and MacBook 12 inch, 21k for MacBook Pro 13 inch, and 30k for MacBook Pro 15 inch.\n\n"

"Your Apple laptop wasn’t cheap and getting it repaired probably won’t be cheap either, Apple’s one year warranty includes manufacturing defect and protection against accidental damage and if you extend its original warranty you will enjoy longer free tech support or you can purchase AppleCare+\n\n"


"Overall Verdict (89/100)\n\n"
"Apple scored 89/100, overall Apple is a pretty good brand that produces powerful laptops. The category that Apple tops is the warranty and support and it is quite fair, their warranty and support are superb. The dragging category is innovation and value selection, better if they can offer affordable laptops in the future and best for coding too.\n\n"
,

  "Dell":

"Dell’s Key Strengths\n\n"
"🔶 Amazing premium laptops like the XPS ultrabook that have stylish ergonomic designs and a long battery life\n"
"🔶 Durable laptops. Most of their laptops were made to last and to survive minor damage.\n"
"🔶 Good Warranty. Some Dell laptops can have their warranties extended by up to 4 years.\n\n"
"Dell’s Key Weaknesses\n\n"
"🔶 Bad value selection for mid-range laptops. Dell has amazing premium laptops and good budget laptops.  But they lack a lot of good mid-end laptops which force people to spend like a king for premium laptops or settle for a cheap laptop\n\n"


"Support And Warranty (26/30)\n\n"
"Dell has good customer support. Their staff might not be able to answer or respond as quickly as other brands but they sure are knowledgeable and they often give helpful advice to their customers. Their staff shows a good understanding of their tech and they show genuine care for their customer’s worries. I guess this explains why Dell has a lot of loyal customers who trust the judgment of the staff.\n"

"The slow response may not be a weakness but a hidden strength, since it shows that customer support is thinking carefully about the problem and they want to give the right answers to their customers (which they often do).\n\n"


"Overall Verdict (86/100)\n\n"
"Dell gets an overall score of 86/100. It’s a fairly high score thanks to Dell having good scores in most of the categories. The brand has made some good innovations lately, their customer support and warranties are solid, and they have more or less a good value selection score. What truly holds them back is their lackluster design and the lack of mid-end computers. If Dell works on these two things, they’ll become a better brand in the future.\n\n"
  



  ,
  "Asus":""
"Asus Strengths\n\n"
"Innovative Features: Asus had taken some risks in these past few years, between their screen pad and ErgoLyft hinge that gave them an edge among other brands and Asus reaped the rewards that come with it.\n\n"

"Gorgeous Design: Asus makes sure that every laptop they make has some serious design and extinguishable to each other.\n\n"

"Wide Range Category: Asus offers a wide range of laptop categories from notebooks, mid-range, to high performing gaming laptops, Asus has everything to offer.\n\n"

"Reasonable Prices: Aside from the wide range category, they offer them at reasonable prices too compared to other competing brands with the same specs, Asus laptops would come in cheaper.\n\n"




"Support And Warranty (23/30)\n\n"
"Asus tech supports are quite reliable and could provide a correct answer on your queries, Asus improved its chat functionality and gamut of new FAQs and a better search function. They also improved their call center that is available via web, social media, live chat, and phone.\n\n"

"Most Asus laptops come with a one year warranty, some laptops might have longer warranties depending on the machine you purchased. The warranty includes accidental damage and free two-way shipping and good thing that upgrading the laptop’s RAM won’t void the warranty. Just be careful in doing so, because if you damage something in the process you will shoulder the cost for repair.\n\n"


"Overall Verdict (89/100)\n\n"
"Asus garnered a score rating of 89/100, Asus is improving almost on all aspects of the brand and would like to surprise us in the future. The only thing that Asus would like to improve is their warranty and support factor, which is the lowest they got on all categories, but all in all, Asus is a reputable brand.\n\n"
      "",
  "H.P":

"H.P Key Strengths\n\n"
"Most of their products are known for their long battery life\n"
"They have tons of unique and cool features on their products\n"
"Amazing business laptops that cover multiple specializations\n"
"Reasonable prices\n"
"Have gaming laptops that look good for business \n\n"
    " Home to Home customer service\n\n"


  "H.P Key Weaknesses\n\n"
      "Mostly in offline store they give prirate and clone software in new laptop which reduce stablity of laptop due to which sometime people face problem in warrant & support\n"
  "Mostly new  Ram & SSD are change by local shopkeeper to old once, which reduce against stablity of laptop \n"
      "They lack design variety\n\n"






      "Support And Warranty (26/30)\n\n"
      "H.P is known for its fast and reliable customer support team. The company has been focusing more and more on their phone customer system in order to answer the hundreds of queries that they receive throughout the day.\n\n"

      "Most of their customer support staff are friendly and professional. They can answer most basic and intermediate queries without a problem which is really good. However their customer support team aren’t that adept at solving major issues and they’ll have to pass it down to their tech experts.\n\n"




      "Overall Verdict (92/100)\n\n"

      "H.P is an excellent laptop brand known for its reliability and reasonable prices. They have amazing value selection with products being as cheap as 30k to more premium prices reaching more than 80k.\n"

      "Their laptops lack design variability but they all look professional and reliable. Even their gaming laptops have a business feel to them making it a good choice for professionals who enjoy playing video games in their free time.\n"


      "H.P could have gotten a 95+ score but because of offline store problem, they get an 92/100,so you must prefers buy online instead of offline for better support and warranty,saftey ,& experience\n\n",

  "Acer":

  "Support And Warranty (26/30)\n\n"
"Acer is known for its fast and reliable customer support team. The company has been focusing more and more on their phone customer system in order to answer the hundreds of queries that they receive throughout the day.\n\n"

"Most of their customer support staff are friendly and professional. They can answer most basic and intermediate queries without a problem which is really good. However their customer support team aren’t that adept at solving major issues and they’ll have to pass it down to their tech experts."

"\n\nDesign (22/30)\n\n"
"Acer is a mixed bag when it comes to design. This comes from their mixed model quality since most of their lower end laptops look like plastic toys which doesn’t give them a good score on their design.\n\n"

  "Value And Selection (30/30)\n\n"
"Acer probably has one of the best selections out of all the brands. They have cheap laptops that do moderately well to high-end gaming laptops like its Acer Predator Helios 300 which are suited for hardcore gamers. Acer simply has a good value and selection of laptops.\n\n"

"Innovation (8/10)\n\n"
"Acer has been making a lot of strides in innovating their gaming laptops lately with new and convenient features. Like the Predator Triton 900 with its 2X Aeroblade 3D Fans allowing for an advanced and more efficient method of cooling down the laptop.\n\n"



"Overall Verdict (86/100)\n\n"
 " By tallying all of these scores together, Acer has a total score of 86 out of a 100. If this was a school Acer would get a letter grade of  B. It’s an amazing laptop brand with tons of value selection and innovative technologies. Sadly, the brand  still has some issues, especially from its lower-end laptops, that aren’t really that great but higher-end Laptop are awsome .\n\n",



  "Lenovo":

"Lenovo’s Key Strengths\n\n"
"Most of their products are known for their long battery life\n"
"They have tons of unique and cool features on their products\n"
"Amazing business laptops that cover multiple specializations\n"
"Reasonable prices\n"
"Have gaming laptops that look good for business\n\n"
"Lenovo’s Key Weaknesses\n\n"
"Subpar customer service\n"
"They lack design variety\n\n"


"Support And Warranty (22/30)\n\n"
"Lenovo isn’t really known for their customer support. Sometime  customer support may be  lackluster.  However, Lenovo makes up for this by having detailed databases that list FAQs and fixes that you can find online. They also have mobile apps that do the job of customer support as well.\n"

"So in summary, Lenovo has good online and mobile support and they are certainly one of the best brands that provide automated customer support. However, their actual customer staff is lacking and it does not excuse the poor service that they are giving. Because of this Lenovo gets a lower customer support score from us.\n\n"


"Overall Verdict (87/100)\n\n"
"Lenovo is an excellent laptop brand known for its reliability and reasonable prices. They have amazing value selection with products being as cheap as 30k to more premium prices reaching more than 80k.\n"

"Their laptops lack design variability but they all look professional and reliable. Even their gaming laptops have a business feel to them making it a good choice for professionals who enjoy playing video games in their free time.\n"

"Lenovo has also stepped up its game by creating revolutionary products like the ThinkPad X1 Fold which is the world’s first foldable PC. and the Lenovo Flex 5G which is the world’s first 5G PC.  These amazing products are a result of Lenovo’s innovative mindset which aims to provide value to its customers.\n"

"But this innovative mindset has led the company to automate its customer service by creating online solutions as well as apps. However, this has led to poor customer service staff who lack the skills and response times of other brands.\n"

"Lenovo could have gotten a 95+ score but because of their poor customer service, they get an 87/100,so you must prefers buy online instead of offline for better support and warranty,saftey ,& experience\n\n",









  "Realme":""



      "Realme Strengths\n\n"
      "🔶 Impressive Performing Laptops: Realme’s laptops are powered by impressive SSDs that are so efficient, your laptop boots in seconds.\n"

      "🔶 Sleek-looking Laptops: One edge of Apple to its competitors is that their laptops are so thin and lightweight, portability at its best.\n\n"
      "Realme Weaknesses\n\n"

      "🔶 High Priced: Realme’s laptops are quite expensive, making it a hard choice for the budget-focused shopper.\n"
      "🔶 No New Innovation: As" "impressive and powerful Realme laptops are, they don’t seem to put up new innovation on their machines they are same as Apple \n\n"



      "Support And Warranty (22/30)\n\n"
      "Realme  really known for their customer support. Sometime  customer support may be  lackluster because they are news in market.  However, Realme makes up for this by having detailed databases that list FAQs and fixes that you can find online. They also have mobile apps that do the job of customer support as well.\n"

      "So in summary, Realme has good online and mobile support and they are certainly one of the best brands that provide automated customer support. However, their actual customer staff is lacking and it does not excuse the poor service that they are giving. Because of this Lenovo gets a lower customer support score from us.\n\n",




};








List<dynamic>images=[



  "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXBwbGUlMjBsYXB0b3B8ZW58MHx8MHx8&w=1000&q=80",
  "https://imageio.forbes.com/specials-images/imageserve/6213c2a05ed1f7de596d35b4/Apple-Brand-M1-Model-Macbook-pro-with-colorful-light-background-/960x0.jpg?format=jpg&width=960",
  "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp-spacegray-select-202206?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1653493200207",
  "https://static.acer.com/up/Resource/Acer/Laptops/Nitro_5/rev-jan-2022-intel/20211216/Nitro_5_AGW_KSP07_640.jpg",
  // "data:image/jpeg;base64,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",
  "https://www.91-cdn.com/hub/wp-content/uploads/2021/02/hp_pavilion_13_14_15_featured.jpg",
  // "data:image/jpeg;base64,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",
  "https://m.media-amazon.com/images/I/71QXJg8uOCL._SL1500_.jpg",
  // "data:image/jpeg;base64,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",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5BK-yQpjEP0GMVEOsWLnuhFEsTw6ger8GJw&usqp=CAU",
  "https://img.yumpu.com/3465529/1/500x640/hp-pavilion-dv9200-dv9300-notebook-pc-series-specifications-.jpg",
  "https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/xps-notebooks/xps-15-9520/media-gallery/black/laptop-xps-9520-t-black-gallery-5.psd?fmt=png-alpha&pscan=auto&scl=1&hei=402&wid=676&qlt=100,0&resMode=sharp2&size=676,402",
  "https://www.cnet.com/a/img/resize/4e82f3a17554a5aff8089194237de5a3acfce3b4/2022/04/27/b796792b-5b34-4405-83eb-efc66371ee06/samsung-galaxy-book-2-pro-360-01.jpg?auto=webp&fit=crop&height=630&width=1200",
  // "  https://images.hindustantimes.com/tech/img/2021/09/14/960x540/WhatsApp_Image_2021-09-14_at_5.13.31_PM_1631623490905_1631623503195.jpeg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBbOMzw0dmt9ZHibo39OaozdciA-eQ3EYe7bk5pOm5GSEzUwucS7GfN-lkKGG9ALWyNuo&usqp=CAU",
  "https://i0.wp.com/techraman.com/wp-content/uploads/2019/06/asus-vivobook-x412-512-detailed-specs-1.jpg",
  // "data:image/jpeg;base64,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",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFWEfr3XBw3v1S6_kn7ocTV6uWJWoBhDuX93FttWdrYzHMvBir63CjGlpnTsJwoeDbiDo&usqp=CAU",
  "https://images-eu.ssl-images-amazon.com/images/I/51I%2BGReh3AL.jpg",
  "https://images.hothardware.com/contentimages/article/3169/content/specs-asus-vivobook-13-oled-t3300.png",
  "https://www.91-cdn.com/hub/wp-content/uploads/2021/02/hp_pavilion_13_14_15_featured.jpg",



];

class ProductDetailsScreen extends StatefulWidget {
  final dynamic proList;
  const ProductDetailsScreen({Key? key,required this.proList })
      : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  // final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
  //     .collection('Products').snapshots();

  bool  view_more = false;
  bool passwordVisible =false;
  bool question = true;
  bool information= false;
  // late final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
  //     .collection('products')
  //     .where('maincateg', isEqualTo: widget.proList['maincateg'])
  //     .where('subcateg', isEqualTo: widget.proList['subcateg'])
  //     .snapshots();

  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
  GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {



    // late List<dynamic> imagesList = widget.proList['proimages'];
    //
    // var onSale = widget.proList['discount'];
    // var existingItemCart = context.read<Cart>().getItems.firstWhereOrNull(
    //         (element) => element.documentId == widget.proList['proid']);
    return Material(
      child: SafeArea(
        child: ScaffoldMessenger(
          key: _scaffoldKey,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     // MaterialPageRoute(
                      //         // builder: (context) => FullScreenView(
                      //         //   imagesList: imagesList,
                      //         // ))
                      // );
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.45,
                          child: Swiper(

                            pagination:  const SwiperPagination(
                                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                                builder: DotSwiperPaginationBuilder(
                                    color: Colors.white,
                                    activeColor: Colors.black,
                                    size: 4.0,
                                    activeSize: 10.0)),
                            itemBuilder: (context, index) {
                              return Image(
                                image: NetworkImage(
                                    // images[index]
                                    widget.proList['Images'][index]
                             ),
                                    fit: BoxFit.fill,
                              );
                            },
                            itemCount:  widget.proList['Images'].length,
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
                        Positioned(
                            right: 15,
                            top: 20,
                            child: CircleAvatar(
                              backgroundColor: AppColors.Common,
                              child:  IconButton(

                                icon:Icon(
                                    Icons.share,
                                    color:Colors.black
                                ),
                                onPressed: ()async{
                                  await Share.share( " LAPTOP EXPERT \n\nSolve All You  Douth regarding Laptop\n"
                                      "1.Which Laptop Specification is  Best For You Domain\n"
                                      "2. How to Get Maximum Discount on Purchasing Laptop\n"
                                      "3. Learn About Student Offer to Get instant 15 % Discount on Laptop\n"
                                      "4. Learn About All Pro & Con of Each Laptoop \n"
                                      "5. ONLINE Vs OFFLINE From where to Purchase & Many More\n\n"

                                  // "4. How to Get Maximum Discount while Purchasing Laptop \n"
                                  // "5. Learn About Student Offer to Get instant 15 % Discount on Laptop\n"
                                      "Downolads  Our Laptop Helping  App From PlayStore\n\n "
                                      "  'https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg\n\n'  ' https://www.youtube.com/'");
                                },

                              )

                            )),


                        Positioned(
                            right: 12,
                            top: 80,
                            child: CircleAvatar(
                              backgroundColor: AppColors.Common,
                              child:  IconButton(
                                  onPressed: () {
                                    var existingItemWishlist = context
                                        .read<Wish>()
                                        .getWishItems
                                        .firstWhereOrNull((product) =>
                                    product.documentId ==
                                        widget.proList['Proid']);
                                    existingItemWishlist != null
                                        ? context
                                        .read<Wish>()
                                        .removeThis(widget.proList['Proid'])
                                        : context.read<Wish>().addWishItem(
                                      widget.proList['Category'],
                                      // onSale != 0
                                      //     ? ((1 -
                                      //     (widget.product[
                                      //     'discount'] /
                                      //         100)) *
                                      //     widget.product['price'])
                                      //     :
                                      widget.proList['Price'],
                                      1,
                                      widget.proList['Amazon'],
                                      widget.proList['Images'],
                                      widget.proList['Proid'],
                                      // widget.product['sid'],
                                    );
                                    return print("jjjjjjjjjjj");
                                  },
                                  icon: context
                                      .watch<Wish>()
                                      .getWishItems
                                      .firstWhereOrNull((product) =>
                                  product.documentId ==
                                      widget.proList['Proid']) !=
                                      null
                                      ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 26,
                                  )
                                      : const Icon(
                                    Icons.favorite_outline,
                                    color: Colors.black,
                                    size: 26,
                                  )),
                            )),



                        //
                        // Positioned(
                        //     right: 12,
                        //     top: 265,
                        //     child:   InkWell(
                        //       onTap: (){
                        //         Navigator.push(context,MaterialPageRoute(builder: (context)=>
                        //           ProductInformation(products: null, )
                        //         ),
                        //         );
                        //       },
                        //       child: Card(
                        //         color: AppColors.Common,
                        //         elevation: 20,
                        //
                        //
                        //
                        //         shape: RoundedRectangleBorder(
                        //
                        //             borderRadius: BorderRadius.circular(5),
                        //
                        //             side: BorderSide( color: AppColors.Common,width: 1,)
                        //
                        //         ),
                        //
                        //         // child: TextButton(
                        //         //
                        //         //   style: TextButton.styleFrom(
                        //         //     textStyle: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w900),
                        //         //   ),
                        //         //   onPressed: null,
                        //          child: Row(
                        //             children: [
                        //            Icon(Icons.info),
                        //
                        //               Text(' Detailed',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w900),),
                        //
                        //             ],
                        //           ),
                        //         ),
                        //     ),
                        //     ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Spacer(flex:1),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 1),
                          child: Text(

                            widget.proList['Proname'][0].replaceAll("\\n","\n",).replaceAll("  ","",),
                            // ' Acer Nitro 5\n Ryzen hexa core 5600H\n 8 GB Ram',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 20,
                                height: 1.4,
                                fontWeight: FontWeight.w300),


                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 1),
                          child: Text(

                            widget.proList['Proname'][1].replaceAll("\\n","\n",).replaceAll("  ","",),
                            // ' Acer Nitro 5\n Ryzen hexa core 5600H\n 8 GB Ram',
                            style: GoogleFonts.poppins(
                                color: Colors.black54,
                                fontSize: 16,
                                height: 1.2,
                                fontWeight: FontWeight.w300),


                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 1),
                          child: Text(

                            widget.proList['Proname'][2].replaceAll("\\n","\n",).replaceAll("  ","",),
                            // ' Acer Nitro 5\n Ryzen hexa core 5600H\n 8 GB Ram',
                            style: GoogleFonts.poppins(
                                color: Colors.black54,
                                fontSize: 16,
                                height: 1.2,
                                fontWeight: FontWeight.w300),


                          ),
                        ),

                        // Row(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 1),
                        //       child: Text(
                        //
                        //         "${widget.proList['Proname'][1]} &"
                        //             .replaceAll("\\n","\n",).replaceAll("  ","",),
                        //         // ' Acer Nitro 5\n Ryzen hexa core 5600H\n 8 GB Ram',
                        //         style: GoogleFonts.poppins(
                        //             color: Colors.black,
                        //             fontSize: 16,
                        //             height: 1.4,
                        //             fontWeight: FontWeight.w400),
                        //       ),
                        //     ),
                        //
                        //     // Text(
                        //     //
                        //     //   widget.proList['Proname'][2].replaceAll("\\n","\n",).replaceAll("  ","",),
                        //     //   // ' Acer Nitro 5\n Ryzen hexa core 5600H\n 8 GB Ram',
                        //     //   style: GoogleFonts.poppins(
                        //     //       color: Colors.black,
                        //     //       fontSize: 16,
                        //     //       fontWeight: FontWeight.w400),
                        //     // ),
                        //
                        //   ],
                        // ),


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
                                  'Checkout Updated Price On : ',
                                  style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),


                                // Text(
                                //   'price',
                                //   style:
                                //        const TextStyle(
                                //       color: Colors.grey,
                                //       fontSize: 8,
                                //       decoration:
                                //       TextDecoration.lineThrough,
                                //       fontWeight: FontWeight.w600)
                                //       // : const TextStyle(
                                //       // color: Colors.red,
                                //       // fontSize: 18,
                                //       // fontWeight: FontWeight.w600),
                                // ),
                                // const SizedBox(
                                //   width: 6,
                                // ),
                                // // onSale != 0
                                // //     ? Text(
                                // //   ((1 -
                                // //       (widget.proList[
                                // //       'discount'] /
                                // //           100)) *
                                //       Text('price',
                                //   style: const TextStyle(
                                //       color: Colors.red,
                                //       fontSize: 8,
                                //       fontWeight: FontWeight.w600),
                                // )
                                    // : const Text(''),
                              ],
                            ),
                            // IconButton(
                            //     onPressed: () {
                            //       var existingItemWishlist = context
                            //           .read<Wish>()
                            //           .getWishItems
                            //           .firstWhereOrNull((product) =>
                            //       product.documentId ==
                            //           widget.proList['proid']);
                            //       existingItemWishlist != null
                            //           ? context
                            //           .read<Wish>()
                            //           .removeThis(widget.proList['proid'])
                            //           : context.read<Wish>().addWishItem(
                            //         widget.proList['proname'],
                            //         onSale != 0
                            //             ? ((1 -
                            //             (widget.proList[
                            //             'discount'] /
                            //                 100)) *
                            //             widget.proList['price'])
                            //             : widget.proList['price'],
                            //         1,
                            //         widget.proList['instock'],
                            //         widget.proList['proimages'],
                            //         widget.proList['proid'],
                            //         widget.proList['sid'],
                            //       );
                            //     },
                            //     icon: context
                            //         .watch<Wish>()
                            //         .getWishItems
                            //         .firstWhereOrNull((product) =>
                            //     product.documentId ==
                            //         widget.proList['proid']) !=
                            //         null
                            //         ? const Icon(
                            //       Icons.favorite,
                            //       color: Colors.red,
                            //       size: 30,
                            //     )
                            //         : const Icon(
                            //       Icons.favorite_outline,
                            //       color: Colors.red,
                            //       size: 30,
                            //     )),
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
                                  CustomText(text: " Amazon ➡️",fontSize: 16,weight: FontWeight.w600,),
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
                              shadowColor: Colors.white,
                              surfaceTintColor:Colors.white ,
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
                                      child: Image.asset("Assests/images/bags/flipkart.png")),

                                  SizedBox(width: 15,),
                                  CustomText(text: " Flipkart ➡️",fontSize: 16,weight: FontWeight.w600,),
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
                              shadowColor: Colors.white,
                              surfaceTintColor:Colors.white ,
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
                                  GestureDetector(
                                      onTap: (){
                                        // Navigator.pushNamed(
                                        //
                                        //     context,
                                        //

                                        },


                                      child: Center(child: CustomText(text: "       For Student & Cooperative Offer  ➡️",fontSize: 14,weight: FontWeight.w600,))),
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
                          // "🔶  ️  Amd hexa core -Ryzen 5600 processor\n"
                          //
                          // "🔶  ️ 8 Gb DDr4 Ram\n"
                          //
                          //     "🔶  ️ 512 Sata SSD\n"
                          //     // "(Better then 256 SSd + 1tb hhd)\n"
                          //     "🔶  ️ Genunine Window 11\n"
                          //     "🔶  ️ 60000mah Battery\n"
                          //     // "(Battery upto 5-6 hour on simple usage &2-3 on extremely 8usage)\n"
                          // "🔶  ️ 8 core & 12 thread\n"
                          //     "🔶  ️ RBG backlight keyboard\n"
                          //     // "(Excellent choice for coder & video editior)\n"
                          //     "🔶  ️ 4 GB Dedicated Graphic card of 3060x\n"
                          //     "🔶  ️ Dual Fans with Quad Exhaust Port\n"
                          //     "🔶  ️ Acer Nitro sense & Cooler Sense\n"
                          //    🔶  ️Killer Ethernet E2600 \n
                          //     🔶️  Pre installed window home \n
                          //
                          //     🔶️ Too many port & connectivity\n
                          //      🔶️ Cinebench Score for - 2167/8500\n
                          //     🔶️ overall Score 65/100\n
                          //     🔶️ Too many port & connectivity\n,

                       widget.proList['Itemdesc'].replaceAll("\\n","\n🔶 ",).replaceAll("  ","",)
                       // snapshot.data!.docs[index]['specification'].replaceAll("\\n","\n"),


                       // overflow: TextOverflow.ellipsis,
                          // maxLines: 10,
                          // textAlign: TextAlign.left,
                          // textDirection: TextDirection.ltr,

                          ,textScaleFactor: 1.1,
                          style: GoogleFonts.poppins(
                            // letterSpacing: 1.2,

                            height: 1.8,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),


                        // InkWell(
                        //   onTap: () {
                        //     setState(() {
                        //       passwordVisible = !passwordVisible;
                        //       information = !information;
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //
                        //     // color:
                        //     child: Align(
                        //         alignment: Alignment.topRight,
                        //         child:
                        //
                        //         information?SizedBox(height: 5,):
                        //         CustomText(text: "View More...",weight: FontWeight.w700,color: Colors.black,),
                        //     ),
                        //   ),
                        // ),

                        // information?
                        // RichText(
                        //
                        //
                        //
                        //
                        //   textDirection: TextDirection.ltr,
                        //
                        //   textScaleFactor: 1.1,
                        //   text: TextSpan(
                        //     text: "🔶️  Amd hexa core -Ryzen 5 processor\n",
                        //     style: TextStyle(
                        //       height: 1.5,
                        //         fontSize: 14,
                        //         fontWeight: FontWeight.w400,
                        //         color: Colors.black),
                        //
                        //
                        //     children: const <TextSpan>[
                        //       TextSpan(
                        //           text: "(Please check core Properly before buying)\n", style: TextStyle(fontWeight: FontWeight.w400,color: Colors.teal,)),
                        //
                        //       TextSpan(
                        //           text:
                        //               "🔶️ 512 SSD\n"),
                        //
                        //       TextSpan(
                        //           text: "(Better then 256 SSd + 1tb hhd)\n", style: TextStyle(fontWeight: FontWeight.w400,color: Colors.teal,)),
                        //
                        //       TextSpan(
                        //           text:
                        //               "🔶️ 60000mah Battery\n"),
                        //
                        //       TextSpan(
                        //           text:        "(Battery upto 5-6 hour on simple usage &2-3 on extremely 8usage)\n"
                        //           , style: TextStyle(fontWeight: FontWeight.w400,color: Colors.teal)),
                        //
                        //       TextSpan(
                        //           text:
                        //               "🔶️ RBG backlight keyboard\n"),
                        //
                        //
                        //
                        //       TextSpan(
                        //           text:         "(Excellent choice for coder & video editior)\n"
                        //
                        //           , style: TextStyle(fontWeight: FontWeight.w400,color: Colors.teal,)),
                        //       TextSpan(
                        //           text:
                        //               "🔶️ Pre installed window home \n"),
                        //
                        //       TextSpan(
                        //           text:          "(Very useful for Presentation)\n"
                        //
                        //           , style: TextStyle(fontWeight: FontWeight.w400,color: Colors.teal,)),
                        //
                        //
                        //       TextSpan(
                        //           text:
                        //           "🔶️ 4 GB Dedicated Graphic card of 3060x\n"
                        //       ),
                        //
                        //       TextSpan(
                        //           text:          "(Order of Graphic Card 1256>3060>1650 Ti)\n"
                        //
                        //           , style: TextStyle(fontWeight: FontWeight.w400,color: Colors.teal,)),
                        //
                        //       TextSpan(
                        //           text:
                        //           "🔶️ cinnebench score for 2167/8500\n"),
                        //
                        //       TextSpan(
                        //           text:          "(Very useful for Multitasking work)\n"
                        //
                        //           , style: TextStyle(fontWeight: FontWeight.w400,color: Colors.teal,)),
                        //       TextSpan(
                        //           text:
                        //           "🔶️ Pre installed window home \n"),
                        //
                        //       TextSpan(
                        //           text:          "(Very useful for Presentation)\n"
                        //
                        //           , style: TextStyle(fontWeight: FontWeight.w400,color: Colors.teal,)),
                        //
                        //       TextSpan(
                        //           text:  "🔶️ Too many port & connectivity\n"
                        //               "🔶️ Cinebench Score for - 2167/8500\n"
                        //               "🔶️  Greekbench Score 5426/9000\n"
                        //               "🔶️ overall Score 65/100\n"
                        //               "🔶️ Too many port & connectivity\n"),
                        //
                        //     ],
                        //
                        //   ),
                        // ):SizedBox(height: 5,),
                        // InkWell(
                        //   onTap: () {
                        //     setState(() {
                        //       passwordVisible = !passwordVisible;
                        //       information = !information;
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //
                        //     // color:
                        //     child: Align(
                        //       alignment: Alignment.topRight,
                        //       child:
                        //
                        //       information?
                        //       CustomText(text: "View Less...",weight: FontWeight.w700,color: Colors.black,):SizedBox(height: 5,),
                        //     ),
                        //   ),
                        // ),



                        const ProDetailsHeader(
                          label: '  Our Conclusion  ',
                        ),




                        Stack(
                          children: [
                          Card(
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide( color: Colors.white54,width: 1,)
                            ),

                            // color: Colors.black,
                            child: ExpansionTile(
                              // collapsedIconColor: AppColors.Common,
                              // iconColor: AppColors.Common,
                              children: [
                                Container(

                                  // height: 220,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(widget.proList['Benchmark'][0].replaceAll("\\n","\n",).replaceAll("  ","",)  ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),



                                    ),


                                  )
                                ),

                                // CustomText(text: "Some Important Score  ",weight: FontWeight.w500,fontSize: 18,),


                               // Text(widget.proList['Benchmark'][1].replaceAll("\\n","\n",).replaceAll("  ","",)),



                               //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                               //  "  ⚽ Compact and lightweight.\n"
                               // "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                               //  "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                               //  "  ⚽ Large and responsive touchpad\n"),
                               //
                               //  CustomText(text: "Cons ",weight: FontWeight.w700,fontSize: 18,),
                               //
                               //
                               //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                               //      "  ⚽ Compact and lightweight.\n"
                               //      "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                               //      "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                               //      "  ⚽ Large and responsive touchpad")



                              ],

                              title:

                              Card(

                                  elevation: 0.0,
                                  // color: Colors.black,
                                  child: Row(
                                    children: [


                                      SizedBox(
                                        width: 55,
                                        height: 50,
                                        child: Card(
                                          color: Colors.yellow,
                                          child: CustomText(text:widget.proList['BenchmarkScore'][0],weight: FontWeight.w600,fontSize: 24,),
                                        ),
                                      ),

                                      Row(
                                        children: [
                                          Text('  Pricing', style: GoogleFonts.poppins(
                                              color: Colors.black, fontSize: 17),),

                                          // IconButton(onPressed: (){
                                          //   setState(() {
                                          //     question = !question;
                                          //   });
                                          // }, icon:  Icon(Icons.question_mark_rounded))
                                        ],
                                      ),

                                    ],
                                  )

                              ),


                            ),
                          ),

                    ]

                        ),


                        Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide( color: Colors.white54,width: 1,)
                          ),

                          // color: Colors.black,
                          child: ExpansionTile(
                            // collapsedIconColor: AppColors.Common,
                            // iconColor: AppColors.Common,
                            children: [
                              Container(

                                  // height: 220,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(widget.proList['Benchmark'][2].replaceAll("\\n","\n",).replaceAll("  ","",)  ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),



                                    ),


                                  )
                              ),

                              // CustomText(text: "Some Important Score  ",weight: FontWeight.w500,fontSize: 18,),
                              //
                              //
                              // Text(widget.proList['itemhighlighed'].replaceAll("\\n","\n",).replaceAll("  ","",).replaceAll(" '" , " " ),),



                              //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                              //  "  ⚽ Compact and lightweight.\n"
                              // "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                              //  "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                              //  "  ⚽ Large and responsive touchpad\n"),
                              //
                              //  CustomText(text: "Cons ",weight: FontWeight.w700,fontSize: 18,),
                              //
                              //
                              //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                              //      "  ⚽ Compact and lightweight.\n"
                              //      "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                              //      "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                              //      "  ⚽ Large and responsive touchpad")



                            ],

                            title:

                            Card(

                                elevation: 0.0,
                                // color: Colors.black,
                                child: Row(
                                  children: [


                                    SizedBox(
                                      width: 55,
                                      height: 50,
                                      child: Card(
                                        color: Colors.green,
                                        child: CustomText(text:widget.proList['BenchmarkScore'][1].replaceAll("\\n","\n",).replaceAll("  ","",),weight: FontWeight.w600,fontSize: 24,),
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Text('  Pros ', style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 17),),

                                        // IconButton(onPressed: (){
                                        //   setState(() {
                                        //     question = !question;
                                        //   });
                                        // }, icon:  Icon(Icons.question_mark_rounded))
                                      ],
                                    ),

                                  ],
                                )

                            ),


                          ),
                        ),

                        Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide( color: Colors.white54,width: 1,)
                          ),

                          // color: Colors.black,
                          child: ExpansionTile(
                            // collapsedIconColor: AppColors.Common,
                            // iconColor: AppColors.Common,
                            children: [
                              Container(

                                  // height: 220,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(widget.proList['Benchmark'][3].replaceAll("\\n","\n",).replaceAll("  ","",)  ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,height: 1.6),



                                    ),


                                  )
                              ),

                              // CustomText(text: "Some Important Score  ",weight: FontWeight.w500,fontSize: 18,),
                              //
                              //
                              // Text(widget.proList['itemhighlighed'].replaceAll("\\n","\n",).replaceAll("  ","",).replaceAll(" '" , " " ),),



                              //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                              //  "  ⚽ Compact and lightweight.\n"
                              // "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                              //  "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                              //  "  ⚽ Large and responsive touchpad\n"),
                              //
                              //  CustomText(text: "Cons ",weight: FontWeight.w700,fontSize: 18,),
                              //
                              //
                              //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                              //      "  ⚽ Compact and lightweight.\n"
                              //      "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                              //      "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                              //      "  ⚽ Large and responsive touchpad")



                            ],

                            title:

                            Card(

                                elevation: 0.0,
                                // color: Colors.black,
                                child: Row(
                                  children: [


                                    SizedBox(
                                      width: 55,
                                      height: 50,
                                      child: Card(
                                        color: Colors.yellow,
                                        child: CustomText(text:widget.proList['BenchmarkScore'][2].replaceAll("\\n","\n",).replaceAll("  ","",),weight: FontWeight.w600,fontSize: 24,),
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Text('  Cons', style: TextStyle(
                                            color: Colors.black, fontSize: 17),),

                                        // IconButton(onPressed: (){
                                        //   setState(() {
                                        //     question = !question;
                                        //   });
                                        // }, icon:  Icon(Icons.question_mark_rounded))
                                      ],
                                    ),

                                  ],
                                )

                            ),


                          ),
                        ),


                        InkWell(
                          onTap: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                              view_more = !view_more;
                            });
                          },

                          child: Container(

                            // color:
                            child: Align(
                                alignment: Alignment.topRight,
                                child:

                                view_more?SizedBox(height: 5,):
                                CustomText(text: "View More...",weight: FontWeight.w700,)),
                          ),
                        ),
                        view_more  ?


                        Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide( color: Colors.white54,width: 1,)
                          ),

                          // color: Colors.black,
                          child: ExpansionTile(
                            // collapsedIconColor: AppColors.Common,
                            // iconColor: AppColors.Common,
                            children: [
                              Container(

                                  // height: 220,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(widget.proList['Benchmark'][4].replaceAll("\\n","\n",).replaceAll("  ","",) ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,height: 1.6),



                                    ),


                                  )
                              ),

                              // CustomText(text: "Some Important Score  ",weight: FontWeight.w500,fontSize: 18,),
                              //
                              //
                              // Text(widget.proList['itemhighlighed'].replaceAll("\\n","\n",).replaceAll("  ","",).replaceAll(" '" , " " ),),



                              //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                              //  "  ⚽ Compact and lightweight.\n"
                              // "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                              //  "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                              //  "  ⚽ Large and responsive touchpad\n"),
                              //
                              //  CustomText(text: "Cons ",weight: FontWeight.w700,fontSize: 18,),
                              //
                              //
                              //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                              //      "  ⚽ Compact and lightweight.\n"
                              //      "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                              //      "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                              //      "  ⚽ Large and responsive touchpad")



                            ],

                            title:

                            Card(

                                elevation: 0.0,
                                // color: Colors.black,
                                child: Row(
                                  children: [


                                    SizedBox(
                                      width: 55,
                                      height: 50,
                                      child: Card(
                                        color: Colors.green,
                                        child: CustomText(text:widget.proList['BenchmarkScore'][3].replaceAll("\\n","\n",).replaceAll("  ","",),weight: FontWeight.w600,fontSize: 24,),
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Text('  For Coder & Dev.', style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 17),),

                                        // IconButton(onPressed: (){
                                        //   setState(() {
                                        //     question = !question;
                                        //   });
                                        // }, icon:  Icon(Icons.question_mark_rounded))
                                      ],
                                    ),

                                  ],
                                )

                            ),


                          ),
                        ): SizedBox(height: 10,),

                        view_more  ?      Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide( color: Colors.white54,width: 1,)
                          ),

                          // color: Colors.black,
                          child: ExpansionTile(
                            // collapsedIconColor: AppColors.Common,
                            // iconColor: AppColors.Common,
                            children: [
                              Container(

                                  // height: 220,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(widget.proList['Benchmark'][5].replaceAll("\\n","\n",).replaceAll("  ","",).replaceAll(" '" , " " )  ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,height: 1.6),



                                    ),


                                  )
                              ),

                              // CustomText(text: "Some Important Score  ",weight: FontWeight.w500,fontSize: 18,),
                              //
                              //
                              // Text(widget.proList['itemhighlighed'].replaceAll("\\n","\n",).replaceAll("  ","",).replaceAll(" '" , " " ),),



                              //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                              //  "  ⚽ Compact and lightweight.\n"
                              // "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                              //  "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                              //  "  ⚽ Large and responsive touchpad\n"),
                              //
                              //  CustomText(text: "Cons ",weight: FontWeight.w700,fontSize: 18,),
                              //
                              //
                              //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                              //      "  ⚽ Compact and lightweight.\n"
                              //      "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                              //      "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                              //      "  ⚽ Large and responsive touchpad")



                            ],

                            title:

                            Card(

                                elevation: 0.0,
                                // color: Colors.black,
                                child: Row(
                                  children: [


                                    SizedBox(
                                      width: 55,
                                      height: 50,
                                      child: Card(
                                        color: Colors.yellow,
                                        child: CustomText(text:widget.proList['BenchmarkScore'][4].replaceAll("\\n","\n",).replaceAll("  ","",).replaceAll(" '" , " " ),weight: FontWeight.w600,fontSize: 24,),
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Text(' For Office / Business', style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 14),),

                                        // IconButton(onPressed: (){
                                        //   setState(() {
                                        //     question = !question;
                                        //   });
                                        // }, icon:  Icon(Icons.question_mark_rounded))
                                      ],
                                    ),

                                  ],
                                )

                            ),


                          ),
                        ): SizedBox(height: 10,),

                        view_more  ?

                        Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide( color: Colors.white54,width: 1,)
                          ),

                          // color: Colors.black,
                          child: ExpansionTile(
                            // collapsedIconColor: AppColors.Common,
                            // iconColor: AppColors.Common,
                            children: [
                              Container(

                                  // height: 220,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(widget.proList['Benchmark'][6].replaceAll("\\n","\n",).replaceAll("  ","",).replaceAll(" '" , " " )  ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,height: 1.6),



                                    ),


                                  )
                              ),

                              // CustomText(text: "Some Important Score  ",weight: FontWeight.w500,fontSize: 18,),
                              //
                              //
                              // Text(widget.proList['itemhighlighed'].replaceAll("\\n","\n",).replaceAll("  ","",).replaceAll(" '" , " " ),),



                              //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                              //  "  ⚽ Compact and lightweight.\n"
                              // "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                              //  "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                              //  "  ⚽ Large and responsive touchpad\n"),
                              //
                              //  CustomText(text: "Cons ",weight: FontWeight.w700,fontSize: 18,),
                              //
                              //
                              //  Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                              //      "  ⚽ Compact and lightweight.\n"
                              //      "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                              //      "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                              //      "  ⚽ Large and responsive touchpad")



                            ],

                            title:

                            Card(

                                elevation: 0.0,
                                // color: Colors.black,
                                child: Row(
                                  children: [


                                    SizedBox(
                                      width: 55,
                                      height: 50,
                                      child: Card(
                                        color: Colors.green,
                                        child: CustomText(text:widget.proList['BenchmarkScore'][5].replaceAll("\\n","\n",).replaceAll("  ","",).replaceAll(" '" , " " ),weight: FontWeight.w600,fontSize: 24,),
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Text('  BBA/B.Comm/MBA', style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 14),),

                                        // IconButton(onPressed: (){
                                        //   setState(() {
                                        //     question = !question;
                                        //   });
                                        // }, icon:  Icon(Icons.question_mark_rounded))
                                      ],
                                    ),

                                  ],
                                )

                            ),


                          ),
                        )
                            : SizedBox(height: 10,),

                        // view_more  ?  Card(
                        //   elevation: 8.0,
                        //   shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(10),
                        //       side: BorderSide( color: Colors.white54,width: 1,)
                        //   ),
                        //
                        //   // color: Colors.black,
                        //   child: ExpansionTile(
                        //     // collapsedIconColor: AppColors.Common,
                        //     // iconColor: AppColors.Common,
                        //     children: [
                        //       Container(
                        //
                        //           height: 220,
                        //           // color: Colors.red,
                        //           child: Padding(
                        //             padding: const EdgeInsets.all(18.0),
                        //             child: Text("The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                        //               ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),
                        //
                        //
                        //
                        //             ),
                        //
                        //
                        //           )
                        //       ),
                        //
                        //       CustomText(text: "Pro  ",weight: FontWeight.w700,fontSize: 18,),
                        //
                        //
                        //       Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                        //           "  ⚽ Compact and lightweight.\n"
                        //           "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                        //           "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                        //           "  ⚽ Large and responsive touchpad\n"),
                        //
                        //       CustomText(text: "Cons ",weight: FontWeight.w700,fontSize: 18,),
                        //
                        //
                        //       Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                        //           "  ⚽ Compact and lightweight.\n"
                        //           "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                        //           "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                        //           "  ⚽ Large and responsive touchpad")
                        //
                        //
                        //
                        //     ],
                        //
                        //     title:
                        //
                        //     Card(
                        //
                        //         elevation: 0.0,
                        //         // color: Colors.black,
                        //         child: Row(
                        //           children: [
                        //
                        //
                        //             SizedBox(
                        //               width: 55,
                        //               height: 50,
                        //               child: Card(
                        //                 color: Colors.yellow,
                        //                 child: CustomText(text:" 8.2",weight: FontWeight.w900,fontSize: 24,),
                        //               ),
                        //             ),
                        //
                        //             Text('  For Schooling', style: TextStyle(
                        //                 color: Colors.black, fontSize: 18),),
                        //           ],
                        //         )
                        //
                        //     ),
                        //
                        //   ),
                        // ): SizedBox(height: 5,),
                        //
                        // view_more  ?  Card(
                        //   elevation: 8.0,
                        //   shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(10),
                        //       side: BorderSide( color: Colors.white54,width: 1,)
                        //   ),
                        //
                        //   // color: Colors.black,
                        //   child: ExpansionTile(
                        //     // collapsedIconColor: AppColors.Common,
                        //     // iconColor: AppColors.Common,
                        //     children: [
                        //       Container(
                        //
                        //           height: 220,
                        //           // color: Colors.red,
                        //           child: Padding(
                        //             padding: const EdgeInsets.all(18.0),
                        //             child: Text("The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                        //               ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),
                        //
                        //
                        //
                        //             ),
                        //
                        //
                        //           )
                        //       ),
                        //
                        //       CustomText(text: "Pro  ",weight: FontWeight.w700,fontSize: 18,),
                        //
                        //
                        //       Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                        //           "  ⚽ Compact and lightweight.\n"
                        //           "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                        //           "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                        //           "  ⚽ Large and responsive touchpad\n"),
                        //
                        //       CustomText(text: "Cons ",weight: FontWeight.w700,fontSize: 18,),
                        //
                        //
                        //       Text("  ⚽ Exceptional build quality with a full aluminum body.\n"
                        //           "  ⚽ Compact and lightweight.\n"
                        //           "   ⚽ Battery can last through a full 8-hour day for light productivity.\n"
                        //           "  ⚽ Keyboard feels good to type on and is easy to adapt to.\n"
                        //           "  ⚽ Large and responsive touchpad")
                        //
                        //
                        //
                        //     ],
                        //
                        //     title:
                        //
                        //     Card(
                        //
                        //         elevation: 0.0,
                        //         // color: Colors.black,
                        //         child: Row(
                        //           children: [
                        //
                        //
                        //             SizedBox(
                        //               width: 55,
                        //               height: 50,
                        //               child: Card(
                        //                 color: Colors.yellow,
                        //                 child: CustomText(text:" 8.2",weight: FontWeight.w900,fontSize: 24,),
                        //               ),
                        //             ),
                        //
                        //             Text('  For Schooling', style: TextStyle(
                        //                 color: Colors.black, fontSize: 18),),
                        //           ],
                        //         )
                        //
                        //     ),
                        //
                        //   ),
                        // ): SizedBox(height: 5,),

                        InkWell(
                          onTap: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                              view_more = !view_more;
                            });
                          },

                          child: Container(

                            // color:
                            child: Align(
                                alignment: Alignment.topRight,
                                child:

                                view_more?
                                CustomText(text: "View Less...",weight: FontWeight.w700,):SizedBox(height: 5,)),
                          ),
                        ),
                        const ProDetailsHeader(
                          label: '   About Brand  ',
                        ),

                        Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide( color: Colors.white54,width: 1,)
                          ),

                          // color: Colors.black,
                          child: ExpansionTile(
                            // collapsedIconColor: AppColors.Common,
                            // iconColor: AppColors.Common,
                            children: [
                              Container(

                                  // height: 220,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),

                                    child: Text(
                                      Brande[widget.proList['Brand']]

                                    // child: Text("The Apple MacBook Air is great for students. It's a thin and light laptop that's easy to carry around, with a battery that lasts through an entire day of light productivity. It has a good keyboard, an excellent touchpad, and a bright, sharp screen. Its M1 SoC is powerful enough to handle most student workloads, and it's completely silent thanks to its fanless design. It only has two USB-C ports, though, so you'll likely need to carry dongles."
                                      ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),



                                    ),


                                  )
                              ),




                            ],

                            title:

                            Card(

                                elevation: 0.0,
                                // color: Colors.black,
                                child: Row(
                                  children: [




                                    Text(' About  ${widget.proList["Brand"]} As brand', style: GoogleFonts.poppins(
                                        color: Colors.black, fontSize: 15),),
                                  ],
                                )

                            ),

                          ),
                        ),

                        SizedBox(height: 15,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomSheet: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Alert()));
                          },
                          icon: const Icon(Icons.store)),
                      const SizedBox(
                        width: 20,
                      ),



                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WishlistScreen()));
                          },
                          icon: const Icon(Icons.favorite,color: Colors.red,)),
                      const SizedBox(
                        width: 20,
                      ),



                      TextButton(
                          onPressed: (){

                            Navigator.pushNamed(context, '/SaveMoney');

                          },
                          child: SizedBox(
                            height: 40,
                            width: 138,
                            child: Card(
                              // height: 35,
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide( color: Colors.white54,width: 1,)
                                ),
                              color: Colors.purple,
                              child: CustomText(
                                text: "For Deals & Offers",
                                color: Colors.white,
                                fontSize: 14,
                              )
                            ),
                          )
                      )


                      // IconButton(
                      //     onPressed: () {
                            // Navigator.push(
                            //     context,
                                // MaterialPageRoute(
                                //     builder: (context) => const CartScreen(
                                //       back: AppBarBackButton(),
                                //     )));
                          // },
                          // icon: Badge(
                          //     showBadge: context.read<Cart>().getItems.isEmpty
                          //         ? false
                          //         : true,
                          //     padding: const EdgeInsets.all(2),
                          //     badgeColor: Colors.yellow,
                          //     badgeContent: Text(
                          //       context
                          //           .watch<Cart>()
                          //           .getItems
                          //           .length
                          //           .toString(),
                          //       style: const TextStyle(
                          //           fontSize: 16, fontWeight: FontWeight.w600),
                          //     ),
                          //     child: const Icon(Icons.shopping_cart))
                          //   ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProDetailsHeader extends StatelessWidget {
  final String label;
  const ProDetailsHeader({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
            width: 30,
            child: Divider(
              color: Colors.teal,
              thickness: 1,
            ),
          ),
          Text(
            label,
            style: TextStyle(
                color: Colors.teal,
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 40,
            width: 30,
            child: Divider(
              color: Colors.teal,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}



// SizedBox(
//   child: StreamBuilder<QuerySnapshot>(
//     stream: _prodcutsStream,
//     builder: (BuildContext context,
//         AsyncSnapshot<QuerySnapshot> snapshot) {
//       if (snapshot.hasError) {
//         return const Text('Something went wrong');
//       }
//
//       if (snapshot.connectionState ==
//           ConnectionState.waiting) {
//         return const Center(
//           child: CircularProgressIndicator(),
//         );
//       }
//
//       if (snapshot.data!.docs.isEmpty) {
//         return const Center(
//             child: Text(
//               'This category \n\n has no items yet !',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontSize: 26,
//                   color: Colors.blueGrey,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Acme',
//                   letterSpacing: 1.5),
//             ));
//       }
//
//       return Container(
//         color: AppColors.Common,
//         child: SingleChildScrollView(
//           child: StaggeredGridView.countBuilder(
//               physics:
//               const NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: snapshot.data!.docs.length,
//               crossAxisCount: 2,
//               itemBuilder: (context, index) {
//                 return Container();
//                 //   ProductModel(
//                 //   products: snapshot.data!.docs[index],
//                 // );
//               },
//               staggeredTileBuilder: (context) =>
//               const StaggeredTile.fit(1)),
//         ),
//       );
//     },
//   ),
// )

// YellowButton(
//     label: existingItemCart != null
//         ? 'added to cart'
//         : 'ADD TO CART',
//     onPressed: () {
//       if (widget.proList['instock'] == 0) {
//         MyMessageHandler.showSnackBar(
//             _scaffoldKey, 'this item is out of stock');
//       } else if (existingItemCart != null) {
//         MyMessageHandler.showSnackBar(
//             _scaffoldKey, 'this item already in cart');
//       } else {
//         context.read<Cart>().addItem(
//           widget.proList['proname'],
//           onSale != 0
//               ? ((1 -
//               (widget.proList['discount'] /
//                   100)) *
//               widget.proList['price'])
//               : widget.proList['price'],
//           1,
//           widget.proList['instock'],
//           widget.proList['proimages'],
//           widget.proList['proid'],
//           widget.proList['sid'],
//         );
//       }
//     },
//     width: 0.55)