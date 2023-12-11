void main(){
  final fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];
  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);
  applyDiscount(fruits, 10);
  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (final fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}
void applyDiscount(List<Map<String, dynamic>> fruits, double discount) {
  for (final fruit in fruits) {
    var priceOfFruitsAfterDiscount = fruit['price'] * (1 - discount / 100);
    fruit['price'] = priceOfFruitsAfterDiscount.toStringAsFixed(2);
  }
}