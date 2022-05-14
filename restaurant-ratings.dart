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

  for (var restaurant in restaurants) {
    var ratingSum = 0.0;
    final ratings = restaurant['ratings'] as List<double>;
    for (var rating in ratings) {
      ratingSum += rating;
    }

    // With ratingSum for each restaurant per iteration, we can find aveRating

    final aveRating = ratingSum / ratings.length;

    restaurant['avgRating'] = aveRating.toStringAsFixed(1);
  }

  print(restaurants);
}
