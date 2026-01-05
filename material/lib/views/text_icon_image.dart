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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 26,
              color: Colors.amber,
              backgroundColor: Colors.red,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
            ),
          ),

          RichText(
            text: TextSpan(
              text: 'Giriş',
              style: TextStyle(color: Colors.black, fontSize: 20),
              children: [
                TextSpan(
                  text: 'Yapmak İçin',
                  style: TextStyle(color: Colors.purple, fontSize: 30),
                ),
                TextSpan(
                  text: 'Tıklayın',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),

          Icon(Icons.person, size: 50, color: Colors.green),
          Image.asset('assets/images/icecekler.jpg'),
          Image.network(
            'https://mir-s3-cdn-cf.behance.net/projects/original/fd0f7b74634809.Y3JvcCw3ODEsNjExLDAsMjUx.jpg',
          ),
          SizedBox(height: 30, width: 30, child: Placeholder()),
        ],
      ),
    );
  }
}
