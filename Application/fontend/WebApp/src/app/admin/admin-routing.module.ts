import { BaihocComponent } from './baihoc/baihoc.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AdminComponent } from './admin.component';
import { KhoahocComponent } from './khoahoc/khoahoc.component';
import { CauhoiComponent } from './cauhoi/cauhoi.component';
import { TaikhoanComponent } from './taikhoan/taikhoan.component';
const adminRouting: Routes = [
    { path: '', redirectTo: 'main', pathMatch: 'full' },
    {
        path: 'main', component: AdminComponent, children: [
            { path: '', redirectTo: 'khoahoc', pathMatch: 'full' },
            { path: 'khoahoc', component: KhoahocComponent },
            { path: 'baihoc', component: BaihocComponent },
            { path: 'cauhoi', component: CauhoiComponent },
            { path: 'taikhoan', component: TaikhoanComponent },
        ]
    }
];
@NgModule({
    imports: [
        RouterModule.forChild(adminRouting)
    ],
    exports: [
        RouterModule
    ]
})
export class AdminRoutingModule { }
