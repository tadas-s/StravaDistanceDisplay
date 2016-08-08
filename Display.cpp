#include "Display.h"

void Display::string(String s) {
  clear();
      
  for (int i = s.length() - 1, j = 3; i >= 0 && j >= 0; i--, j--) {
    bool dot = (s[i] == '.');

    if (dot) {
      i--;
      writeDigitAscii(j, s[i], true);  
    } else {
      writeDigitAscii(j, s[i]);
    }
  }
  
  writeDisplay();  
}

