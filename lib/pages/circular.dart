import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class circular extends StatefulWidget {
  @override
  _circular createState() => _circular();
}

class _circular extends State<circular> {
  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width;
    double uzunluk = MediaQuery.of(context).size.height;
    return Scaffold(
      //Ana Ekran Görünenler
      appBar: AppBar(
        title: Text("Sağlık"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Widget
              Container(
                height: uzunluk,
                width: genislik,
                decoration: BoxDecoration(color: Colors.blueGrey),
                child: Column(
                  children: [
                    Text(
                      "20 dakika sonrasında: Kan basıncınız ve kalp ritminiz düşer.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0.02,
                      center: new Text("2%"),
                      progressColor: Colors.green,
                    )),
                    Text(
                        " 8 saat sonrasında: Kanınızdaki karbon  monoksit \n oranı normale döner.",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Expanded(
                        child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0.01,
                      center: new Text("1%"),
                      progressColor: Colors.green,
                    )),
                    Text("24 saat sonrasında: Kalp krizi riskiniz azalır.",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Expanded(
                        child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0,
                      center: new Text("0%"),
                      progressColor: Colors.green,
                    )),
                    Text(
                        " 48 saat sonrasında: Tat ve koku alma duyularınız tekrar \n çalışmaya başlar.",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Expanded(
                        child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0,
                      center: new Text("0%"),
                      progressColor: Colors.green,
                    )),
                    Text(
                        "5 ila 8 gün sonrasında: Canınızın çekmesi ortalama \n olarak günde 3 sefere düşecektir. ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Expanded(
                        child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0,
                      center: new Text("0%"),
                      progressColor: Colors.green,
                    )),
                    Text(
                        "1 ila 5 yıl sonrasında: Kalp sorunları nedeniyle \n ölme riskiniz, sigara içenlere göre yarı yarıya azalır.",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Expanded(
                        child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0,
                      center: new Text("0%"),
                      progressColor: Colors.green,
                    )),
                    Text(
                        "10 yıl sonrasında: Akciğer kanseri riskiniz, \n sigara aiçenlere göre yarı yarıya azalır.",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Expanded(
                        child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0,
                      center: new Text("0%"),
                      progressColor: Colors.green,
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
/*
class  extends StatefulWidget {
  const ({ Key? key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }*/
}
