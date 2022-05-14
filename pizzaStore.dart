// Given the following map of pizza prices:

// const pizzaPrices = {
//   'margherita': 5.5,
//   'pepperoni': 7.5,
//   'vegetarian': 6.5,
// };
// Write a program to calculate the total for a given order.

// For example, given the following order:

// const order = ['margherita', 'pepperoni'];
// The program should print:

// Total: $13`
// Note: if a pizza is not on the menu, the program should print something like this:

// pineapple pizza is not on the menu

void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegeterian': 6.5,
  };

  const order = ['margherita', 'vegeterian', 'pineapple'];

  double sum = 0;

  for (String ord in order) {
    if (pizzaPrices[ord] == null) {
      print('$ord not on the menu');
      break;
    } else {
      sum += pizzaPrices[ord] as double;
    }
    ;
  }
  print('Total for items on the menu: \$$sum');
}
