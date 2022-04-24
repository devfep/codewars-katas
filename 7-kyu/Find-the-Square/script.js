// Problem
// Complete the function that takes an odd integer (0 < n < 1000000) which is the difference between two consecutive perfect squares, and return these squares as a string in the format "bigger-smaller"

// Examples
// 9  -->  "25-16"
// 5  -->  "9-4"
// 7  -->  "16-9"

"use strict";

const findSquares = (num) => {
  let max = Math.round(num / 2);
  let min = Math.floor(num / 2);
  let maxSquared = max ** 2;
  let minSquared = min ** 2;

  return `${maxSquared}-${minSquared}`;
};
