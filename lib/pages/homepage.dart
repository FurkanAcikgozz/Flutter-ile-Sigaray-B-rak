import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:timer/pages/circular.dart';
import 'package:timer/pages/ipucu.dart';
import 'package:timer/pages/oyun.dart';
import 'package:timer/pages/oyun2.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  Icon _icon = Icon(Icons.play_arrow_outlined, size: 55);
  bool isStart = false;
  int gun = 0;
  int saat = 0;
  int dakika = 0;
  int saniye = 0;
  late Timer _timer;

  void _start() {
    setState(() {
      isStart = !isStart;
      if (isStart) {
        _icon = Icon(Icons.pause_circle_outline, size: 55);

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("Tebrikler.!!!"),
              content: new Text(
                  "Binlerce kilometrelik bir yolculuk tek bir adımla başlar. Seni bu kararınla kutluyoruz"),
              actions: <Widget>[
                // ignore: deprecated_member_use
                new FlatButton(
                  child: new Text("Kapat"),
                  onPressed: () {
                    ;
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );

        const oneSec = const Duration(seconds: 1);
        _timer = new Timer.periodic(
            oneSec,
            (Timer timer) => setState(() {
                  saniye++;
                  if (saniye == 60) {
                    saniye = 0;
                    dakika++;
                  }
                  if (dakika == 60) {
                    dakika = 0;
                    saat++;
                  }
                  if (saat == 24) {
                    saat = 0;
                    gun++;
                  }
                }));
      } else {
        _icon = Icon(Icons.play_arrow_outlined, size: 55);
        _timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //Anroid telefonun genişliğini tutacak.
    double genislik = MediaQuery.of(context).size.width;
    return Scaffold(
      //Ana Ekran Görünenler
      appBar: AppBar(
        title: Text("Sigarayı Bırak...!"),
      ),
      body: Center(
        child: Column(
          children: [
            //Widget
            Container(
              height: 300,
              width: genislik,
              decoration: BoxDecoration(color: Colors.blue),

              //Buton Ekliyoruz
              child: Row(
                //mainAxisAlignment Butonlar arası eşit miktarda boşluk bıraktırır.
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipOval(
                    child: Material(
                      color: Colors.green,
                      //inkwell tıkladığında olan renk
                      child: InkWell(
                        splashColor: Colors.red,
                        child: Container(width: 120, height: 120, child: _icon),
                        //Text("$gun g $saat s $dakika d $saniye sn")
                        onTap: () {
                          _start();
                        },
                      ),
                    ),
                  ),
                  //Sıfırla Butonu
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text("Asla Pes Etme"),
                            content: new Text(
                                "Başarı yolunda tökezlemek başarısızlık değildir. Pes etmek BAŞARISIZLIKTIR."),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text("Kapat"),
                                onPressed: () {
                                  ;
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                      saniye = 0;
                      dakika = 0;
                      saat = 0;
                      gun = 0;
                    },
                    child: Container(
                      width: 65,
                      height: 65,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: Icon(
                        Icons.refresh_outlined,
                        size: 35,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => circular()));
                    },
                    child: Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(Icons.health_and_safety_rounded)),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ipucu()));
                    },
                    child: Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                        child: Icon(Icons.info_outline_rounded)),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => oyun2()));
                    },
                    child: Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.amber),
                        child: Icon(Icons.games_outlined)),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => oyun()));
                    },
                    child: Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.amber),
                        child: Icon(Icons.gamepad_outlined)),
                  ),
                ],
              ),
            ),

            Expanded(
                child: Center(
                    child: Text("Sigarasız Geçen Zaman ",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center))),

            Expanded(
                child: Center(
                    child: Text(
              "$gun g $saat s $dakika d $saniye sn",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ))),

            Expanded(
                child: Center(
              child: Text(
                  " Unutmayın...! \n Eğer tekrar kullanırsanız,kendize zayıf veya başarısız gibi ithamlarda bulunmayın.",
                  textAlign: TextAlign.center),
            )),

            Expanded(
                child: Center(
              child: Text(
                "Copyrights © Furkan Açıkgöz 2021. \n Tüm Hakları Saklıdır.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
