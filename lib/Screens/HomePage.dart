import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtnumber = TextEditingController();
  List<int> l1 = [];
  int no = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Multiplication table"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: txtnumber,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      no = int.parse(txtnumber.text);
                      for (int i = 1; i <= 10; i++) {
                        l1.add(i);
                      }
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black12,
                      border: Border.all(color: Colors.black)
                    ),
                    alignment: Alignment.center,
                    child: Text("Count"),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  height: 200,
                  width: 130,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => Text(
                        "${no}   *   ${index + 1}   =   ${no * (index + 1)}",
                        style: TextStyle(color: Colors.black),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
