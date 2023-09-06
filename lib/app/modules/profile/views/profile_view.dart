import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE5F1F1),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(
            0xFFE5F1F1,
          ),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF22215B))),
          title: const Text('MY PROFILE',
              style: TextStyle(color: Color(0xFF22215B))),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu, color: Color(0xFF22215B)))
          ],
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        child: Image.asset("assets/image/a.png",
                            fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Aldi Unanto",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "UI / UX Designer",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xFFFF317B),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: Text(
                          "PRO",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Folder",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.plus_one_rounded),
                          Icon(Icons.settings),
                          Icon(Icons.arrow_right_alt_sharp),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              height: 300,
              child: GridView.count(
                physics: ScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Text(
                          "Folder 1",
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                        Text("12 File", style: TextStyle(fontSize: 20)),
                        Icon(Icons.folder, size: 50)
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Column(
                      children: [
                        Text(
                          "Folder 2",
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                        Text("12 File", style: TextStyle(fontSize: 20)),
                        Icon(Icons.folder, size: 50)
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: Column(
                      children: [
                        Text(
                          "Folder 3",
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                        Text("12 File", style: TextStyle(fontSize: 20)),
                        Icon(Icons.folder, size: 50)
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Text(
                          "Folder 4",
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                        Text("12 File", style: TextStyle(fontSize: 20)),
                        Icon(Icons.folder, size: 50)
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recent Files",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          "assets/image/a.png",
                          fit: BoxFit.cover,
                        )),
                    title: Text("Word.pdf", style: TextStyle(fontSize: 13)),
                    subtitle: Text("12.5 MB"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
