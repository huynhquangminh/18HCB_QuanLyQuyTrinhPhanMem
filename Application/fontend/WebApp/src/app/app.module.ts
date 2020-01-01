import { TaiKhoanService } from './services/tai-khoan.service';
import { FormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { ForgotPasswordComponent } from './forgot-password/forgot-password.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { GoalEveryDayService } from './services/goal-every-day.service';
import { AppService } from './services/app-service';
import { HttpClientModule } from '@angular/common/http';
import { WebStorageSerivce } from './services/webStorage.service';
import { AngularWebStorageModule } from 'angular-web-storage';
import { DisplaySettingService } from './services/display-setting.service';
import { CourseListService } from './services/course-list.service';
import { DialogTimeOutComponent } from './shared/dialog-time-out/dialog-time-out.component';
import { DialogQuizSuccessComponent } from './shared/dialog-quiz-success/dialog-quiz-success.component';
import { StudyQuizService } from './services/study-quiz.service';
import { HomeService } from './services/home.service';
import { NotFoundComponent } from './not-found/not-found.component';
import { ChartFllowService } from './services/chart-fllow.service';
import { DialogNoticationsComponent } from './shared/dialog-notications/dialog-notications.component';
import { MatCardModule } from '@angular/material/card';
import { MatListModule } from '@angular/material/list';
import { MatButtonModule } from '@angular/material/button';
import { MatRippleModule } from '@angular/material/core';
import { MatIconModule } from '@angular/material/icon';
import { ThongBaoService } from './services/notications.service';
import { DialogFriendsComponent } from './shared/dialog-friends/dialog-friends.component';
import { MatTabsModule } from '@angular/material/tabs';
import { FriendsService } from './services/friends.service';
@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegisterComponent,
    ForgotPasswordComponent,
    DialogTimeOutComponent,
    DialogQuizSuccessComponent,
    NotFoundComponent,
    DialogNoticationsComponent,
    DialogFriendsComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    FormsModule,
    HttpClientModule,
    AngularWebStorageModule,
    MatCardModule,
    MatListModule,
    MatButtonModule,
    MatRippleModule,
    MatIconModule,
    MatTabsModule
  ],
  providers: [
    AppService,
    GoalEveryDayService,
    TaiKhoanService,
    WebStorageSerivce,
    DisplaySettingService,
    CourseListService,
    StudyQuizService,
    HomeService,
    ChartFllowService,
    ThongBaoService,
    FriendsService
  ],

  bootstrap: [AppComponent],
  entryComponents: [
    DialogTimeOutComponent,
    DialogQuizSuccessComponent,
    DialogNoticationsComponent,
    DialogFriendsComponent
  ]
})
export class AppModule { }
