import 'package:flutter/material.dart';
import 'package:restaurantfoodapp/Model/FoodCardModel.dart';
import 'package:restaurantfoodapp/constants.dart';

class FoodCard extends StatelessWidget {
  final int index;
  final bool isshadow;

  const FoodCard({Key key, this.index, this.isshadow}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          isshadow
              ? BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(0, -1),
                )
              : BoxShadow(),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              foodcardmodel[index].foodName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              foodcardmodel[index].foodType,
              style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 15,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.star,
                  color: Constants.headerColor,
                  size: 20,
                ),
                Text(
                  foodcardmodel[index].ratings,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  foodcardmodel[index].numberOfRatings,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Icon(
                  Icons.timer,
                  color: Colors.grey[400],
                  size: 20,
                ),
                Text(
                  foodcardmodel[index].times,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Icon(
                  Icons.monetization_on,
                  color: Colors.grey[400],
                  size: 20,
                ),
                Text(
                  foodcardmodel[index].deliveryCharges,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
