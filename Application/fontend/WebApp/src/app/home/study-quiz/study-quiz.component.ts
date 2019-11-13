import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { DataQuizMock } from './data-mock';
import { Router } from '@angular/router';

@Component({
  selector: 'app-study-quiz',
  templateUrl: './study-quiz.component.html',
  styleUrls: ['./study-quiz.component.scss']
})
export class StudyQuizComponent implements OnInit {
  public valueProgress = 0;
  public resultAnswer: string;
  public listQuestion = DataQuizMock;
  currentQuestion = {};
  constructor(private snackBar: MatSnackBar, private router: Router) { }

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

  selectFinish() {
    this.router.navigateByUrl('/home/main/course-list');
  }
}
