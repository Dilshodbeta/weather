import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather/getLocation.dart';
import 'package:weather/weatherData.dart';

class MyhomePage extends StatelessWidget {
  MyhomePage({super.key});
  var client = WeatherData();
  var data;
  info() async {
    //var position = await GetPosition();
    data = await client.getData(
      '54',
      -11,
    );
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var data;
    return Scaffold(
      body: FutureBuilder(
        future: info(),
        builder: (((context, snapshot) {
          return Container(
            child: Column(
              children: [
                Container(
                  height: size.height * 0.75,
                  width: size.width,
                  padding: EdgeInsets.only(top: 30),
                  margin: EdgeInsets.only(right: 10, left: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 8, 11, 86),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 9, 178, 66),
                          Colors.blue,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [
                          0.2,
                          0.75,
                        ],
                      )),
                  child: Column(
                    children: [
                      Text(
                        " ${data?.cityName}",
                        style: TextStyle(
                            fontSize: 35, color: Colors.white.withOpacity(0.9)),
                      ),
                      Text(
                        "Monday , 03,Mars",
                        style: TextStyle(
                            fontSize: 15, color: Colors.white.withOpacity(0.9)),
                      ),
                      // Image.asset(
                      //   "assets/images/1.png",
                      //   width: size.width * 0.4,
                      // ),
                      Image.network(
                        ' https:${data?.icon}',
                        width: size.width * 0.3,
                        fit: BoxFit.fill,
                      ),

                      Text(
                        "${data?.condition}",
                        style: TextStyle(
                            fontSize: 25, color: Colors.white.withOpacity(0.9)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${data?.temp} ",
                        style: TextStyle(
                            fontSize: 25, color: Colors.white.withOpacity(0.9)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Image.asset(
                                "assets/images/2.png",
                                width: size.width * 0.15,
                              ),
                              Text(
                                "19.1km/h",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "wind",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Image.asset(
                                "assets/images/3.jpg",
                                width: size.width * 0.15,
                              ),
                              Text(
                                "19.1km/h",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "bosim",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Image.asset(
                                "assets/images/4.png",
                                width: size.width * 0.15,
                              ),
                              Text(
                                "19.1km/h",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "wind",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ],
                          ))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          "Gust",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "32 km/h",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "prussure",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "102.5 kpa",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          "UV",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "32 km/h",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "persifications",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "102.5 kpa",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          "wind",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "32 km/h",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "last upedata",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "22.12.2022",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ],
                    ))
                  ],
                ),
              ],
            ),
          );
        })),
      ),
      backgroundColor: Colors.green,
    );
  }
}
