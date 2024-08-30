import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoostsPage extends StatefulWidget {
  const BoostsPage({super.key});

  @override
  State<BoostsPage> createState() => _BoostsPageState();
}

class _BoostsPageState extends State<BoostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      body: Center(
        child: Column(
          children: [
            const Icon(CupertinoIcons.rocket, color: Colors.white, size: 100),
            Text("BOOSTS", style: GoogleFonts.mPlus1Code(color: CupertinoColors.white, fontSize: 40))
          ],
        ),
      ),
    );
  }
}
