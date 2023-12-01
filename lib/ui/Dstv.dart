import 'package:flutter/material.dart';
import 'package:sagehill/components/Buttonclasscomp.dart';
import 'package:sagehill/ui/Dashboard.dart';

class Dstv extends StatefulWidget {
  Dstv({super.key});

  @override
  _DstvState createState() => _DstvState();
}

class _DstvState extends State<Dstv> {
  String? selectedDstvpackage;
  List<String> dstvpackages = [
    'Lite 30 Days| ZWL 6240.00',
    'Access 30 Days| ZWL 8640.00',
    'Family 30 Days| ZWL 11520.00',
    'Compact 30 Days| ZWL 16320.00',
    'Compact + 30 Days| ZWL 24000.00',
    'Premium 30 Days| ZWL 38400.00',
    'Xtra View (Add on) 30 Days| ZWL 8640.00',
    'PVR (Add on) 30 Days| ZWL 8640.00'
  ];

  String? selectedPaymentMethod;
  List<String> paymentmethods = [
    'Zipit Bank',
    'EcoCash',
    'OneMoney',
    'Inbucks',
    'Mukuru'
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
              "PAY DSTV",
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
                      value: selectedDstvpackage,
                      elevation: 0,
                      isExpanded: true,
                      hint: const Text(
                        "Select Dstv Package",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                        maxLines: 1,
                      ),
                      style: const TextStyle(color: Colors.grey),
                      items: dstvpackages
                          .map((provider) => DropdownMenuItem(
                                value: provider,
                                child: Text(provider),
                              ))
                          .toList(),
                      onChanged: (data) {
                        setState(() {
                          selectedDstvpackage = data;
                        });
                      },
                    ),
                  ),
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
                      value: selectedDstvpackage,
                      elevation: 0,
                      isExpanded: true,
                      hint: const Text(
                        "Select Dstv Addon",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                        maxLines: 1,
                      ),
                      style: const TextStyle(color: Colors.grey),
                      items: dstvpackages
                          .map((provider) => DropdownMenuItem(
                                value: provider,
                                child: Text(provider),
                              ))
                          .toList(),
                      onChanged: (data) {
                        setState(() {
                          selectedDstvpackage = data;
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
                      return "SmartCard Number is empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "SmartCard Number",
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
                      return "Account Holder Surname is empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Account Holder Surname",
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
                    hintText: "Whatsapp Number",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13.0),
                      borderSide: const BorderSide(
                          color: Colors.deepOrange, style: BorderStyle.solid),
                    ),
                  ),
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
                      value: selectedPaymentMethod,
                      elevation: 0,
                      isExpanded: true,
                      hint: const Text(
                        "Select Payment Method",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                        maxLines: 1,
                      ),
                      style: const TextStyle(color: Colors.grey),
                      items: paymentmethods
                          .map((provider) => DropdownMenuItem(
                                value: provider,
                                child: Text(provider),
                              ))
                          .toList(),
                      onChanged: (data) {
                        setState(() {
                          selectedPaymentMethod = data;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: 320,
                    height: 50,
                    child: ButtonWidget(
                      btnText: "PAY DSTV",
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
