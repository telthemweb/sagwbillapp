import 'package:flutter/material.dart';
import 'package:sagehill/components/Buttonclasscomp.dart';
import 'package:sagehill/ui/Dashboard.dart';

class Buse extends StatefulWidget {
  Buse({super.key});

  @override
  _BuseState createState() => _BuseState();
}

class _BuseState extends State<Buse> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BINDURA UNIVERSITY",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 10, 51, 13)),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              icon: Icon(Icons.close, size: 34.0, color: Colors.orange[500]))
        ],
        automaticallyImplyLeading: false,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 58),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.black, fontSize: 17),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Student Number is empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Student Number",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13.0),
                        borderSide: const BorderSide(
                            color: Colors.deepOrange, style: BorderStyle.solid),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.black, fontSize: 17),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Amount is empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Amount to pay",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13.0),
                        borderSide: const BorderSide(
                            color: Colors.deepOrange, style: BorderStyle.solid),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.black, fontSize: 17),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Phone Number is empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "EcoCash/OneMoney Number",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13.0),
                      borderSide: const BorderSide(
                          color: Colors.deepOrange, style: BorderStyle.solid),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: 320,
                    height: 50,
                    child: ButtonWidget(
                      btnText: "PAY FEES",
                      onClick: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
