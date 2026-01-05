import 'package:flutter/material.dart';

class TextIconImage extends StatefulWidget {
  const TextIconImage({super.key});

  @override
  State<TextIconImage> createState() => _TextIconImageState();
}

class _TextIconImageState extends State<TextIconImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        children: [
          Text(
            'Text Icon Image Page Text Icon Image Page',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          Icon(Icons.star, size: 50, color: Colors.amber),

          RichText(
            text: TextSpan(
              text: "Merhaba",
              style: TextStyle(fontSize: 16, color: Colors.black),
              children: [
                TextSpan(
                  text: " Flutter ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: "Dünyası",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          Image.network(
            'https://avatars.mds.yandex.net/i?id=fe084f04bbb8efac2b455846ed11e444fb7f4be1-4452347-images-thumbs&n=13',
          ),

          SizedBox(width: 200, height: 200, child: Placeholder()),
        ],
      ),
    );
  }
}
