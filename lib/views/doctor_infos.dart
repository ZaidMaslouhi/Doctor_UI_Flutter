import 'package:flutter/material.dart';

class DoctorInfo extends StatefulWidget {
  @override
  _DoctorInfoState createState() => new _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/");
                    },
                    child: Icon(Icons.arrow_back_ios, size: 25),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Image.asset('assets/doctor_pic2.png', height: 200),
                  SizedBox(width: 20),
                  Container(
                    width: (MediaQuery.of(context).size.width - 44) / 2,
                    height: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Dr. Stefani Abert",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "Heart Spcialist",
                          style: TextStyle(fontSize: 19, color: Colors.grey),
                        ),
                        SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconTile(
                              backColor: Color(0xffFFECDD),
                              imgIconPath: "assets/email.png",
                            ),
                            IconTile(
                              backColor: Color(0xffFEF2F0),
                              imgIconPath: "assets/call.png",
                            ),
                            IconTile(
                              backColor: Color(0xffEBECEF),
                              imgIconPath: "assets/video_call.png",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "About",
                style: TextStyle(fontSize: 28),
              ),
              SizedBox(height: 20),
              Text(
                "Dr. Stefani Abert variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Container(
                    width: (MediaQuery.of(context).size.width - 24) / 2,
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset('assets/mappin.png'),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text("Address",
                                    style: TextStyle(
                                        color: Colors.black87.withOpacity(0.7),
                                        fontSize: 20)),
                                SizedBox(height: 3),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 268,
                                  child: Text(
                                    "Hose #2, Road #3, Green Road Dhamondi, Bangladesh",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset('assets/clock.png'),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Daily Practict",
                                    style: TextStyle(
                                        color: Colors.black87.withOpacity(0.7),
                                        fontSize: 20)),
                                SizedBox(height: 3),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 268,
                                  child: Text(
                                    "Monday - Friday open till 7PM.",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/map.png',
                    width: (MediaQuery.of(context).size.width / 2) - 44,
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                "Activity",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 22),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 22),
                      decoration: BoxDecoration(
                          color: Color(0xffFBB97C),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffFCCA9B),
                                borderRadius: BorderRadius.circular(16)),
                            padding: EdgeInsets.all(8),
                            child: Image.asset('assets/list.png'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "List of \nSchedule",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 22),
                      decoration: BoxDecoration(
                          color: Color(0xffA5A5A5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffBBBBBB),
                                borderRadius: BorderRadius.circular(16)),
                            padding: EdgeInsets.all(8),
                            child: Image.asset('assets/scope.png'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Doctor's \nDaily Post",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class IconTile extends StatelessWidget {
  String imgIconPath;
  Color backColor;

  IconTile({this.imgIconPath, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
//      margin: EdgeInsets.only(right: 16),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: backColor, borderRadius: BorderRadius.circular(15)),
      child: Image.asset(imgIconPath, width: 20),
    );
  }
}
