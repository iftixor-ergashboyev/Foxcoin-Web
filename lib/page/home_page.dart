import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milliy_coin/page/boosts_page.dart';
import 'package:milliy_coin/page/missions_page.dart';
import 'package:milliy_coin/page/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.black,
        title: Text("Foxcoin", style: GoogleFonts.actor(
          fontWeight: FontWeight.bold, color: CupertinoColors.white, fontSize: 24
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 45,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: CupertinoColors.systemGrey,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.network("https://static-00.iconduck.com/assets.00/telegram-icon-2048x2048-qq8ggh79.png", height: 30, width: 30),
                      Text("Telegram", style: GoogleFonts.poppins(
                        color: CupertinoColors.white,
                        fontSize: 12
                      ))
                    ],
                  ),
                ),
              ),
            )
          )
        ],
      ),
      backgroundColor: CupertinoColors.black,
      body:  Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child: Column(
            children: [
              const Gap(40),
              Text("Sizning balansingiz:", style: GoogleFonts.nanumGothicCoding(
                color: CupertinoColors.systemGrey2
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("0", style: GoogleFonts.rubik(
                      color: CupertinoColors.white, fontSize: 40, fontWeight: FontWeight.bold
                  )),
                  Image.network("https://snuzone.com/cdn/shop/collections/white-fox-205378.png?v=1709290451", height: 100, width: 100)
                ],
              ),
               const Gap(20),
              Container(
                height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(120),
                      child: Image.network('https://pics.craiyon.com/2023-09-18/b8f69be0744f43008c1edc6943e0c44f.webp'))),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("12", style: GoogleFonts.urbanist(
                    fontSize: 22, fontWeight: FontWeight.bold, color: CupertinoColors.white
                  )),
                  Text("/", style: GoogleFonts.urbanist(
                      fontSize: 24, fontWeight: FontWeight.bold, color: CupertinoColors.white
                  )),
                  Text("100", style: GoogleFonts.urbanist(
                      fontSize: 22, fontWeight: FontWeight.bold, color: CupertinoColors.white
                  )),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: double.infinity,
          height: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade800
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),

                // MISSIONS

                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => const MissionsPage())
                    );
                  },
                  child: Container(
                    height: 90,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade600
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Image.network("https://cdn0.iconfinder.com/data/icons/small-n-flat/24/678116-calendar-512.png", height: 70, width: 70),
                          Text("Vazifalaringiz", style: GoogleFonts.rubik(
                            color: CupertinoColors.white, fontSize: 13, fontWeight: FontWeight.bold
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => const BoostsPage())
                    );
                  },
                  child: Container(
                    height: 90,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade600
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Image.network("https://png.pngtree.com/png-vector/20230524/ourmid/pngtree-cartoon-rocket-vector-illustration-png-image_7108161.png", height: 70, width: 70),
                          Text("Kuchaytirishlar", style: GoogleFonts.rubik(
                              color: CupertinoColors.white, fontSize: 13, fontWeight: FontWeight.bold
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => const SettingsPage())
                    );
                  },
                  child: Container(
                    height: 90,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade600
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Image.network("https://cdn-icons-png.freepik.com/512/8956/8956157.png", height: 70, width: 70),
                          Text("Sozlamalar", style: GoogleFonts.rubik(
                              color: CupertinoColors.white, fontSize: 13, fontWeight: FontWeight.bold,
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
