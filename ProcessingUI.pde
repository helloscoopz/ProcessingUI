Button btn;

void settings() {
  size(500, 500);
}

void setup() {
  btn = new Button(new PVector(20, 20), "Hello", 200, 50);
}

void draw() {
  btn.draw();
}

void mousePressed() {
  if (btn.isHover()) {
    println("Button Clicked");
  }
}
