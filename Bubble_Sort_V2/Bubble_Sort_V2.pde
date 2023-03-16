float[] values;  //Beinhaltet die Werte zum sortieren

int i = 0; // Initiallisieren einer Variable für die nachfolgenden FOR-Loops
int j = 0;

void setup() {
  //fullScreen(P2D);
  size(800, 400);
  
 values = new float[width];
  for (int i = 0; i < values.length; i++) {
    values[i] = random(height);
  }
}

void draw() {
  background(0);

  if (i < values.length) {
    for (int j = 0; j < values.length-i-1; j++) {
      float a = values[j];
      float b = values[j+1];
      //Vergleicht die zwei Werte und tauscht deren Pos aus wenn nötig
      if (a > b) {            
        swap(values, j, j+1);
      }
    }
  } else {
    println("finished");
    noLoop(); //Stoppt die Draw Funktion wenn die Sortierung beendet ist
  }
  i++;

  for (int i = 0; i < values.length; i++) {
    stroke(255);
    line(i, height, i, height - values[i]);  //Zeichnet die Linien, gemäss der Pos im Array
  }
}
