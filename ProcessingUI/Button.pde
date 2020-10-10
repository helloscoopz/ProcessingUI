class Button {
  private PVector position;
  private int w, h;
  private String text;
  private color fillColor, textColor;

  public Button(PVector position, String text, int w, int h, color fillColor, color textColor) {
    this.position = position;
    this.position = position;
    this.w = w;
    this.h = h;
    this.text = text;
    this.fillColor = fillColor;
    this.textColor = textColor;
  }
  
  public Button(PVector position, String text, int w, int h) {
    this.position = position;
    this.position = position;
    this.w = w;
    this.h = h;
    this.text = text;
    this.fillColor = color(255);
    this.textColor = color(0);
  }

  public void setText(String text) {
    this.text = text;
  }

  public boolean isHover() {
    return (mouseX > position.x && mouseX < position.x+w && mouseY > position.y && mouseY < position.y+w);
  }

  public boolean isClicked() {
    return isHover() && mousePressed;
  }

  public void draw() {
    fill(fillColor);
    rect(position.x, position.y, w, h);
    textAlign(CENTER);
    fill(textColor);
    textSize(20);
    text(text, position.x+w/2, position.y+h/2);
  }
}
