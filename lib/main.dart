/*
    Author: 
    Section: 
    Date created: 
    Exercise number: 
    Program Description: 
*/

void main() {
  const studentCount = 12;
  List<Student> allStudents = [];

  // Populating sample data
  Subject cmsc12 = Subject("CMSC 12", "Foundations of Computer Science", null);
  Subject cmsc21 = Subject("CMSC 21", "Fundamentals of Programming", cmsc12);
  Subject cmsc22 = Subject("CMSC 22", "Object-oriented Programming", cmsc21);
  Subject cmsc23 = Subject("CMSC 23", "Mobile Development", cmsc22);

  Section a1l = Section("A-1L", cmsc23);
  Section a2l = Section("A-2L", cmsc23);
  Section a3l = Section("A-3L", cmsc23);

  allStudents.add(Student("Snow White", 20, "2021-00000", "BSCS", 1.23));
  allStudents.add(Student("Cinderella", 21, "2021-00001", "BSCS", 2.12));
  allStudents.add(Student("Aurora", 21, "2021-00002", "BSSTAT", 1.56));
  allStudents.add(Student("Ariel", 22, "2021-00003", "BSCS", 1.89));
  allStudents.add(Student("Belle", 20, "2021-00004", "BSCS", 2.05));
  allStudents.add(Student("Jasmine", 22, "2021-00005", "BSCS", 1.09));
  allStudents.add(Student("Florian", 21, "2021-00006", "BSCS", 2.12));
  allStudents.add(Student("Henry", 20, "2021-00007", "BSCS", 1.78));
  allStudents.add(Student("Philip", 21, "2021-00008", "BSCS", 2.02));
  allStudents.add(Student("Eric", 22, "2021-00009", "BSCS", 1.82));
  allStudents.add(Student("Adam", 21, "2021-00010", "BSCS", 1.67));
  allStudents.add(Student("Aladdin", 21, "2021-00011", "BSCS", 1.03));

  // Add subjects already taken by the students
  for (int i = 0; i < studentCount; i++) {
    allStudents[i].subjectsTaken.add(cmsc12);
  }

  for (int i = 0; i < studentCount - 2; i++) {
    allStudents[i].subjectsTaken.add(cmsc21);
  }

  for (int i = 0; i < studentCount - 4; i++) {
    allStudents[i].subjectsTaken.add(cmsc22);
  }

  // Initially, print details of all students
  for (int i = 0; i < studentCount; i++) {
    allStudents[i].printStudentDetails();
    print("=====");
  }

  // Enlist to CMSC 23
  for (int i = 0; i < 6; i++) {
    a1l.addStudent(allStudents[i]);
  }

  a2l.addStudent(allStudents[5]);
  a2l.addStudent(allStudents[6]);
  a3l.addStudent(allStudents[7]);
  a3l.addStudent(allStudents[8]);

  // Will not be enlisted
  a2l.addStudent(allStudents[9]);
  a2l.addStudent(allStudents[10]);
  a3l.addStudent(allStudents[11]);

  print("\n===================\n");

  // Print the mean GWA for each section
  print("A-1L: ${a1l.getMeanGWA()}");
  print("A-2L: ${a2l.getMeanGWA()}");
  print("A-3L: ${a3l.getMeanGWA()}");

  print("\n===================\n");

  // Search for the student
  a1l.searchStudent("Aurora");
  a2l.searchStudent("Aurora");
  a3l.searchStudent("Aurora");
  a1l.searchStudent("Snow White");

  print("\n===================\n");

  a1l.printStudents();
  a2l.printStudents();
  a3l.printStudents();

  print("\n===================\n");

  print("Sections in CMSC 23: ${Section.numSections}");
}
