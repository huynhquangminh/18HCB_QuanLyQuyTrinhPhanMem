import { Component, OnInit } from '@angular/core';
import {MatSnackBar} from '@angular/material/snack-bar';

@Component({
  selector: 'app-study-quiz',
  templateUrl: './study-quiz.component.html',
  styleUrls: ['./study-quiz.component.scss']
})
export class StudyQuizComponent implements OnInit {
  public valueProgress = 0;
  public resultAnswer: string;
  public listQuestion = [
    {
      id: 1,
      question: 'Điền vào chỗ trống kiểu dữ liệu phù hợp: ___ name = "Khoa"',
      answer: [
        {
          id: 1,
          answerName: 'string	',
          isBool: true
        },
        {
          id: 2,
          answerName: 'int',
          isBool: false
        },
        {
          id: 3,
          answerName: 'boolean',
          isBool: false
        },
        {
          id: 4,
          answerName: 'float',
          isBool: false
        }
      ],
      isAnswer: false
    },
    {
      id: 2,
      question: 'Phương thức này trả ra kiểu dữ liệu gì: public ___ Tong(int a, int b) return a + b;',
      answer: [
        {
          id: 1,
          answerName: 'string	',
          isBool: false
        },
        {
          id: 2,
          answerName: 'int',
          isBool: true
        },
        {
          id: 3,
          answerName: 'boolean',
          isBool: false
        },
        {
          id: 4,
          answerName: 'float',
          isBool: false
        }
      ],
      isAnswer: false
    }
  ];
  currentQuestion = {};
  constructor(private snackBar: MatSnackBar) { }

  ngOnInit() {
    this.currentQuestion = this.getQuestion();
  }

  getQuestion() {
    let result = {};
    // tslint:disable-next-line:prefer-for-of
    for (let i = 0; i < this.listQuestion.length; i++) {
      if (!this.listQuestion[i].isAnswer) {
        result = this.listQuestion[i];
        break;

      }
    }
    return result;
  }

  submitAnswer(answer, idQuestion) {
    this.checkAnswer(idQuestion, answer);
    this.currentQuestion = this.getQuestion();

  }
  checkAnswer(idQuestion, answer): boolean {
    const question = this.listQuestion.find(item => item.id === idQuestion);
    if (question) {
      const result = question.answer.find(i => i.id === answer);
      if (result && result.isBool) {
        this.updateAnswer(idQuestion);
        this.resultAnswer = null;
        this.valueProgress = this.valueProgress + 10;
        this.openMessageResult('Correct Answer');
      } else {
        this.openMessageResult('Incorrect Answer');
      }
    }
    return false;
  }
  updateAnswer(idQuestion) {
    this.listQuestion.forEach(item => {
      if (item.id === idQuestion) {
        item.isAnswer = true;
      }
    });
  }

  openMessageResult(message: string) {
    this.snackBar.open(message, null, {
      duration: 2000,
    });
  }
}
