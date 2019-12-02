import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { DataQuizMock } from './data-mock';
import { Router } from '@angular/router';
import { GoalEveryDayService } from 'src/app/services/goal-every-day.service';

@Component({
  selector: 'app-study-quiz',
  templateUrl: './study-quiz.component.html',
  styleUrls: ['./study-quiz.component.scss']
})
export class StudyQuizComponent implements OnInit {
  public valueProgress = 0;
  public resultAnswer: string;
  public listQuestion: any[] = [];
  currentQuestion = {};
  indexCurrentQuestion = 0;
  audio = new Audio();
  pathAudioRight = '../../../../assets/audio/right_answer.mp3';
  pathAudioWrong = '../../../../assets/audio/wrong_answer.mp3';
  timeLeft = 70;
  interval: any;
  constructor(
    private snackBar: MatSnackBar,
    private router: Router,
    private goalEveryDayService: GoalEveryDayService
  ) { }

  ngOnInit() {
    this.listQuestion = this.cloneQuestion();
    this.currentQuestion = this.getQuestion();
    this.startTimer();
  }

  cloneQuestion() {
    const arr = [];
    DataQuizMock.forEach(item => {
      if (!item.isAnswer) {
        arr.push(Object.assign({}, item));
      }
    });
    return arr;
  }

  getQuestion() {
    let result = {};
    // tslint:disable-next-line:prefer-for-of
    for (let i = this.indexCurrentQuestion; i < this.listQuestion.length; i++) {
      if (!this.listQuestion[i].isAnswer) {
        result = this.listQuestion[i];
        this.indexCurrentQuestion = i + 1;
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
        this.timeLeft = this.timeLeft + 5;
        this.updateAnswer(idQuestion);
        this.resultAnswer = null;
        this.valueProgress = this.valueProgress + 10;
        this.playAudio(this.pathAudioRight);
        this.updatePointGoalDay(this.valueProgress);
        this.openMessageResult('Correct Answer');
      } else {
        this.listQuestion.push(question);
        this.resultAnswer = null;
        this.playAudio(this.pathAudioWrong);
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
  cancelStudy() {
    this.router.navigateByUrl('/home/main/course-list');
  }

  updatePointGoalDay(point) {
    if (point === 100) {
      const item = Math.random() * (15 - 5) + 5;
      this.goalEveryDayService.listensChangeGoalDay(item);
    }
  }

  playAudio(linkSrc) {
    this.audio = new Audio();
    this.audio.src = linkSrc;
    this.audio.load();
    this.audio.play();
  }

  startTimer() {
    this.interval = setInterval(() => {
      if (this.timeLeft > 0) {
        this.timeLeft--;
      }
    }, 1000);
  }
  pauseTimer() {
    clearInterval(this.interval);
  }
}
