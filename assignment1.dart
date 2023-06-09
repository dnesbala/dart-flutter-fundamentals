void calculateAverage(List<String> subjects, List<int> scores) {
  int sum = 0;
  for (int i = 0; i < scores.length; i++) {
    sum = sum + scores[i];
  }
  var avg = sum / scores.length;
  print("Average score : $avg");

  String grade;
  if (avg > 90) {
    grade = "A";
  } else if (avg > 80) {
    grade = "B";
  } else if (avg > 70) {
    grade = "C";
  } else {
    grade = "D";
  }
  print("Grade: $grade");

  var filteredScores = scores.where((element) => element > 60).toList();

// indexOf() gives the  index of element in the list
  var filteredSubjects =
      filteredScores.map((e) => subjects[scores.indexOf(e)]).toList();
  print(">60 scores: $filteredScores");
  print(">60 subjects: $filteredSubjects");

  var uppercasedFilteredSubjects =
      filteredSubjects.map((e) => e.toUpperCase()).toList();
  print("Uppercase filtered subjects: $uppercasedFilteredSubjects");
}

void main() {
  List<String> subjects = [
    "Numerical Method",
    "C++",
    "Statistics",
    "Data Structures"
  ];
  List<int> scores = [80, 45, 56, 90];

// indexOf() gives the  index of element in the list. E.g.
  // print("Index is ${subjects.indexOf("Data Structures")}"); //3
  // print("Index is ${subjects.indexOf("nepal")}"); //1
  calculateAverage(subjects, scores);
}
