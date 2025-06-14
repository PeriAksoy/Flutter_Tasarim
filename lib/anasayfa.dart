import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yüksekligi : $ekranYuksekligi");
    print("Ekran Genisligi : $ekranGenisligi");

    var d = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
      title: Text(d!.pizzaBaslik,style: TextStyle(color: yaziRenk1,fontFamily: "Pacifico",fontSize: ekranGenisligi/19),),
        backgroundColor: anarenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(d!.pizzaBaslik,style:TextStyle(fontSize: 36,color: anarenk,fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: d!.peynirYazi),
                Chip(icerik: d!.sucukYazi),
                Chip(icerik: d!.zeytinYazi),
                Chip(icerik: d!.biberYazi),
                ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(d!.teslimatBaslik,style:TextStyle(fontSize: 22,color: yaziRenk2,fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("Delivery",style:TextStyle(fontSize: 22,color: anarenk,fontWeight: FontWeight.bold)),
                ),
                Text(d!.pizzaAciklama,
                    style:TextStyle(fontSize: 22,color: yaziRenk2 ),textAlign: TextAlign.center,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  d!.fiyat,
                  style: TextStyle(
                    fontSize: 44,
                    color: anarenk,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 200,height: 50,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: anarenk,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    child: Text(
                      d!.buttonYazi,
                      style: TextStyle(color: yaziRenk1,fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );               // Scaffold kapandı
  }
}
class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik,style: TextStyle(color: yaziRenk1),),
      style: TextButton.styleFrom(backgroundColor: anarenk),);
  }
}

