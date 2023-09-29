import 'package:belajar_widget/data/views_data.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Page title bar and button to return to the previous page
        backgroundColor: Colors.red,
        title: Text("Septian Fahmi Ardiansyah"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Row(
            //Header
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("BERITA TERBARU"),
              Text("PERTANDINGAN HARI INI"),
            ],
          ),
          //Space
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              //Headline news
              Stack(
                children: [
                  //Red Container
                  Container(
                    height: 285,
                    color: Colors.red,
                  ),
                  Column(
                    children: [
                      Center(
                        //White Container
                        child: Container(
                          color: Colors.white,
                          width: 500,
                          height: 280,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/lima-pesepak-bola-yang-terkenal-dermawan-iYy-thumb.jpg",
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                "Lima Pebasket Yang Terkenal Dermawan",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //Container for listview
              Container(
                height: 440,
                child: Expanded(
                  //Listview
                  child: ListView(
                    children: views.map((views) {
                      return Stack(
                        children: [
                          //White Container
                          Container(
                            color: Colors.white,
                            height: 150,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          //Red container
                          Container(
                            color: Colors.red,
                            height: 148,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 110,
                                  width: 150,
                                  //Image
                                  child: Image.asset(
                                    views.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 110,
                                  width: 100,
                                  child: Center(
                                    //Name
                                    child: Text(
                                      views.description,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
