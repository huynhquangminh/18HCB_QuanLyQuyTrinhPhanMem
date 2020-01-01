import { WebKeyStorage } from 'src/app/global/web-key-storage';
import { DialogTimeOutComponent } from './../../shared/dialog-time-out/dialog-time-out.component';
import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { DataQuizMock } from './data-mock';
import { Router, ActivatedRoute } from '@angular/router';
import { GoalEveryDayService } from 'src/app/services/goal-every-day.service';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { DialogQuizSuccessComponent } from 'src/app/shared/dialog-quiz-success/dialog-quiz-success.component';
import { StudyQuizService } from 'src/app/services/study-quiz.service';
import { WebStorageSerivce } from 'src/app/services/webStorage.service';
@Component({
  selector: 'app-study-quiz',
  templateUrl: './study-quiz.component.html',
  styleUrls: ['./study-quiz.component.scss']
})
export class StudyQuizComponent implements OnInit {
  public valueProgress = 0;
  public resultAnswer: string;
  public listQuestion: any[] = [];
  public listCauHoi: any[] = [];
  public listDapAn: any[] = [];
  currentQuestion = {};
  indexCurrentQuestion = 0;
  audio = new Audio();
  pathAudioRight = '../../../../assets/audio/right_answer.mp3';
  pathAudioWrong = '../../../../assets/audio/wrong_answer.mp3';
  passAudioComplete = '../../../../assets/audio/lesson_complete.mp3';
  timeLeft = 30;
  interval: any;
  id = 0;
  settingUser: any;
  constructor(
    private snackBar: MatSnackBar,
    private router: Router,
    private goalEveryDayService: GoalEveryDayService,
    public dialog: MatDialog,
    public studyQuizService: StudyQuizService,
    private activatedRoute: ActivatedRoute,
    private webStorageSerivce: WebStorageSerivce
  ) { }

  ngOnInit() {
    this.id = Number(this.activatedRoute.snapshot.paramMap.get('id'));
    this.settingUser = this.webStorageSerivce.getLocalStorage(WebKeyStorage.SettingUser);
    this.getDsCauHoi();
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

  getDsCauHoi() {
    let snackRef: any;
    if (this.settingUser) {
      const request = {
        idBaiHoc: this.id,
        idCapDo: this.settingUser.idcapdo
      };
      this.studyQuizService.getDsCauHoi(request).subscribe(res => {
        if (res && res.Success) {
          this.listCauHoi = res.listCauHoi;
          if (this.listCauHoi.length < 1) {
            clearInterval(this.interval);
            snackRef = this.snackBar.open('Bài học này chưa được hoàn thiện, vui vòng chọn bài học khác!', 'Quay lại', {
              duration: 10000,
            });
            snackRef.afterDismissed().subscribe(null, null, () => {
              this.router.navigateByUrl('/home/main/course-list');
            });
          }
          this.getDsDapAn();
        }
      });
    }
  }

  getDsDapAn() {
    if (this.settingUser) {
      const request = {
        idBaiHoc: this.id,
        idCapDo: this.settingUser.idcapdo
      };
      this.studyQuizService.getDsDapAn(request).subscribe(res => {
        if (res && res.Success) {
          this.listDapAn = res.listDapAn;
          this.listQuestion = this.formatCauHoi();
          this.currentQuestion = this.getQuestion();
        }
      });
    }
  }

  formatCauHoi() {
    const arr = [];
    this.listCauHoi.forEach(item => {
      arr.push({
        id: item.id,
        question: item.tencauhoi,
        answer: this.findListDapAn(item.id)
      });
    });
    return arr;
  }

  findListDapAn(idCauHoi: any) {
    const arr = [];
    this.listDapAn.forEach(item => {
      if (item.idcauhoi === idCauHoi) {
        arr.push({
          id: item.id,
          answerName: item.cautraloi,
          isBool: item.dapan
        });
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
        this.valueProgress = this.valueProgress + (100 / this.listCauHoi.length);
        this.playAudio(this.pathAudioRight);
        this.openMessageResult('Correct Answer');
        this.showDialogQuizSuccess();
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

  showDialogTimeOut() {
    const dialogRef = this.dialog.open(DialogTimeOutComponent, {
      width: '350px',
      disableClose: true
    });
  }

  showDialogQuizSuccess() {
    if (this.valueProgress === 100) {
      clearInterval(this.interval);
      const dialogRef = this.dialog.open(DialogQuizSuccessComponent, {
        width: '400px',
        disableClose: true,
        data: { point: this.updatePointGoalDay(100), idBaiHoc: this.id }
      });
      this.playAudio(this.passAudioComplete);
    }
  }

  updatePointGoalDay(point) {
    let item = 0;
    if (point === 100) {
      item = Math.random() * (15 - 5) + 5;
      this.goalEveryDayService.listensChangeGoalDay(item);
    }
    return item;
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
      } else {
        this.showDialogTimeOut();
        this.playAudio(this.pathAudioWrong);
        clearInterval(this.interval);
      }
    }, 1000);
  }
}
