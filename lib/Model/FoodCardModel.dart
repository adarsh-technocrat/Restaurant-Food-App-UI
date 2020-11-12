class FoodCardModel {
  final String foodName;
  final String foodType;
  final String ratings;
  final String times;
  final String deliveryCharges;
  final String numberOfRatings;
  final String bgImage;
  FoodCardModel(
      {this.foodName,
      this.foodType,
      this.ratings,
      this.times,
      this.deliveryCharges,
      this.numberOfRatings,
      this.bgImage});
}

List<FoodCardModel> foodcardmodel = [
  FoodCardModel(
    foodName: "Nickel & Dinner",
    foodType: "American(Traditional), Breakfast",
    ratings: "4.9",
    numberOfRatings: "(284)",
    times: "15-25 mins",
    deliveryCharges: "free",
    bgImage: "assets/images/img1.jpg",
  ),
  FoodCardModel(
    foodName: "Elmira Rosticceria",
    foodType: "Poke,Hawallan,Seafood,Salads",
    ratings: "4.9",
    numberOfRatings: "(284)",
    times: "15-25 mins",
    deliveryCharges: "free",
    bgImage: "assets/images/img2.jpg",
  ),
  FoodCardModel(
    foodName: "The Tang NYC",
    foodType: "Asian Noodles",
    ratings: "4.9",
    numberOfRatings: "(284)",
    times: "15-25 mins",
    deliveryCharges: "\$2.4",
    bgImage: "assets/images/img3.jpg",
  ),
  FoodCardModel(
    foodName: " Sur un Arbre Perché",
    foodType: "American(Traditional), Breakfast",
    ratings: "4.9",
    numberOfRatings: "(284)",
    times: "15-25 mins",
    deliveryCharges: "free",
    bgImage: "assets/images/img4.jpg",
  ),
  FoodCardModel(
    foodName: "Signs",
    foodType: "American(Traditional), Breakfast",
    ratings: "4.9",
    numberOfRatings: "(284)",
    times: "15-25 mins",
    deliveryCharges: "free",
    bgImage: "assets/images/img5.jpg",
  ),
  FoodCardModel(
    foodName: "Eternity",
    foodType: "American(Traditional), Breakfast",
    ratings: "4.9",
    numberOfRatings: "(284)",
    times: "15-25 mins",
    deliveryCharges: "free",
    bgImage: "assets/images/img6.jpg",
  ),
  FoodCardModel(
    foodName: "The Disaster Café",
    foodType: "American(Traditional), Breakfast",
    ratings: "4.9",
    numberOfRatings: "(284)",
    times: "15-25 mins",
    deliveryCharges: "free",
    bgImage: "assets/images/img7.jpg",
  ),
];
