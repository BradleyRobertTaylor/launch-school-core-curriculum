let studentScores = {
  student1: {
    id: 123456789,
    scores: {
      exams: [90, 95, 100, 80],
      exercises: [20, 15, 10, 19, 15],
    },
  },
  student2: {
    id: 123456799,
    scores: {
      exams: [50, 70, 90, 100],
      exercises: [0, 15, 20, 15, 15],
    },
  },
  student3: {
    id: 123457789,
    scores: {
      exams: [88, 87, 88, 89],
      exercises: [10, 20, 10, 19, 18],
    },
  },
  student4: {
    id: 112233445,
    scores: {
      exams: [100, 100, 100, 100],
      exercises: [10, 15, 10, 10, 15],
    },
  },
  student5: {
    id: 112233446,
    scores: {
      exams: [50, 80, 60, 90],
      exercises: [10, 0, 10, 10, 0],
    },
  },
};

function generateClassRecordSummary(scores) {
  let scoreData = Object.keys(scores).map(student => scores[student].scores);
  let examData = scoreData.map(score => score.exams);

  return {
    studentGrades: scoreData.map(scoreObj => getStudentScore(scoreObj)),
    exams: getExamSummary(examData),
  };
}

function getStudentScore(scoreObj) {
  let examAverage = scoreObj.exams.reduce((sum, score) => sum + score) / 4;
  let exerciseScoreTotal = scoreObj.exercises.reduce((sum, score) => sum + score);
  let score = Math.round(examAverage * 0.65 + exerciseScoreTotal * 0.35) 
  return `${score} (${letterGrade(score)})`;
}

function getExamSummary(examData) {
  let result = [];

  for (let i = 0; i < examData[0].length; i += 1) {
    let examObj = [];
    for (let j = 0; j < examData.length; j += 1) {
      examObj.push(examData[j][i]); 
    }
    result.push(examObj);
  }

  return result.map(examScores => {
    return {
      average: getExamAverage(examScores),
      minimum: getExamMinimum(examScores),
      maximum: getExamMaximum(examScores),
    }
  });
}

function getExamMinimum(scores) {
  return scores.reduce((min, num) => min >= num ? num : min);
}

function getExamMaximum(scores) {
  return scores.reduce((max, num) => max <= num ? num : max);
}

function getExamAverage(scores) {
  return (scores.reduce((sum, num) => sum + num) / scores.length)
            .toFixed(1);
}

function letterGrade(score) {
  if (score >= 93) return 'A';
  if (score >= 85) return 'B';
  if (score >= 77) return 'C';
  if (score >= 69) return 'D';
  if (score >= 60) return 'E';
  return 'F';
}

console.log(generateClassRecordSummary(studentScores));

// returns:
// {
//   studentGrades: [ '87 (B)', '73 (D)', '84 (C)', '86 (B)', '56 (F)' ],
//   exams: [
//     { average: 75.6, minimum: 50, maximum: 100 },
//     { average: 86.4, minimum: 70, maximum: 100 },
//     { average: 87.6, minimum: 60, maximum: 100 },
//     { average: 91.8, minimum: 80, maximum: 100 },
//   ],
// }
