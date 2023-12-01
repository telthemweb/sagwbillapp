import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sagehill/components/gridpanel.dart';
import 'package:sagehill/functions/Telthemweb.dart';
import 'package:sagehill/ui/Airtime.dart';
import 'package:sagehill/ui/Council.dart';
import 'package:sagehill/ui/Dstv.dart';
import 'package:sagehill/ui/Moonlight.dart';
import 'package:sagehill/ui/Mutualtrust.dart';
import 'package:sagehill/ui/Nyaradzo.dart';
import 'package:sagehill/ui/Telone.dart';
import 'package:sagehill/ui/Usdbundles.dart';
import 'package:sagehill/ui/Varsity.dart';
import 'package:sagehill/ui/Zesa.dart';
import 'package:sagehill/ui/Zol.dart';
import 'package:sagehill/ui/Zwdbundles.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String airitime = "assets/img/airtime.jpeg";
  String zesa = "assets/img/zesa.png";
  String usdbundle = "assets/img/airtime.jpeg";
  String zwdbundle = "assets/img/airtime.jpeg";
  String telone = "assets/img/telone.jpeg";
  String zol = "assets/img/zol.jpeg";
  String dstv = "assets/img/dstv.png";
  String citycouncil = "assets/img/cty.jpeg";
  String fm = "assets/img/fm.png";
  String nyaradzo = "assets/img/nyaradzo.png";
  String moonlight = "assets/img/moonlight.png";
  String varsity = "assets/img/varsity.jpg";
  Telthemweb telt = new Telthemweb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Sagehill",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 10, 51, 13)),
              ),
              Text(
                "Bills",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 5, 3, 80)),
              ),
            ],
          ),
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.orange,
              ),
              onPressed: () async {
                telt.sendMessage('+263774914150', "Hi Tauzeni Innocent");
              },
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          decoration: const BoxDecoration(color: Colors.grey),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 2),
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(3),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Airtime()));
                },
                child: makeDashboardItems(
                  "AIRTIME",
                  airitime,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Zesa()));
                },
                child: makeDashboardItems(
                  "ZESA",
                  zesa,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Usdbundles()));
                },
                child: makeDashboardItems(
                  "USD BUNDLES",
                  usdbundle,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Zwdbundles()));
                },
                child: makeDashboardItems(
                  "ZWD BUNDLES",
                  zwdbundle,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Telone()));
                },
                child: makeDashboardItems(
                  "TELONE",
                  telone,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Zol()));
                },
                child: makeDashboardItems(
                  "ZOL",
                  zol,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Dstv()));
                },
                child: makeDashboardItems(
                  "DSTV",
                  dstv,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Varsity()));
                },
                child: makeDashboardItems(
                  "VARSITY FEES",
                  varsity,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Council()));
                },
                child: makeDashboardItems(
                  "COUNCIL",
                  citycouncil,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Mutualtrust()));
                },
                child: makeDashboardItems(
                  "FIRST MUTUAL",
                  fm,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Nyaradzo()));
                },
                child: makeDashboardItems(
                  "NYARADZO",
                  nyaradzo,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Moonlight()));
                },
                child: makeDashboardItems(
                  "MOONLIGHT",
                  moonlight,
                ),
              ),
              const SizedBox(
                height: 23,
              ),
            ],
          ),
        ));
  }
}
