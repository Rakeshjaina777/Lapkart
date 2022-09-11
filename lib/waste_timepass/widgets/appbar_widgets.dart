import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(

        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
      onPressed: () {

        Navigator.canPop(context)
            ?
        Navigator.pop(context)
            :SizedBox(height: 5,);

        // Navigator.pop(context);
      },
    );
  }
}

class YellowBackButton extends StatelessWidget {
  const YellowBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.yellow,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
          color: Colors.black,
          // fontFamily: 'Acme',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.1),
    );
  }
}
