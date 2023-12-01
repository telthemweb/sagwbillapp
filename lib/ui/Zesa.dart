import 'package:flutter/material.dart';
import 'package:sagehill/ui/Dashboard.dart';

class Zesa extends StatefulWidget {
  Zesa({super.key});

  @override
  _ZesaState createState() => _ZesaState();
}

class _ZesaState extends State<Zesa> {
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
              "BUY ZESA",
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
                  height: 15,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.black, fontSize: 17),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "ZESA Meter is empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "ZESA Meter Number",
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
                      btnText: "BUY ZESA",
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

class ButtonWidget extends StatelessWidget {
  String btnText = "";
  var onClick;

  ButtonWidget({super.key, required this.btnText, this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          btnText,
          style: const TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
