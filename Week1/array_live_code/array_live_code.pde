String[] shopInventory;//Declare

shopInventory = new String[5];//Create

shopInventory[0]= "apples";//Assign
shopInventory[1]="tomatoes";
shopInventory[2]="tomatos";
shopInventory[3]="potatos";
shopInventory[4]="potatoes";

float[] storePrice = {10.05,5.25,4.33,12.44,3.21,14.31};

int[] receipt = new int[6];

//Create a random list of shopInventorys
for (int i = 0; i < receipt.length; i++) {
  receipt[i]=floor(random(shopInventory.length));
}


int totalPrice = 0;
println("Receipt");
//use the item indexs to access other array elements
for (int i = 0; i < receipt.length; i++) {
  println(" " + shopInventory[receipt[i]]);
  println(" " + storePrice[receipt[i]]);
  totalPrice+=storePrice[receipt[i]];
}
println("Total Price: " + totalPrice);
