class bacteria {
  int myX, myY;
  int myColor;

  bacteria() {
    myColor = color(255, 255, 0);  // Default color (yellow)
    myX = myY = 250;  // Initial position at center
  }

  void move() {
    if (mouseX > myX) {
      myX = myX + (int)(Math.random() * 7) - 2;
    } else {
      myX = myX + (int)(Math.random() * 6) - 4;
    }

    if (mouseY > myY) {
      myY = myY + (int)(Math.random() * 7) - 2;
    } else {
      myY = myY + (int)(Math.random() * 6) - 4;
    }
  }

  void moveFast() {
   myY=mouseY;
   myX=mouseX;
    }
 

  void show() {
    fill(myColor);
    ellipse(myX, myY, 20, 20);
  }
}

bacteria[] bobs;

void setup() {
  size(500, 500);
  bobs = new bacteria[100];

  // Initialize all bacteria
  for (int i = 0; i < bobs.length; i++) {
    bobs[i] = new bacteria();
  }

  // Set the color of the first bacteria (bobs[0]) to a specific color
  bobs[0].myColor = color(155, 103, 60);  // Different color (brownish)
}

void draw() {
  background(0);

  for (int i = 0; i < bobs.length; i++) {
    if (i == 0) {
      // Make the first bacteria move faster
      bobs[i].moveFast();
    } else {
      // Move normally for all other bacteria
      bobs[i].move();
    }

    bobs[i].show();  // Show the bacteria
  }
}
