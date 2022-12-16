import 'package:bsimobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transfer_controller.dart';

class TransferView extends GetView<TransferController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
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
      body: ListView(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
                onPressed: () => Get.toNamed(Routes.HOME),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(120, 0, 0, 0),
                child: Text(
                  "Transfer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(
            color: Color(0XFFDCDCDC),
            thickness: 2,
            height: 0.1,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 150,
              width: 317,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0XFFE2F2F1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Image.asset(
                            "assets/icon_press/bsilog.png",
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Transfer antar \nRekening BSI",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Image.asset(
                            "assets/icon_press/Bank-Press.png",
                            color: Color(0XFF0DA09E),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Transfer ke \nBank Lain",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Image.asset(
                            "assets/images/barcodebar.png",
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("QRIS"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
