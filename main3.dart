void main() {
  final numbers = [3, 8, 12, 5, 20, 7, 15];
  final names = ['sara', 'ahmed', 'omar', 'ali', 'nour'];

  print(numbers.where((n) => n > 10).toList());
  print(numbers.map((n) => n * 2).toList());

  print(numbers.where((n) => n % 2 == 0).map((n) => n * n).toList());

  print(
    names.where((n) => n.startsWith('a')).map((n) => n.toUpperCase()).toList(),
  );

  print(numbers.where((n) => n % 2 != 0 && n < 10).length);

  print(names.map((n) => n.toUpperCase()).join(', '));
}
