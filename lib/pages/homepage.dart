import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tots/Widgs/pageheaderwidget.dart';
import 'dart:ui';

import 'package:tots/notedata.dart';
import 'package:tots/pages/foldernotespreview.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  Widget horizontalSpace(double val) {
    return const SizedBox(
      width: 5,
    );
  }

  Widget verticalSpace(double val) {
    return const SizedBox(
      height: 5,
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 90,
                ),
                const Pageheaderwidget(
                    title: "ALL FOLDERS", subTitle: "This Month"),
                ...forEachFolder.entries.map((eachIteration) {
                  Widget noteFolders({
                    required String id,
                    required String title,
                    required String howmanynotes,
                  }) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Foldernotespreview(
                                  type: eachIteration.key,
                                  theKeynotes: eachIteration.value,
                                )));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Text(
                              id,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            title: Text(
                              title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            subtitle: Text(
                              "$howmanynotes Notes",
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1,
                          )
                        ],
                      ),
                    );
                  }

                  final id =
                      forEachFolder.keys.toList().indexOf(eachIteration.key) +
                          1;
                  final howManynotes = eachIteration.value.length;
                  final title = eachIteration.key;
                  return noteFolders(
                    id: "$id",
                    title: title,
                    howmanynotes: '$howManynotes',
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
