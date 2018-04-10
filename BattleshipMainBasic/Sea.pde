ArrayList<Sea> seas = new ArrayList();


class Sea extends Grid {
  boolean hasBoat;
  boolean boatHidden;
  boolean clicked;
  int x, y;
  //this determines where the sea is drawn and if the boats are hidden or not
  Sea(int ix, int iy, boolean iboatHidden) {    
    boatHidden = iboatHidden;
    hasBoat = random(10)<8;
    clicked = false;
    x = ix;
    y = iy;
  }
  void draw() {
    pushMatrix();
    translate(x, y);
    fill(128, 128, 255);
    stroke(0, 0, 255);
    rect(0, 0, 40, 40);
    //if sea is clicked and it doesnt have a boat then draw a white circle
    if ( !hasBoat && clicked ) {
      fill(255);
      stroke(0);
      ellipse(20, 20, 24, 24);
    }
    //if sea doesnt have boats hidden and it has boats then draw a grey square
    if ( !boatHidden && hasBoat ) {
      fill(128);
      stroke(0);
      rect(5, 5, 30, 30);
    }
    //if sea has a boat and it's clicked then draw a red circle
    if ( hasBoat && clicked ) {
      fill(255, 0, 0);
      stroke(0);
      ellipse(20, 20, 24, 24);
    }
    popMatrix();
  }
  void click() {
    if ( mouseX > x && mouseX < x+40 && mouseY > y && mouseY < y+40 ) {
     clicked = true;
    }
  }
}