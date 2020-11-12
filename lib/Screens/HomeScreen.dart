import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurantfoodapp/Components/DefaultHeader.dart';
import 'package:restaurantfoodapp/Components/FoodCard.dart';
import 'package:restaurantfoodapp/Components/MenuButton.dart';
import 'package:restaurantfoodapp/Components/defaultButtoms.dart';
import 'package:restaurantfoodapp/Model/FoodCardModel.dart';
import 'package:restaurantfoodapp/constants.dart';

import 'detailScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                DefaultHeader(
                  isImage: false,
                ),
                Container(
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Delivery address",
                                    style: TextStyle(
                                      color: Constants.subtitleColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Pune Ghorpadi 12 /",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              DefaultButtons(
                                icon: Icon(Icons.search),
                                onTap: () {},
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              DefaultButtons(
                                icon: Icon(Icons.person),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 350,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Scrollbar(
                            isAlwaysShown: true,
                            radius: Radius.circular(30),
                            controller: _scrollController,
                            child: ListView.builder(
                              controller: _scrollController,
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: foodcardmodel.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 25, right: 5),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                            builder: (context) => DetailScreen(
                                              requiredIndex: index,
                                              bgImage:
                                                  foodcardmodel[index].bgImage,
                                              foodName:
                                                  foodcardmodel[index].foodName,
                                              foodType:
                                                  foodcardmodel[index].foodType,
                                              ratings:
                                                  foodcardmodel[index].ratings,
                                              times: foodcardmodel[index].times,
                                              deliveryCharges:
                                                  foodcardmodel[index]
                                                      .deliveryCharges,
                                              numberOfRatings:
                                                  foodcardmodel[index]
                                                      .numberOfRatings,
                                            ),
                                          ));
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 20),
                                      width: 330,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            offset: Offset(0, -1),
                                            blurRadius: 8,
                                          ),
                                        ],
                                        image: DecorationImage(
                                          image: AssetImage(
                                              foodcardmodel[index].bgImage),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  Icons.favorite,
                                                  size: 30,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          FoodCard(
                                            index: index,
                                            isshadow: true,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            MenuButton(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All restaurants",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "sorted By Fasted Delivery",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  DefaultButtons(
                    icon: Icon(
                      Icons.tune,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            FoodCard(
              isshadow: false,
              index: index,
            )
          ],
        ),
      ),
    );
  }
}
