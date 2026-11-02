void main() {
  final products = <Map<String, dynamic>>[
    {'name': 'apple', 'price': 5.0, 'qty': 10},
    {'name': 'bread', 'price': 12.0, 'qty': 0},
    {'name': 'milk', 'price': 20.0, 'qty': 4},
    {'name': 'rice', 'price': 30.0, 'qty': 2},
    {'name': 'tea', 'price': 45.0, 'qty': 0},
  ];

  for (var p in products) {
    print('${p['name']}: ${p['price']} EGP x ${p['qty']}');
  }

  print(
    'In stock: ${products.where((p) => p['qty'] > 0).map((p) => p['name']).toList()}',
  );

  print(
    'Out of stock: ${products.where((p) => p['qty'] == 0).map((p) => p['name']).toList()}',
  );

  print(
    'Premium in stock: ${products.where((p) => p['qty'] > 0 && p['price'] > 10).map((p) => p['name']).toList()}',
  );

  double total = 0;

  for (var p in products) {
    total += p['price'] * p['qty'];
  }

  print('Total stock value: $total');

  products.forEach((p) {
    if (p['qty'] == 0) {
      p['qty'] += 5;
    }
  });

  print(
    'In stock after restock: ${products.where((p) => p['qty'] > 0).map((p) => p['name']).toList()}',
  );

  total = 0;

  for (var p in products) {
    total += p['price'] * p['qty'];
  }

  print('Total stock value after restock: $total');
}
