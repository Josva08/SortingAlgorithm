int[] list1 = {8, 10, 3, 2, 4};
//int[] list2 = {5, 3, 1, 4, 12);

int[]listToSort = new int[5];

void setup() {
  listToSort = shuffel(listToSort);
  printArray(list1);
}

void draw() {
}
//dette shuffler array
int[] shuffel(int[] list) {
  for (int i =0; i<list.length; i++) {
    list[i]=(int)random(0, 256);
  }
//sorteres af sort funktionen
  list1=sort(list1);
  return list;
}
