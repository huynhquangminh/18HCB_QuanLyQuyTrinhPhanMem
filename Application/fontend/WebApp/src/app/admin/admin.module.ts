import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AdminComponent } from './admin.component';
import { AdminRoutingModule } from './admin-routing.module';
import { FormsModule } from '@angular/forms';
import { MatStepperModule } from '@angular/material/stepper';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatChipsModule } from '@angular/material/chips';
import { MatIconModule } from '@angular/material/icon';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatCardModule } from '@angular/material/card';
import { MatMenuModule } from '@angular/material/menu';
import { MatButtonModule } from '@angular/material/button';
import { LayoutModule } from '@angular/cdk/layout';
import { MatProgressBarModule } from '@angular/material/progress-bar';
import { MatRadioModule } from '@angular/material/radio';
import { MatTabsModule } from '@angular/material/tabs';
import { MatDividerModule } from '@angular/material/divider';
import { MatListModule } from '@angular/material/list';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { MatBadgeModule } from '@angular/material/badge';
import { MatDialogModule } from '@angular/material/dialog';
import { NgCircleProgressModule } from 'ng-circle-progress';
import { ChartModule } from 'angular-highcharts';
import { MatRippleModule } from '@angular/material/core';
import { MatInputModule } from '@angular/material/input';
import { KhoahocComponent } from './khoahoc/khoahoc.component';
import {MatTableModule} from '@angular/material/table';
import { BaihocComponent } from './baihoc/baihoc.component';
import {MatSelectModule} from '@angular/material/select';
import { CauhoiComponent } from './cauhoi/cauhoi.component';
import { TaikhoanComponent } from './taikhoan/taikhoan.component';

@NgModule({
  declarations: [AdminComponent, KhoahocComponent, BaihocComponent, CauhoiComponent, TaikhoanComponent],
  imports: [
    AdminRoutingModule,
    FormsModule,
    CommonModule,
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
    MatInputModule,
    MatTableModule,
    MatSelectModule
  ]
})
export class AdminModule { }
