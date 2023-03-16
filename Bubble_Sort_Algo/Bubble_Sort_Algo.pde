int[] list; //Speichert de Werte in einer Liste
int a;  //Ist der Punkt
int hoehe = 1000;
int breite = 1000;

void setup() {

  size(1000, 1000);
  background(255);

// Generieren der Liste mit Random Werten

  list = new int[breite];
  for (int i=0; i < list.length; i++) {
    list[i] = Math.round(random(0, hoehe));
  }

  println("Generierte Liste:");
  println(list);

  a=0;
}

void draw() {

  if (a==list.length-1) {
    a=0;
  }

  if (list[a]>list[a+1]) {

    int zwischenspeicher = list[a];
    list[a] = list[a+1];
    list[a+1] = zwischenspeicher;
  }

  a++;

  background(255);
  stroke(0);
  for (int a = 0; a<list.length; a++) {
    line(a, height, a, height-list[a]);
  }
}
