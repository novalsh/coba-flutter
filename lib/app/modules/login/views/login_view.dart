import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //background
            Container(
                width: Get.width,
                child: Image.asset(
                  'assets/image/bg.png',
                  fit: BoxFit.cover,
                )),
            //layer body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 135,
                  ),
                  Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'assets/image/gam-1.png',
                        fit: BoxFit.contain,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Selamat Datang",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("Dirbbox",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    child: Text(
                        "Platform penyimpanan cloud terbaik untuk bisnis dan individu dalam mengelola data mereka adalah Google Drive. Platform ini juga tersedia\n\nSECARA GRATIS.",
                        style: TextStyle(fontSize: 12)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/jari.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Login dengan sidik jari",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF567DF4).withOpacity(0.4),
                            fixedSize: Size(218, 50)),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.arrow_right_alt_sharp),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF567DF4),
                            fixedSize: Size(125, 50)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text("Login dengan media sosial"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/image/ig.png"),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset("assets/image/fb.png"),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset("assets/image/tw.png"),
                      SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: Text("Belum punya akun?"),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
