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
  final totalDurationByTag = <String, double>{};
  lines.removeAt(0);
  var totalDuration = 0.0;
  for (var line in lines) {
    final values = line.split(',');
    final durationStr = values[3].replaceAll('"', '');
    final duration = double.parse(durationStr);
    final tag = values[5].replaceAll('"', '');
    final previousTotal = totalDurationByTag[tag];
    (previousTotal == null)
        ? totalDurationByTag[tag] = duration
        : totalDurationByTag[tag] = previousTotal + duration;
    totalDuration += duration;
  }
  for (var entry in totalDurationByTag.entries) {
    final durationFormatted = entry.value.toStringAsFixed(1);
    final tag = entry.key == '' ? 'Unallocated' : entry.key;
    print('$tag: ${durationFormatted}h');
  }
  print('Time spent for all tasks: ${totalDuration.toStringAsFixed(1)}h');
}



// TODO: Group Activities by Durations Pseudocode

// 1. lines = readFile(inputFile);
// 2. durationByTag = {};
// 3. lines.removeFirst()...we don't the header line
// 4. Loop thru each line and split columns by their comma delimiter
//  for (line in lines)
//      values = line.split(',')     
// 5.   duration = value [3]
// 6.   tag = value[5]

// Remove first line after analyzing index since it only contains header


// CSV header on first line of lines.
// Group activities with their respective durations as Map
