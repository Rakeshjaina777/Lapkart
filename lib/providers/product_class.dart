class Product {
  String name;
  String price;
  int qty = 1;
  String amazon;
  List imagesUrl;
  String documentId;
  // String suppId;
  Product({
    required this.name,
    required this.price,
    required this.qty,
    required this.amazon,
    required this.imagesUrl,
    required this.documentId,
    // required this.suppId,
  });
  void increase() {
    qty++;
  }

  void decrease() {
    qty--;
  }


  // void final( discount){
  //   price * discount;
  //   return
  // }

}
