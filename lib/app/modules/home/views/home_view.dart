import 'package:bsimobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              width: 20,
              child: Image.asset("assets/images/menubar.png"),
            ),
            SizedBox(width: 13),
            Image.asset("assets/images/logobar.png"),
          ],
        ),
        actions: [
          Row(
            children: [
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                      top: 5,
                    ),
                    child: Image.asset(
                      "assets/images/notif.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      left: 9.1,
                      right: 15,
                    ),
                    child: Image.asset(
                      "assets/images/barcodebar.png",
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Center(
              child: Text(
                "Assalamu’alaikum, MUH. NUR",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 9),
            Container(
              height: 65,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 34,
                  vertical: 9,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color(0XFFE2F2F1),
                    hintText: "Cari",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFC4C4C4),
                    ),
                    prefixIcon: Image.asset(
                      "assets/icon/Search.png",
                      color: Color(0XFFC4C4C4),
                      height: 10,
                      width: 10,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  KategoriIcon(
                    icon: "assets/icon/Info Rekening.png",
                    title: "Info \nRekening",
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(Routes.TRANSFER),
                    child: Material(
                      child: Container(
                        child: KategoriIcon(
                          icon: "assets/icon/Transfer.png",
                          title: "Transfer \n",
                        ),
                      ),
                    ),
                  ),
                  KategoriIcon(
                    icon: "assets/icon/Give.png",
                    title: "Bayar\n",
                  ),
                  KategoriIcon(
                    icon: "assets/icon/buy.png",
                    title: "Beli\n",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  KategoriIcon(
                    icon: "assets/icon/Pay.png",
                    title: "Berbagi \n- Ziswaf",
                  ),
                  KategoriIcon(
                    icon: "assets/icon/E-Wallet.png",
                    title: "Top Up \neWallet",
                  ),
                  KategoriIcon(
                    icon: "assets/icon/E-commerse.png",
                    title: "E-Commerce\n",
                  ),
                  KategoriIcon(
                    icon: "assets/icon/Lain-lain.png",
                    title: "Lihat \nSemua",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/images/iklan3.png",
                  ),
                  Image.asset(
                    "assets/images/iklan1.png",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              "assets/images/iklan2.png",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icon_press/Home-Press.png",
              color: Color(0XFF008E89),
            ),
            label: "Beranda",
            backgroundColor: Color(0XFFF7B152),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icon_press/Islamic-Press.png",
              color: Colors.white,
            ),
            label: "Layanan Islam",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icon_press/Location-Press.png",
              color: Colors.white,
            ),
            label: "Lokasi Cabang",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icon_press/Chat-Press.png",
              color: Colors.white,
            ),
            label: "Customer Care",
          ),
        ],
      ),
    );
  }
}

class KategoriIcon extends StatelessWidget {
  const KategoriIcon({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xFFE2E2E2),
            ),
            child: Image.asset(
              icon,
              color: Color(0XFF2AB9B4),
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
