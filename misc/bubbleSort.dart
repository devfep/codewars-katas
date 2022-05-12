void main() {
  List bubbleSort(List<int> arr) {
    bool sorted = false; //prior to sorting, arr is set to unsorted
    int unsortedUntilIndex = arr.length -
        1; //to keep track of the last item of array which will be in the extreme right in each sort run

    while (!sorted) {
      sorted =
          true; //assume arr is sorted until we encounter a swap in the if block which makes it unsorted

      for (int i = 0; i < unsortedUntilIndex; i++) {
        if (arr[i] > arr[i + 1]) {
          int temp = arr[i];
          arr[i] = arr[i + 1];
          arr[i + 1] = temp;
          sorted = false;
        }
      }
      unsortedUntilIndex -= 1;
    }
    return arr;
  }

  // Example
  print(bubbleSort([2, 31, 34, 40, 1, 3, 0, -2]));
}
