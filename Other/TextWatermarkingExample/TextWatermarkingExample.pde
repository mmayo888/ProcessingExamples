

void setup() {

  // Original text
  String original = "Reads the contents of a file and ";
  original += "creates a String array of its individual ";
  original += "lines. If the name of the file is used as ";
  original += "the parameter, as in the above example, the ";
  original += "file must be loaded in the sketch's \"data\" ";
  original += "directory/folder.";

  // List of usernames that you want to embed
  String[] usernames = new String[] { 
    "code1", "code2", "code3"
  };

  // Generate cover text for each username
  for (int index=0; index<usernames.length; index++) {
    // Determine the message uniquely identifying the person
    String message = Integer.toBinaryString(index);
    // Hide the message in the cover text
    String cover = applyWaterMark(original, message);
    // Print it out
    println(usernames[index]+"/"+message);
    println(cover);
    // Do a test decode
    WaterMarker wm = new WaterMarker();
    wm.cover=cover;
    println(wm.decode());
  }
}

String applyWaterMark(String original, String message) {
  WaterMarker marker = new WaterMarker();
  marker.original =  original;
  marker.encode(message);
  return marker.cover;
}

