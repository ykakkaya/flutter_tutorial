import 'package:flutter/material.dart';
import 'package:widget_lifecycle/widgets/material_row.dart';

class UygulamaPage extends StatefulWidget {
  const UygulamaPage({super.key});

  @override
  State<UygulamaPage> createState() => _UygulamaPageState();
}

class _UygulamaPageState extends State<UygulamaPage> {
  int kahve = 1;
  int seker = 1;
  int limit = 3;
  bool isActive = false;
  String titleSugar = "Şeker Oranı";
  String sugarPath = "assets/seker.webp";
  String titleCaffee = "Kahve Oranı";
  String caffeePath = "assets/cekirdek.webp";
  String successOrderMessage = "Siparişiniz Başarıyla Alınmıştır";
  String buttonText = "Sipariş Ver";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/kahve.jpg"),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialRow(
                title: titleCaffee,
                value: kahve,
                imagePath: caffeePath,
                onPress: () {
                  if (kahve < limit) {
                    setState(() {
                      kahve++;
                    });
                  }
                },
              ),
              SizedBox(height: 20),
              MaterialRow(
                title: titleSugar,
                value: seker,
                imagePath: sugarPath,
                onPress: () {
                  if (seker < limit) {
                    setState(() {
                      seker++;
                    });
                  }
                },
              ),
              SizedBox(height: 40),
              if (isActive == true)
                Text(successOrderMessage, style: TextStyle(fontSize: 25)),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
