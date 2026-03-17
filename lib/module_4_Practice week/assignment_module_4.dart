// Develop a Dart console-based program that manages student records.

// Requirements:

// The program should accept student information (name, ID, and score) from the user input.

// Store all records in a List of Map

// Create a grading system that gives each student a letter grade (A+ grade to F grade) based on their score.

// Ensure student IDs are unique.

// Display the following outputs:

// A sorted list of students by score (descending order).

// The total number of students entered.

// The highest and lowest scores among all students.

// Submission guidelines: You have to submit your answer via github link. If you are a beginner and have not any idea about github submission then please submit your answer with PDF or google drive.

// My answer link:
// https://github.com/Atiqs3404/assignment_flutter_batch_14.git

import 'dart:io';

void main() {
  List<Map<String, dynamic>> studentRecords = [];
  Set<String> studentIDs = {};

  while (true) {
    print('Enter student name (or type "exit" to finish):');
    String? name = stdin.readLineSync();
    if (name == null || name.toLowerCase() == 'exit') {
      break;
    }

    String id;
    while (true) {
      print('Enter student ID:');
      id = stdin.readLineSync() ?? '';
      if (!studentIDs.contains(id)) {
        studentIDs.add(id);
        break;
      } else {
        print('ID already exists. Please enter a unique ID.');
      }
    }

    print('Enter student score:');
    double score = double.parse(stdin.readLineSync() ?? '0');

    String grade;
    if (score >= 90) {
      grade = 'A+';
    } else if (score >= 80) {
      grade = 'A';
    } else if (score >= 70) {
      grade = 'B';
    } else if (score >= 60) {
      grade = 'C';
    } else if (score >= 50) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    studentRecords.add({
      'name': name,
      'id': id,
      'score': score,
      'grade': grade,
    });
  }
}
