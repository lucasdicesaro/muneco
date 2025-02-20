int rectSize = 70;
int xLimit = 10;
int yLimit = 10;

int xCoord = 0;
int yCoord = 0;
int xCoordAnt = 0;
int yCoordAnt = 0;


void setup() {
  size(700,700);
  
  fill(255);
  for (int i = 0; i < yLimit; i++) {
   for (int j = 0; j < xLimit; j++) {
    rect (rectSize*j,rectSize*i,rectSize,rectSize);
   }
  }

  // llena cuadrados negros
  fill(0);
  rect (rectSize*xCoord,rectSize*yCoord,rectSize,rectSize);
}

void draw() {

}


void keyPressed() {
  if (key == CODED) {
    xCoordAnt=xCoord;
    yCoordAnt=yCoord;
    
    switch(keyCode) {
      case LEFT:
        if (xCoord > 0) {
          xCoord--;
        }
        break;
      case RIGHT:
        if (xCoord < xLimit - 1) {
          xCoord++;
        }
        break;
      case UP:
        if (yCoord > 0) {
          yCoord--;
        }
        break;
      case DOWN:
        if (yCoord < yLimit - 1) {
          yCoord++;
        }
        break;
    }

    // Llena cuadrados blancos. Limpia posicion anterior
    fill(255);
    rect (rectSize*xCoordAnt,rectSize*yCoordAnt,rectSize,rectSize);
    
    // llena cuadrados negros
    fill(0);
    rect (rectSize*xCoord,rectSize*yCoord,rectSize,rectSize);
 }

 System.out.println("(X:"+xCoord+",Y:"+yCoord+")");
 System.out.println("(X:"+xCoordAnt+",Y:"+yCoordAnt+") (anterior)");
}
