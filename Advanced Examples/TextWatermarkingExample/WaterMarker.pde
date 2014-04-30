class WaterMarker {

  // String storing the original text and cover text
  public String original, cover;

  // Method to get the number of spaces (bits) in the string
  public int bandwidth() {
    if (original==null) return 0;
    return original.split(" ").length - 1;
  }

  // Method to encode a bit string into the cover text
  public void encode(String message) {
    String[] words = original.split(" ");
    cover = words[ words.length-1 ];
    int messageIndex=message.length()-1;
    for (int index=words.length-2; index>=0 ; index--) {
      char messageBit='0';
      if (messageIndex>=0)
        messageBit = message.charAt(messageIndex--);
      if (messageBit=='0')
        cover = words[ index ] + " " + cover;
      else
        cover = words[ index ] + "  " + cover;
    }
  }

  // Method to decode a message
  // Requires the cover string to be set
  public String decode() {
    if (cover==null) return "";
    String message="";
    for (int index=0; index<cover.length()-1; index++) {
      if (cover.charAt(index)==' ' &&  cover.charAt(index+1)!=' ')
        message+="0";
      else if (cover.charAt(index)==' ' &&  cover.charAt(index+1)==' ') {
        message+="1";
        index++; 
      }
    }

    return message;
  }
}

