import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tots/Widgs/pageheaderwidget.dart';
import 'package:tots/notedata.dart';
import 'package:tots/pages/singlenotepage.dart';

class Foldernotespreview extends StatelessWidget {
  final String type;
  final List<theNotesofaNote> theKeynotes;

  const Foldernotespreview(
      {super.key, required this.type, required this.theKeynotes});



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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 90,
              ),
              Pageheaderwidget(
                  title: type.toUpperCase(),
                  subTitle: theKeynotes.length.toString() == "1"
                      ? "${theKeynotes.length} note"
                      : "${theKeynotes.length} notes"),
              Expanded(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    ...theKeynotes.map((aCard) {
                      final cardTitle = aCard.title;
                      final noteSnippet = aCard.body;
                      final time = aCard.date;
                      final mustRead = aCard.mustRead;

                      Widget previewCard(
                          {required String cardTitle,
                            required String noteSnippet,
                            required String time,
                            required bool mustRead}) {
                        return GestureDetector(
                          onTap: (){
                            print(cardTitle);
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Singlenotepage(
                                    theNoteName: cardTitle,
                                    mustRaed: mustRead, theNote: noteSnippet, thedate: time,)));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 1.2),
                                borderRadius: BorderRadius.circular(10)),
                            height: 250,
                            width: 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cardTitle,
                                  style: const TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
                                ),
                                Container(
                                  //  padding: const EdgeInsets.symmetric(vertical: 5),
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  height: 80,
                                  width: 120,

                                  child: Text(
                                    noteSnippet,
                                    style: const TextStyle(
                                        overflow: TextOverflow.fade,
                                        fontSize: 12,
                                        color: Colors.black),
                                  ),
                                ),
                                if (mustRead)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding:
                                        const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
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
                                      Text(
                                        time,
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                if (!mustRead)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        time,
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        );
                      }
                      return previewCard(
                          cardTitle: cardTitle,
                          noteSnippet: noteSnippet,
                          time: time,
                          mustRead: mustRead);
                    })
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
