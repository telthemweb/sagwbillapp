import 'package:flutter/material.dart';
import 'package:sagehill/components/Buttonclasscomp.dart';
import 'package:sagehill/ui/Dashboard.dart';

class Telone extends StatefulWidget {
  Telone({super.key});

  @override
  _TeloneState createState() => _TeloneState();
}

class _TeloneState extends State<Telone> {
  String? selectedTeloneprice;

  List<String> teloneprice = [
    "Choose Bundle",
    "Home Basic 10GB | ZWL 14,309.00",
    "Home Extra 15GB | ZWL 15,740.00",
    "Home Basic Night 20GB | ZWL 19,566.00",
    "Home Plus 30GB | ZWL 31,499.00",
    "Home Plus Night 60GB | ZWL 40,089.00",
    "Home Premier 60GB | ZWL 59,180.00",
    "Home Premier Night 120GB | ZWL 69,678.00",
    "Home Surfer 100GB | ZWL 100,223.00",
    "Home Boost 200GB | ZWL 157,491.00",
    "Infinity Pro 500GB | ZWL 209,988.00",
    "Intense (Uncapped*FUP) | ZWL 224,306.00",
    "Infinity Supreme (Uncapped) | ZWL 305,438.00",
    "Intense Extra (Uncapped) | ZWL 419,976.00",
  ];
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
              "TELONE BUNDLES",
              style: TextStyle(
                  fontSize: 23,
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
                      return "TelOne number is empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "TelOne number",
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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4.0,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(13.0),
                      value: selectedTeloneprice,
                      elevation: 0,
                      isExpanded: true,
                      hint: const Text(
                        "Choose Bundle",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                        maxLines: 1,
                      ),
                      style: const TextStyle(color: Colors.grey),
                      items: teloneprice
                          .map((provider) => DropdownMenuItem(
                                value: provider,
                                child: Text(provider),
                              ))
                          .toList(),
                      onChanged: (data) {
                        setState(() {
                          selectedTeloneprice = data;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.black, fontSize: 17),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Number is empty";
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
                      btnText: "BUY TELONE BUNDLE",
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
