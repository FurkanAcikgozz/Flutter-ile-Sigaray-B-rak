import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ipucu extends StatefulWidget {
  @override
  _ipucu createState() => _ipucu();
}

class _ipucu extends State<ipucu> {
  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width;
    double uzunluk = MediaQuery.of(context).size.height;
    return Scaffold(
      //Ana Ekran Görünenler
      appBar: AppBar(
        title: Text("Sigarayı Bırakma İpuçları"),
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
                        " 1-) Kendinizi sigara içmeyen biri olarak hayal edin.\n",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.left),
                    Text(
                        " 2-) Sigarayı bırakan kişilere nasıl başardıklarını sorun. \n",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.left),
                    Text(
                        " 3-) Sigara bırakma sebeplerinizi yazın. Sigara içmek istediğinizde, sebeplerinizi gözden geçirin. \n",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.left),
                    Text(
                        " 4-) Sigara satın almayarak tasarruf edeceğiniz parayı düşünün. Bu parayı sizin için özel olan şeyler için harcamak adına plan yapın. \n",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.left),
                    Text(
                        " 6-) Atıştırmak için yanınızda bol yemiş, sebze ve meyve bulundurun. \n",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.left),
                    Text(
                        " 7-) Eğer nikotin ihtiyacınızı arttırıyorsa, kafein ve alkolden uzak durun. \n",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.left),
                    Text(
                        " 8-) İlk birkaç hafta boyunca, alkol ve sigaranın olduğu sosyal ortamlardan uzak durmaya çalışın. \n",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.left),
                    Text(
                        " 9-) Uzun Yürüyüşler yapın, müzik dinleyin ve özgürlüğünüzün tadını çıkarın. Zaman sizin yanınızda...\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left)

                    /* Expanded(
                        child: ListView(
                      children: [
                        Text(
                            " 1-) Kendinizi sigara içmeyen biri olarak hayal edin.",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.left),
                      ],
                    )),
                    Expanded(
                        child: ListView(
                      children: [
                        Text(
                            " 2-) Sigarayı bırakan kişilere nasıl başardıklarını sorun. ",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.left)
                      ],
                    )),
                    Expanded(
                        child: ListView(
                      children: [
                        Text(
                            " 3-) Sigara bırakma sebeplerinizi yazın. Sigara içmek istediğinizde, sebeplerinizi gözden geçirin. ",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.left)
                      ],
                    )),
                    Expanded(
                        child: ListView(
                      children: [
                        Text(
                            " 4-) Sigara satın almayarak tasarruf edeceğiniz parayı düşünün. Bu parayı sizin için özel olan şeyler için harcamak adına plan yapın. ",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.left)
                      ],
                    )),
                    Expanded(
                        child: ListView(
                      children: [
                        Text(
                            " 5-) Sigarayı bir arkadaşınız ile beraber bırakın ve birbirinize destek olun.",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.left)
                      ],
                    )),
                    Expanded(
                        child: ListView(
                      children: [
                        Text(
                            " 6-) Atıştırmak için yanınızda bol yemiş, sebze ve meyve bulundurun. ",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.left)
                      ],
                    )),
                    Expanded(
                        child: ListView(
                      children: [
                        Text(
                            " 7-) Uzun Yürüyüşler yapın, müzik dinleyin ve özgürlüğünüzün tadını çıkarın. Zaman sizin yanınızda...",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.left)
                      ],
                    )),*/
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
