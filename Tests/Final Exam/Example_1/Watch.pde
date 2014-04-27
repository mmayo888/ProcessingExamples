class Watch {

  public int hour, min;                            // L1
  public boolean isAM;                             // L2

  public Watch(int hour, int min) {                // L3
    this.hour = hour;                              // L4
    this.min  = min;                               // L5
    isAM = true;                                   // L6
  }  

  public String toString() {                       // L7
    String result = pad(hour)+":"+pad(min)+" ";    // L8
    if (isAM) result += "AM";                      // L9
    else result += "PM";                           // L10
    return result;                                 // L11
  }

  public void incrementMin() {                     // L12
    min++;                                         // L13
    if (min>59) {                                  // L14
      min=0;                                       // L15
      incrementHour();                             // L16
    }
  }

  public void incrementHour() {                    // L17
    hour++;                                        // L18
    if (hour>12) {                                 // L19
      hour=1;                                      // L20
      isAM = !isAM;                                // L21
    }
  }

  protected String pad(int value) {                // L22
    if (value<10) return "0"+value;                // L23
    else return ""+value;                          // L24
  }
}

