import 'package:flutter/material.dart';

class MaterialRow extends StatelessWidget {
  final String title;
  final int value;
  final String imagePath;
  final VoidCallback onPress;

  const MaterialRow({
    super.key,
    required this.title,
    required this.value,
    required this.imagePath,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        for (int i = 0; i < value; i++) ...[
          Image.asset(imagePath, height: 70, width: 70),
        ],

        IconButton(onPressed: onPress, icon: Icon(Icons.add)),
      ],
    );
  }
}
