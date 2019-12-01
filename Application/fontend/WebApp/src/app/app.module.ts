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
@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegisterComponent,
    ForgotPasswordComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    FormsModule,
    HttpClientModule,
    AngularWebStorageModule
  ],
  providers: [
    AppService,
    GoalEveryDayService,
    TaiKhoanService,
    WebStorageSerivce
  ],

  bootstrap: [AppComponent]
})
export class AppModule { }
