void main() {
  Map<String, int> grades = {'Sara': 85, 'Omar': 42, 'Nour': 67};

  grades['Ali'] = 55;
  grades['Omar'] = 58;

  print('Mona: ${grades.containsKey('Mona')}');

  grades.remove('Nour');

  grades.forEach((student, grade) {
    print('$student: $grade - ${grade >= 50 ? 'Pass' : 'Fail'}');
  });

  print(grades.keys);
  print(grades.values);

  grades['Ali'] = 45;

  print(
    'Ali: ${grades['Ali']} - '
    '${grades['Ali']! >= 50 ? 'Pass' : 'Fail'}',
  );
}
