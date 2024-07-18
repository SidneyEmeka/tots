import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Singlenotepage extends StatelessWidget {
  final String theNoteName;
  final bool mustRaed;
  final String theNote;
  final String thedate;

  const Singlenotepage(
      {super.key, required this.theNoteName, required this.mustRaed, required this.theNote, required this.thedate});

  Widget aNote() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Sat, 8:03",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            if (mustRaed)
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black,
                ),
                child: const Text(
                  "Must Read",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          theNoteName,
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const Drawer(),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
        //title: const Text("Menu"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5.0, bottom: 10),
            child: Icon(
              FontAwesomeIcons.bell,
              size: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0, bottom: 10),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 19,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
              0.1,
              0.6,
              0.9,
              -1
            ],
                colors: [
              Colors.white,
              Color(0xFFC8A8E7),
              Color(0xFFE1DB87),
              Color(0xFFE1DB87),
            ])),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 90,
            ),
            aNote(),
            SizedBox(
              height: MediaQuery.of(context).size.height - 200,
              child:  SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(theNote
                    ,style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
