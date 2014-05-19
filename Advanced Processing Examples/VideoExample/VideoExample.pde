
// Import processing video classes
import processing.video.*;

// Declare a reference to a movie object
Movie movie;

// Setup method
void setup() {
  size(800,600);
  // Create a movie object
  movie = new Movie(this, "sample.mov");
  // Tell the movie to start playing forever
  movie.loop();
}

// Draw method
void draw() {
  // Draw the current frame
  image(movie, 0, 0);
}

// Event method that is called every time a new frame is available to read
void movieEvent(Movie movie) {
  movie.read();
}
