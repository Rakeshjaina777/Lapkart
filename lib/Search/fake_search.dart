import 'package:flutter/material.dart';
import 'package:laptops_expert/Search/search.dart';
// import 'package:multi_store_app/minor_screens/search.dart';

class FakeSearch extends StatelessWidget {
  const FakeSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SearchScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(

          height: 35,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.teal, width: 1.4),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Search For Product ...',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.all(3.0),
              //   child: Container(
              //     height: 32,
              //     // width: 75,
              //     decoration: BoxDecoration(
              //         color: Colors.purple,
              //         borderRadius: BorderRadius.circular(5)),
              //     child: const Center(
              //       child: Text(
              //         'Search',
              //         style: TextStyle(fontSize: 15, color: Colors.white),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
