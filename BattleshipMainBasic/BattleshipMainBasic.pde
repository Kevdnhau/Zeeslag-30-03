
void setup() {
  size(1920, 600);
  background(125);
  createGrids ();
}


void draw() {
  for ( int i = 0; i < seas.size (); i++) {
    seas.get(i).draw();
  }
}

class Grid {
}

private void createGrids () {
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      //player one
      seas.add(new Sea(80+40*i, 20+40*j, false) );
      seas.add(new Sea(520+40*i, 20+40*j, false) );
      //player two
      seas.add(new Sea(960+40*i, 20+40*j, false) );
      seas.add(new Sea(1400+40*i, 20+40*j, false) );
    }
  }
}

void mousePressed() {
  for ( int i = 0; i < seas.size (); i++) {
    seas.get(i).click();
  }
}