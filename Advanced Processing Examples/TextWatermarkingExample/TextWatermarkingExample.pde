

void setup() {

  // Original text
  String original = "At the end of the quiz the";

  // Generate cover text for each username
  for (int index=0; index<50; index++) {
    // Determine the message uniquely identifying the person
    String message = Integer.toBinaryString(index);
    // Hide the message in the cover text
    String cover = applyWaterMark(original, message);
    // Print it out
    print(index+","+message+","+cover);
    // Do a test decode
    WaterMarker wm = new WaterMarker();
    wm.cover=cover;
    println(","+wm.decode());
  }
}

String applyWaterMark(String original, String message) {
  WaterMarker marker = new WaterMarker();
  marker.original =  original;
  marker.encode(message);
  return marker.cover;
}

