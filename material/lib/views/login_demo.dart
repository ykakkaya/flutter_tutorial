import 'package:flutter/material.dart';

class LoginDemo extends StatelessWidget {
  const LoginDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            SizedBox(height: 50),
            CircleAvatar(radius: 70, child: FlutterLogo(size: 100)),
            Text("Giriş Yapınız", style: TextStyle(fontSize: 30)),
            Text(
              "Lütfen İşlem Yapmak İçin Giriş Yapınız",
              style: TextStyle(fontSize: 16),
            ),
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                border: BoxBorder.all(style: BorderStyle.none),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.person),
                  SizedBox(width: 10),
                  Text(
                    "Kullanıcı Adını Giriniz",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                border: BoxBorder.all(style: BorderStyle.none),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.lock),
                  SizedBox(width: 10),
                  Text(
                    "Şifrenizi Giriniz",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: Text(
                "Şifreni mi Unuttunuz?",
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(width: 20),
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(
                child: Text(
                  "Giriş Yap",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
