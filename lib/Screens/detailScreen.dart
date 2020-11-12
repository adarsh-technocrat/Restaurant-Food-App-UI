import 'package:flutter/material.dart';
import 'package:restaurantfoodapp/Components/DefaultHeader.dart';
import 'package:restaurantfoodapp/Components/FoodCard.dart';
import 'package:restaurantfoodapp/Components/defaultButtoms.dart';
import 'package:restaurantfoodapp/Model/foodMenueModel.dart';

class DetailScreen extends StatefulWidget {
  final String foodName;
  final String foodType;
  final String ratings;
  final String times;
  final String deliveryCharges;
  final String numberOfRatings;
  final String bgImage;
  final int requiredIndex;

  const DetailScreen(
      {Key key,
      @required this.foodName,
      @required this.foodType,
      @required this.ratings,
      @required this.times,
      @required this.deliveryCharges,
      @required this.numberOfRatings,
      @required this.bgImage,
      @required this.requiredIndex})
      : super(key: key);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedIndex = 0;
  List<String> list = [
    "Most Popular",
    "Breakfast",
    "Burgers",
    "Dessert",
    "Beverage",
    "Continential",
    "Indian/Thalis"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                DefaultHeader(
                  isImage: true,
                  image: widget.bgImage,
                ),
                Container(
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              DefaultButtons(
                                icon: Icon(Icons.arrow_back),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              DefaultButtons(
                                icon: Icon(
                                  Icons.share,
                                ),
                                onTap: () {},
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              DefaultButtons(
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FoodCard(
                                isshadow: true,
                                index: widget.requiredIndex,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Featured items\t",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text: "9",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: foodDishMenu.length,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 25, right: 5),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            height: 160,
                            width: 325,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, -1),
                                    blurRadius: 8),
                              ],
                              image: DecorationImage(
                                image: AssetImage(foodDishMenu[index].img),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              foodDishMenu[index].title,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              foodDishMenu[index].price,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(
              color: Colors.black,
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.transparent),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, int index) {
                    return TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Text(
                        list[index],
                        style: TextStyle(
                          fontSize: 18,
                          color: selectedIndex == index
                              ? Colors.black
                              : Colors.grey[400],
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Chicken Torta Sandwich",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          "\$5.50",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Grilled Chicken,black beans, avocado",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[400],
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
