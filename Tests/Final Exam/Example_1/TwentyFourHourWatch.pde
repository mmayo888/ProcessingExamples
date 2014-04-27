class TwentyFourHourWatch extends Watch {

  public TwentyFourHourWatch(int hour, int min) {
    super(hour, min);
  }

  public String toString() {
    int tmpHour = hour;
    if (!isAM) tmpHour += 12; 
    String result = pad(tmpHour)+":"+pad(min)+" ";
    return result;
  }
}

