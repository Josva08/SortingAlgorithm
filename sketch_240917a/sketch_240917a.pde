int[] list = {8, 10, 3, 2, 4};
//int[] list2 = {5, 3, 1, 4, 12);

int[]listToSort = new int[5];

void setup() {
  listToSort = shuffel(listToSort);
  list = mySort(list);
  printArray(list);
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
  boolean done = false;

  while (!done) {
    for ( int i=0; i<list.length-1; i++) {
      if (list[i]>list[i+1]) {
        int temp=list[i];
        list[i]=list[i+1];
        list[i+1]=temp;
        done=false;
      } else {
        done=true;
      }
    }
  }
  return list;
}
