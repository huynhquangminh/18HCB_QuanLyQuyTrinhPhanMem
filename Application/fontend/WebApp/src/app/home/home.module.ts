import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home.component';
import { HomeRoutingModule } from './home-routing.module';
import { DisplaySettingComponent } from './display-setting/display-setting.component';
import { MatStepperModule } from '@angular/material/stepper';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatChipsModule } from '@angular/material/chips';
import { MatIconModule } from '@angular/material/icon';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatCardModule } from '@angular/material/card';
import { MatMenuModule } from '@angular/material/menu';
import { MatButtonModule } from '@angular/material/button';
import { LayoutModule } from '@angular/cdk/layout';
import { CourseListComponent } from './course-list/course-list.component';
import { NgCircleProgressModule } from 'ng-circle-progress';
import { StudyQuizComponent } from './study-quiz/study-quiz.component';
import { MatProgressBarModule } from '@angular/material/progress-bar';
import { MatRadioModule } from '@angular/material/radio';
import { FormsModule } from '@angular/forms';
import {MatTabsModule} from '@angular/material/tabs';
import {MatDividerModule} from '@angular/material/divider';
import {MatListModule} from '@angular/material/list';
import {MatSnackBarModule} from '@angular/material/snack-bar';
import { TargetDayComponent } from './target-day/target-day.component';
import {MatBadgeModule} from '@angular/material/badge';
import {MatDialogModule} from '@angular/material/dialog';
import { ChartModule } from 'angular-highcharts';
import {MatRippleModule} from '@angular/material/core';
import {MatInputModule} from '@angular/material/input';
import { ContactComponent } from './contact/contact.component';
@NgModule({
  declarations: [
    HomeComponent,
    DisplaySettingComponent,
    CourseListComponent,
    StudyQuizComponent,
    TargetDayComponent,
    ContactComponent,
  ],
  imports: [
    FormsModule,
    CommonModule,
    HomeRoutingModule,
    MatStepperModule,
    MatToolbarModule,
    MatChipsModule,
    MatIconModule,
    MatGridListModule,
    MatCardModule,
    MatMenuModule,
    MatButtonModule,
    LayoutModule,
    MatProgressBarModule,
    MatRadioModule,
    MatTabsModule,
    MatDividerModule,
    MatListModule,
    MatSnackBarModule,
    MatBadgeModule,
    MatDialogModule,
    NgCircleProgressModule.forRoot({
      radius: 60,
      outerStrokeWidth: 10,
      innerStrokeWidth: 5,
      showBackground: false,
      startFromZero: false,
      showSubtitle: false,
    }),
    ChartModule,
    MatRippleModule,
    MatInputModule
  ]
})
export class HomeModule { }
