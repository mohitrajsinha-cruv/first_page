import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ReusableRow(
              items: '03',
              itemName: '03 Items',
              itemChange: 'change',
              itemPrice: '\u{20B9}${375}',
              boxColor: Color(0xFF4200FF),
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
              height: 20,
            ),
            _buildInfoRow(
              title: "DELIVERY FEE",
              subtitle:
                  "Rambagh Palace, H-1B, Azkaban Facility for Muggles, 304098",
              price: '\u{20B9}${30}',
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
              height: 20,
            ),
            _buildInfoRow(
              title: "TAXES AND CHARGES",
              subtitle:
                  "Some info about taxes and service charges for transparency",
              price: '\u{20B9}${30}',
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
              height: 20,
            ),
            _buildInfoRow(
              title: "TO PAY",
              price: '\u{20B9}${435}',
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
              height: 20,
            ),
            _buildProceedToPaySection(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      toolbarHeight: 139,
      leading: Padding(
        padding: const EdgeInsets.only(
          top: 70,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: OutlinedButton(
            onPressed: null,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              shape: const CircleBorder(),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 12.5,
            ),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Text(
              'THE RAJPOOT ROOM',
              style: GoogleFonts.jetBrainsMono(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11.0),
            child: GestureDetector(
              child: const Text(
                "Rambagh Palace",
                style: TextStyle(
                  fontFamily: "PP MORI",
                  fontSize: 10,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
        ],
      ),
      centerTitle: true,
      titleSpacing: 0,
    );
  }

  Widget _buildInfoRow(
      {required String title, String? subtitle, required String price}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: GoogleFonts.jetBrainsMono(
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2.2,
                  fontSize: 12,
                ),
              ),
              if (subtitle != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: "PP MORI",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        const Expanded(
            child:
                SizedBox()), // Take up all available space between text and price
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            price,
            style: GoogleFonts.jetBrainsMono(fontSize: 12),
          ),
        ),
      ],
    );
  }

  Widget _buildProceedToPaySection() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Container(
          height: 240,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage('assets/map.png'), // Replace with your image path
              fit: BoxFit.fitHeight, // Adjust the fit as needed
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: 16,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFF0057FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: null,
                  child: Row(
                    children: [
                      Text(
                        "PROCEED TO PAY",
                        style: GoogleFonts.jetBrainsMono(
                            color: Colors.white,
                            fontSize: 10,
                            letterSpacing: 2.2),
                      ),
                      const SizedBox(
                          width:
                              13), // Adjust the spacing between the text and icon
                      const Icon(
                        Icons.arrow_circle_right_sharp,
                        color: Colors.white,
                        size: 37,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Text(
                        "ESTIMATED DELIVERY TIME",
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 10,
                          height: 0.1,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2.2,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "25 Mins",
                          style: TextStyle(
                              fontFamily: "PP EDITORIAL NEW",
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  final String items;
  final String itemName;
  final String itemChange;
  final String itemPrice;
  final Color boxColor;

  const ReusableRow({
    super.key,
    required this.items,
    required this.itemName,
    required this.itemChange,
    required this.itemPrice,
    required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: boxColor,
            ),
            child: const Center(
              child: Text(
                '03',
                style: TextStyle(
                  fontFamily: "PP MORI",
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemName,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: "PP MORI",
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: GestureDetector(
                child: Text(
                  itemChange,
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 10,
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            itemPrice,
            style: GoogleFonts.jetBrainsMono(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
