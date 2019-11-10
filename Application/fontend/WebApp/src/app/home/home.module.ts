import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home.component';
import { HomeRoutingModule } from './home-routing.module';
import { DisplaySettingComponent } from './display-setting/display-setting.component';
import { MatStepperModule } from '@angular/material/stepper';
import { MatToolbarModule } from '@angular/material/toolbar';
import {MatChipsModule} from '@angular/material/chips';
@NgModule({
  declarations: [
    HomeComponent,
    DisplaySettingComponent
  ],
  imports: [
    CommonModule,
    HomeRoutingModule,
    MatStepperModule,
    MatToolbarModule,
    MatChipsModule
  ]
})
export class HomeModule { }
