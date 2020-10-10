class Button {
  float x, y;
  float btnWidth, btnHeight;
  public String btnText;

  boolean toggled = false;
  color currentColor;

  public Button(PVector pos, String btnText) {
    this.x = pos.x;
    this.y = pos.y;
    this.btnWidth = 100;
    this.btnHeight = 50;
    this.btnText = btnText;
    this.currentColor = color(200, 0, 0);
  }
  
  public void setText(String text){
    this.btnText = text;
  }
  
  private boolean isHover() {
    return (mouseX > x && mouseX < x+btnWidth && mouseY > y && mouseY < y+btnHeight);
  }

  private void clickedOn() {
    if (isHover()) {
      currentColor = ButtonColor.ONHOVER;
    } else {
      currentColor = ButtonColor.INACTIVE;
    }
  }

  public void draw() {
    clickedOn();
    fill(currentColor);
    rect(x, y, btnWidth, btnHeight);
    textAlign(CENTER);
    fill(0);
    textSize(20);
    text(btnText, x+btnWidth/2, y+btnHeight/2+7);
  }
}

static class ButtonColor {
  public static int ACTIVE = -1;
  public static int INACTIVE = -5526613;
  public static int ONHOVER = -10197916;
} 
