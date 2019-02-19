String[] food;//Declare

food = new String[5];//Create

food[0]= "apples";//Assign
food[1]="tomatoes";
food[2]="tomatos";
food[3]="potatos";
food[4]="potatoes";

float[] prices = {10.05,5.25,4.33,12.44,3.21,14.31};

int[] shoppingList = new int[6];

//Create a random list of foods
for (int i = 0; i < shoppingList.length; i++) {
  shoppingList[i]=floor(random(food.length));
}

//use the item indexs to access other array elements
for (int i = 0; i < shoppingList.length; i++) {
  println(" " + food[shoppingList[i]]);
  println(" " + prices[shoppingList[i]]);
}
