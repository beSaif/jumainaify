import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jumainaify/sizedbox.dart';

const colorAccent = Color.fromRGBO(178, 190, 219, 1);

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/bg.jpg"),
          fit: BoxFit.cover,
        )),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Jumainaify",
                style: TextStyle(
                    fontFamily: 'Albegos', color: Colors.white, fontSize: 45)),
            Text("+1 everytime Jum cries for no reason",
                style: GoogleFonts.inter(
                    color: Colors.white60, fontWeight: FontWeight.w600)),
            verticalBox(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (count != 0) {
                      //print("minus pressed");
                      count--;
                      FirebaseFirestore.instance
                          .collection("collection")
                          .doc('counter')
                          .update({'count': count});
                    }
                  },
                  child: const Text("-",
                      style: TextStyle(
                          fontFamily: 'Albegos',
                          color: Colors.white,
                          fontSize: 40)),
                ),
                horizontalBox(30),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('collection')
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return Row(
                      children: snapshot.data!.docs.map((document) {
                        count = document['count'];
                        return Text(document['count'].toString(),
                            style: const TextStyle(
                                fontFamily: 'Albegos',
                                color: Colors.white,
                                fontSize: 70));
                      }).toList(),
                    );
                  },
                ),
                horizontalBox(30),
                GestureDetector(
                  onTap: () {
                    //print("plus pressed");
                    count++;
                    FirebaseFirestore.instance
                        .collection("collection")
                        .doc('counter')
                        .update({'count': count});
                  },
                  child: const Text("+",
                      style: TextStyle(
                          fontFamily: 'Albegos',
                          color: Colors.white,
                          fontSize: 40)),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
