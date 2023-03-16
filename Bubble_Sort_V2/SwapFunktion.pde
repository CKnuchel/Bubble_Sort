void swap(float[] arr, int a, int b) {
  float temp = arr[a];  //Speichert den Wert in der Variable Temp zwischen
  arr[a] = arr[b];      //Setzt den Wert von B an die Pos an der A war
  arr[b] = temp;        //Fügt den Wert der gespeichert wurde an Platz von B ein
}
