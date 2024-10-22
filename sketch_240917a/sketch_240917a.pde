int[] list = {8, 10, 3, 2, 4};
//int[] list2 = {5, 3, 1, 4, 12);

int[]listToSort = new int[5];

void setup() {
  noLoop();
  size(500, 200);
  listToSort = shuffel(listToSort);
  list = mySort(list);
  printArray(list);
  frameRate(5);
}

void draw() {
  
}
//dette shuffler array
int[] shuffel(int[] list) {
  for (int i =0; i<list.length; i++) {
    list[i]=(int)random(0, 256);
  }
  //sorteres af sort funktionen
  //list=sort(list);
  return list;
}

int[] mySort(int[] list) {

  for (int j=0; j<list.length-1; j++) {
    for ( int i=0; i<list.length-1; i++) {
      if (list[i]>list[i+1]) {
        int temp=list[i];
        list[i]=list[i+1];
        list[i+1]=temp;
        background(50);
        displayArray(list);
      }
    }
  }
  return list;
}

void displayArray(int[] arr) {
  int barWidth = width / arr.length;  // Determine width of each bar

  for (int i = 0; i < arr.length; i++) {
    float barHeight = map(arr[i], 0, 50, 0, height);  // Map value to screen height
    fill(100, 150, 255); // Set bar color
    rect(i * barWidth, height - barHeight, barWidth - 2, barHeight);  // Draw the bar
  }
}
