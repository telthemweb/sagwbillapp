import 'package:flutter/material.dart';
import 'package:sagehill/components/Buttonclasscomp.dart';
import 'package:sagehill/ui/Dashboard.dart';

class Airtime extends StatefulWidget {
  Airtime({super.key});

  @override
  _AirtimeState createState() => _AirtimeState();
}

class _AirtimeState extends State<Airtime> {
  String? selectedServiceProvider;
  List<String> serviceProviders = [
    'Econet',
    'NetOne',
    'Telecel',
  ];
  final _formKey = GlobalKey<FormState>();

  DropdownMenuItem<String> buildMenu(String selectedvalue) => DropdownMenuItem(
        value: selectedvalue,
        child: Text(
          selectedvalue,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
        ),
      );
  @override
  void initState() {
    super.initState();
  }

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
              "BUY AIRTIME",
              style: TextStyle(
                  fontSize: 30,
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
                  height: 45,
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
                      value: selectedServiceProvider,
                      elevation: 0,
                      isExpanded: true,
                      hint: const Text(
                        "Select Operator",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                        maxLines: 1,
                      ),
                      style: const TextStyle(color: Colors.grey),
                      items: serviceProviders
                          .map((provider) => DropdownMenuItem(
                                value: provider,
                                child: Text(provider),
                              ))
                          .toList(),
                      onChanged: (data) {
                        setState(() {
                          selectedServiceProvider = data;
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
                      return "Number to recharge is empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Number to Recharge",
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
                      hintText: "Amount",
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
                      btnText: "BUY AIRTIME",
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
