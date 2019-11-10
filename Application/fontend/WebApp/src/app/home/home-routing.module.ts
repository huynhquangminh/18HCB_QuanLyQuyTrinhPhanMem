import { NgModule } from '@angular/core';

import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home.component';
import { DisplaySettingComponent } from './display-setting/display-setting.component';
const homeRouting: Routes = [
    { path: '', redirectTo: 'main', pathMatch: 'full' },
    {
        path: 'main', component: HomeComponent
    },
    { path: 'display-setting', component: DisplaySettingComponent },
];
@NgModule({
    imports: [
        RouterModule.forChild(homeRouting)
    ],
    exports: [
        RouterModule
    ]
})
export class HomeRoutingModule { }
