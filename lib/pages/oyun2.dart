import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:timer/pages/oyun.dart';

void main() => runApp(oyun2());

class oyun2 extends StatefulWidget {
  @override
  _oyun2 createState() => _oyun2();
}

class _oyun2 extends State<oyun2> {
  @override
  late Timer timer1;
  double ust = 10,
      sol = 10,
      ust2 = -50,
      sol2 = 0,
      zemintop = 480,
      balonYukseklik = 40;
  int puan = 0, hiz = 1;

  void baslat() {
    print("oyun başladı");
    setState(() {
      timer1 = new Timer.periodic(Duration(milliseconds: 30), (time) {
        //balonu 1 birim olarak aşağıya doğru alıyoruz. Yukarıdaki timer ile her 30 milisaniye de 1 birim aşağı kayıyor
        setState(() {
          ust = ust + hiz;
          ust2 = ust2 + hiz;

          if (puan < 500) {
            ust2 = -50;
          }

          //Balonun Zemine değmesi
          if (ust + balonYukseklik - 5 >= zemintop ||
              ust2 + balonYukseklik - 1 >= zemintop) {
            timer1.cancel();
            print("Game Over");
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: new Text("Asla Pes Etme"),
                  content: new Text(
                      "Sigarayı bıraktığınız ilk dönemlerde sigara içme isteği hissedebilirsiniz. Ancak bu istek genellikle 5-10 dakika sürer. İçme isteğiniz geçene kadar dikkatinizi dağıtın, balonları acımadan PATLATIN.  "),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text("Tamam"),
                      onPressed: () {
                        ;
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          }
        });
      });
    });
  }

//Puana göre hızı arttırma
  void puanKontrol() {
    if (puan == 250) {
      hiz = 2;
    } else if (puan == 500) {
      hiz = 3;
    } else if (puan == 1000) {
      hiz = 4;
    } else if (puan == 1500) {
      hiz = 5;
    } else if (puan == 200) {
      hiz = 6;
    } else if (puan == 2500) {
      hiz = 7;
    } else if (puan == 3000) {
      hiz = 8;
    }
  }

  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Balon Patlatma Oyunu"),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            //Positioned ile Butona Pozizyon Veriyoruz. Balon butonu oluşturuyoruz.
            Positioned(
                left: sol,
                top: ust,
                height: balonYukseklik,
                width: 40,

                //shape borderradius komutları ile butonu oval yapıyoruz
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.red,
                  onPressed: () {
                    puan = puan + 50;
                    ust = ust - 75;
                    //Balonun Rastgele gelmesi için random oluşturacağız
                    Random random = new Random();
                    int randomsayi = random.nextInt(350);
                    print(randomsayi);
                    print(hiz);
                    sol = randomsayi.toDouble();
                    puanKontrol();
                    zemintop = zemintop - 2;
                  },
                )),
            //Balon2
            Positioned(
              left: sol2,
              top: ust2,
              height: balonYukseklik,
              width: 40,
              child: RaisedButton(
                //shape ve borderradius ile balonu oval yapıyoruz
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.red,
                onPressed: () {
                  puan = puan + 50;
                  ust2 = ust2 - 75;
                  //Balonun Rastgele gelmesi için random oluşturacağız
                  Random random = new Random();
                  int randomsayi = random.nextInt(350);
                  print(randomsayi);
                  print(hiz);
                  sol2 = randomsayi.toDouble();
                  puanKontrol();
                  zemintop = zemintop - 2;
                },
              ),
            ),
            //Oyunu Başlat Butonu
            Positioned(
                left: 10,
                bottom: 20,
                child: RaisedButton(
                  onPressed: baslat,
                  child: Text("Oyunu Başlat"),
                )),
            Positioned(
              left: 0,
              top: zemintop,
              width: genislik,
              child: RaisedButton(
                onPressed: () {},
              ),
            ),

            // Puanı Belirlediğimiz konumda yazdırıyoruz
            Positioned(
              right: 10,
              top: 10,
              child: Text('$puan'),
            ),
          ],
        ),
      ),
    );
  }
}
