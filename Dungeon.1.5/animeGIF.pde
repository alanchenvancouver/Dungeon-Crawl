class AnimatedGIF {

  PImage[] images;
  int currentImg;
  int rate;

  AnimatedGIF(int n, String prefix, String suffix) {
    images = new PImage[n];
    loadImages(prefix, suffix);
    currentImg = 0;
    rate = 3;
  }
  
  AnimatedGIF(int n, int r, String prefix, String suffix) {
    images = new PImage[n];
    loadImages(prefix, suffix);
    currentImg = 0;
    rate = r;
  }

  void show(float x, float y, float w, float h) {
      if (currentImg >= images.length) currentImg = 0;
    image(images[currentImg], x, y, w, h);
    if (frameCount % rate == 0) currentImg++;   
  }

  void loadImages(String prefix, String suffix) {
    int i = 0;
    while (i < images.length) {
      String leadingZero = "";
      if (images.length <= 10) leadingZero = "";
      else if (images.length <= 100) {
        if (i < 10) leadingZero = "";
        else leadingZero = "";
      } else if (images.length > 100) {
        if (i < 10) leadingZero = "00";
        else if (i < 100) leadingZero = "0";
        else leadingZero = "";
      }
      images[i] = loadImage(prefix+leadingZero+i+suffix);
      i++;
    }
  }
} //end of class
