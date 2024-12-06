import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  mySpec(icon, tech) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(5, 5))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
          Text(
            tech,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Container(
            child: Stack(children: [
              Container(
                alignment: Alignment.centerRight,
                // margin: EdgeInsets.only(top: 30),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    "assets/images/profile.png",
                    height: 800,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.45),
                child: Column(
                  children: [
                    Text(
                      "Milan Poudel",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ]),
            height: MediaQuery.of(context).size.height * 0.55,
            color: Colors.black,
          ),
          Container(
            // margin: EdgeInsets.only(to),
            padding: EdgeInsets.only(top: 20, right: 20, left: 20),
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "56",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Client",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(0.5)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "42",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Project",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(0.5)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "99+",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Messages",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(0.5)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Specialized In",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text("View All",
                        style: TextStyle(
                            decoration: TextDecoration.underline, fontSize: 18))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    mySpec(FontAwesomeIcons.android, 'Android'),
                    mySpec(FontAwesomeIcons.aws, 'AWS'),
                    mySpec(FontAwesomeIcons.docker, 'Docker'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    mySpec(FontAwesomeIcons.github, 'GitHub'),
                    mySpec(FontAwesomeIcons.linux, 'Linux'),
                    mySpec(FontAwesomeIcons.wordpress, 'WordPress'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
