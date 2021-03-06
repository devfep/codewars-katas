// Write a function called sum that takes a list of values as an argument (List<double>), and returns the sum of all the values.

// Then, call the function multiple times with different input values (example: [], [1, 2], [1, 2, 3, 4]) and print the result.

void main() {
  double sum = 0.0;
  double addListVals(List<double> arr) {
    if (arr.isEmpty) {
      return 0.0;
    } else {
      for (var value in arr) {
        sum += value;
      }
      return sum;
    }
  }

  print(addListVals([1, 2, 3, 4]));
}
