#ifndef Display_h
#define Display_h

#include "Adafruit_LEDBackpack.h"
#include "Adafruit_GFX.h"

class Display: public Adafruit_AlphaNum4 {
  public:
  void string(String s);
};

#endif
