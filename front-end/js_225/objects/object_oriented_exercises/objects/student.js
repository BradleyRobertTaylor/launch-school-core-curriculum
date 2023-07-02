function createStudent(name, year) {
  return {
    name,
    year,
    courses: [],
    info() {
      console.log(`${this.name} is a ${this.year} year student`);
    },

    listCourses() {
      return this.courses;
    },

    addCourse(course) {
      this.courses.push(course);
    },

    addNote(courseCode, note) {
      this.courses.forEach(course => {
        if (course.code === courseCode) {
          if (course.notes) {
            course.notes += `; ${note}`;
          } else {
            course.notes = note;
          }
        }
      })
    },

    viewNotes() {
      this.courses.forEach(course => {
        if (course.notes) {
          console.log(`${course.name}: ${course.notes}`);
        }
      });
    },

    updateNote(courseCode, newNote) {
      this.courses.forEach(course => {
        if (course.code === courseCode) {
          course.notes = newNote;
        }
      });
    }
  };
}

// let foo = createStudent('Foo', '1st');
// foo.info();
// // "Foo is a 1st year student"
// foo.listCourses();
// // [];
// foo.addCourse({ name: 'Math', code: 101 });
// foo.addCourse({ name: 'Advanced Math', code: 102 });
// foo.listCourses();
// // // [{ name: 'Math', code: 101 }, { name: 'Advanced Math', code: 102 }]
// foo.addNote(101, 'Fun course');
// foo.addNote(101, 'Remember to study for algebra');
// foo.viewNotes();
// // // "Math: Fun course; Remember to study for algebra"
// foo.addNote(102, 'Difficult subject');
// foo.viewNotes();
// // // "Math: Fun course; Remember to study for algebra"
// // // "Advance Math: Difficult subject"
// foo.updateNote(101, 'Fun course');
// foo.viewNotes();
// // // "Math: Fun course"
// // // "Advanced Math: Difficult subject"

const school = {
  students: [],
  addStudent(name, year) {
    const validYears = ['1st', '2nd', '3rd', '4th', '5th'];
    if (validYears.includes(year)) {
      const student = createStudent(name, year);
      this.students.push(student);
      return student;
    } else {
      console.log('Invalid Year');
    }
  },

  enrollStudent(studentName, courseName, courseCode) {
    const student = this.students.filter(({name}) => name === studentName)[0];
    student.addCourse({name: courseName, code: courseCode});
  },

  addGrade(studentName, courseName, grade) {
    const student = this.students.filter(({name}) => name === studentName)[0];
    const course = student.listCourses().filter(({name}) => name === courseName)[0];
    course.grade = grade;
  },

  getReportCard(studentName) {
    const student = this.students.filter(({name}) => name === studentName)[0];
    student.listCourses().forEach(({name, grade}) => {
      if (grade) {
        console.log(`${name}: ${grade}`);
      } else {
        console.log(`${name}: In progress`);
      }
    })
  },

  courseReport() {
    
  },
};

school.addStudent('foo', '3rd');
school.addStudent('bar', '1st');
school.addStudent('qux', '2nd');
school.enrollStudent('foo', 'Math', 101);
school.enrollStudent('foo', 'Advanced Math', 102);
school.enrollStudent('foo', 'Physics', 202);
school.enrollStudent('bar', 'Math', 101);
school.enrollStudent('qux', 'Math', 101);
school.enrollStudent('qux', 'Advanced Math', 102);
school.addGrade('foo', 'Math', 95);
school.getReportCard('foo');
console.log(school.students);

