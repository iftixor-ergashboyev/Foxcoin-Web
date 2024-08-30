import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MissionsPage extends StatefulWidget {
  const MissionsPage({super.key});

  @override
  State<MissionsPage> createState() => _MissionsPageState();
}

class _MissionsPageState extends State<MissionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      body: Center(
        child: Column(
          children: [
             const Icon(CupertinoIcons.calendar_today, color: CupertinoColors.white, size: 100),
            Text("Vazifalaringiz", style: GoogleFonts.mPlus1Code(color: CupertinoColors.white, fontSize: 40)),
            const Gap(30),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Follow Foxcoin Telegram channel", style: GoogleFonts.rubik(
                  color: CupertinoColors.white, fontWeight: FontWeight.bold, fontSize: 18
                )),
                InkWell(
                  onTap: () {
                    _FoxCommunityChannel();
                  },
                  child: Container(
                    height: 40,
                    width: 78,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CupertinoColors.white
                    ),
                    child: Center(
                      child: Text("100 \$FOX", style: GoogleFonts.rubik(color: CupertinoColors.black)),
                    ),
                  ),
                )
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Follow Iftixor's Telegram channel", style: GoogleFonts.rubik(
                    color: CupertinoColors.white, fontWeight: FontWeight.bold, fontSize: 18
                )),
                InkWell(
                  onTap: () {
                    _IftixorChannel();
                  },
                  child: Container(
                    height: 40,
                    width: 78,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CupertinoColors.white
                    ),
                    child: Center(
                      child: Text("50 \$FOX", style: GoogleFonts.rubik(color: CupertinoColors.black)),
                    ),
                  ),
                )
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Follow Durbek's Telegram channel", style: GoogleFonts.rubik(
                    color: CupertinoColors.white, fontWeight: FontWeight.bold, fontSize: 18
                )),
                InkWell(
                  onTap: () {
                   _DurbekChannel();
                  },
                  child: Container(
                    height: 40,
                    width: 78,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CupertinoColors.white
                    ),
                    child: Center(
                      child: Text("50 \$FOX", style: GoogleFonts.rubik(color: CupertinoColors.black)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 150, right: 150, bottom: 12),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey
            ),
            child:  Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(CupertinoIcons.home, color: CupertinoColors.white),
                  Text("Asosiyga o'tish", style: GoogleFonts.adamina(color: CupertinoColors.white))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _IftixorChannel() async {
    const url = 'https://t.me/iftixor_ergashboyev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Error';
    }
  }
  void _DurbekChannel() async {
    const url = 'https://t.me/toxas1noff_1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Error';
    }
  }
  void _FoxCommunityChannel() async {
    const url = 'https://t.me/foxcoin_community';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Error';
    }
  }
}
