"use strict";

// Write a function that checks if a given string (case insensitive) is a palindrome.

function isPalindrome(x) {
  x = x.toLowerCase();
  if (x === "") {
    return true;
  }
  for (let i = 0; i < x.length; i++) {
    return x[i] === x[x.length - 1 - i];
  }
}
