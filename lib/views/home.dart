import 'package:flutter/material.dart';
import 'package:doctor_app/model/Speciality.dart';
import 'package:doctor_app/data/data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

String selectedCategory = "Adults";

class _HomeState extends State<Home> {
  List<String> categories = ["Adults", "Childrens", "Womens", "Mens"];

  List<SpecialityModel> speciality = new List<SpecialityModel>();

  void initState() {
    super.initState();
    speciality = getSpecialities();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Text(
                "Find Your \nConsultation",
                style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
//              margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffEEEDEF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Categories",
                style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 30,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CategoriesTitle(
                      category: categories[index],
                      isSelected: selectedCategory == categories[index],
                      context: this,
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 250,
                child: ListView.builder(
                  itemCount: speciality.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SpecialistTile(
                      imgAssetPath: speciality[index].imgAssetPath,
                      noOfDoctors: speciality[index].noOfDoctors,
                      speciality: speciality[index].speciality,
                      bgColor: speciality[index].backgroundColor,
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Doctors",
                style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              DoctorTile(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesTitle extends StatefulWidget {
  String category;
  bool isSelected;
  _HomeState context;

  CategoriesTitle({this.category, this.isSelected, this.context});

  @override
  _CategoriesTitleState createState() => _CategoriesTitleState();
}

class _CategoriesTitleState extends State<CategoriesTitle> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.context.setState(() => selectedCategory = widget.category);
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(right: 5),
        height: 30,
        decoration: BoxDecoration(
          color: widget.isSelected ? Color(0xffF5CBA4) : Colors.white24,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          widget.category,
          style: TextStyle(
            color: widget.isSelected ? Color(0xffFC9535) : Color(0xffA1A1A1),
          ),
        ),
      ),
    );
  }
}

class SpecialistTile extends StatelessWidget {
  String imgAssetPath;
  String speciality;
  int noOfDoctors;
  Color bgColor;
  SpecialistTile({
    @required this.imgAssetPath,
    @required this.speciality,
    @required this.noOfDoctors,
    @required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: this.bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 0),
      margin: EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(this.speciality,
              style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(
            height: 6,
          ),
          Text("${this.noOfDoctors} Doctors",
              style: TextStyle(color: Colors.white, fontSize: 13)),
          Image.asset(
            this.imgAssetPath,
            height: 160,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}

class DoctorTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/infos");
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFEEE0),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 18, vertical: 18),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/doctor_pic.png",
              height: 50,
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dr. Stefani Albert",
                  style: TextStyle(
                      color: Color(0xffFC9535),
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 3),
                Text(
                  "Heart Specialist",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xffFBB97C),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Text(
                "Call",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
