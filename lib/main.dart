import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  print("=== Student Record Management System ===\n");

  while (true) {
    stdout.write("Enter student name (or type 'exit' to finish): ");
    String? name = stdin.readLineSync();

    if (name == null || name.toLowerCase() == 'exit') {
      break;
    }

    stdout.write("Enter student ID: ");
    String? id = stdin.readLineSync();

    // Check for unique ID
    bool idExists = students.any((student) => student['id'] == id);
    if (idExists) {
      print("⚠️ ID already exists! Please enter a unique ID.\n");
      continue;
    }

    stdout.write("Enter student score (0 - 100): ");
    double? score = double.tryParse(stdin.readLineSync() ?? '');

    if (score == null || score < 0 || score > 100) {
      print("⚠️ Invalid score! Please enter a value between 0 and 100.\n");
      continue;
    }

    String grade = getGrade(score);

    students.add({
      'name': name,
      'id': id,
      'score': score,
      'grade': grade,
    });

    print("✅ Record added successfully!\n");
  }

  if (students.isEmpty) {
    print("\nNo student records entered.");
    return;
  }

  // Sort students by score (descending)
  students.sort((a, b) => b['score'].compareTo(a['score']));

  print("\n=== All Student Records (Sorted by Score) ===");
  for (var student in students) {
    print(
        "Name: ${student['name']}, ID: ${student['id']}, Score: ${student['score']}, Grade: ${student['grade']}");
  }

  // Display statistics
  double highest = students.first['score'];
  double lowest = students.last['score'];
  int total = students.length;

  print("\n=== Summary ===");
  print("Total number of students: $total");
  print("Highest score: $highest");
  print("Lowest score: $lowest");
}

String getGrade(double score) {
  if (score >= 90) return "A+";
  else if (score >= 80) return "A";
  else if (score >= 70) return "B";
  else if (score >= 60) return "C";
  else if (score >= 50) return "D";
  else return "F";
}
