import 'package:flutter/material.dart';
import 'package:milliy_coin/page/access_page.dart';

void main(){
  runApp(const Milliy());
}
class Milliy extends StatelessWidget {
  const Milliy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      home: const Access(),
    );
  }
}
