import 'package:flutter/material.dart';
import 'package:sagehill/components/Buttonclasscomp.dart';
import 'package:sagehill/ui/Dashboard.dart';

class Zol extends StatefulWidget {
  Zol({super.key});

  @override
  _ZolState createState() => _ZolState();
}

class _ZolState extends State<Zol> {
  String? selectedliquidprice;

  List<String> liquidprice = [
    "WiBroniks 2GB 15 Days +15 Rollover | ZWL 4,387.00",
    "WiBroniks 3GB 15 Days +15 Rollover | ZWL 7,679.00",
    "WiBroniks 5GB 15 Days +15 Rollover | ZWL 20,830.00",
    "WiBroniks 10GB 15 Days +15 Rollover | ZWL 28,509.00",
    "WiBroniks 15GB 30 Days +30 Rollover | ZWL 36,189.00",
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
              "ZOL BUNDLES",
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
                      return "Liquid Home account ID is empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Account ID e.g LIT-12345",
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
                      value: selectedliquidprice,
                      elevation: 0,
                      isExpanded: true,
                      hint: const Text(
                        "Choose Bundle",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                        maxLines: 1,
                      ),
                      style: const TextStyle(color: Colors.grey),
                      items: liquidprice
                          .map((provider) => DropdownMenuItem(
                                value: provider,
                                child: Text(provider),
                              ))
                          .toList(),
                      onChanged: (data) {
                        setState(() {
                          selectedliquidprice = data;
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
                      btnText: "BUY ZOL",
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
