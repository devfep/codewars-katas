import 'dart:io';

void main(List arguments) {
  if (arguments.isEmpty) {
    print(
        'Please include filepath in command ie. dart data-processing.dart <inputFile.csv>');
    // exit function from the io library
    // convention to have 0 error code on success or non-zero(1) error code on failure
    exit(1);
  }

  final inputFile = arguments.first;
  final lines = File(inputFile).readAsLinesSync();
  for (var line in lines) {
    print(line);
  }
}



// TODO: Group Activities by Durations

// 1. lines = readFile(inputFile);

// Remove first line after analyzing index since it only contains header


// CSV header on first line of lines.
// Group activities with their respective durations as Map
