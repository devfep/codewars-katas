// Given the following list of restaurants:

// void main() {
//   var restaurants = [
//     {
//       'name': 'Pizza Mario',
//       'cuisine': 'Italian',
//       'ratings': [4.0, 3.5, 4.5],
//     },
//     {
//       'name': 'Chez Anne',
//       'cuisine': 'French',
//       'ratings': [5.0, 4.5, 4.0],
//     },
//     {
//       'name': 'Navaratna',
//       'cuisine': 'Indian',
//       'ratings': [4.0, 4.5, 4.0],
//     },
//   ];
// }
// Write a program that calculates the average rating score for each restaurant, and adds it as an 'avgRating': value key-value pair for that restaurant.

void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  final ratingSumArr = [];

  for (var restaurant in restaurants) {
    double ratingSum = 0.0;

//     Each restaurant's rating
    final ratings = restaurant['ratings'] as List<double>;

//     Sum up each ratings array per iteration and add it to a List
    ratings.forEach((e) => ratingSum += e);
    ratingSumArr.add(ratingSum);

//     Iterate over Arr containing sum of ratings to calc average and add it to nested Map.

    for (int i = 0; i < ratingSumArr.length; i++) {
      restaurant['avgRating'] = (ratingSumArr[i] / ratings.length);
    }
  }

  print(restaurants);
}
