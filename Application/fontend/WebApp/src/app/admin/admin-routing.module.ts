import { BaihocComponent } from './baihoc/baihoc.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AdminComponent } from './admin.component';
import { KhoahocComponent } from './khoahoc/khoahoc.component';
const adminRouting: Routes = [
    { path: '', redirectTo: 'main', pathMatch: 'full' },
    {
        path: 'main', component: AdminComponent, children: [
            { path: '', redirectTo: 'khoahoc', pathMatch: 'full' },
            { path: 'khoahoc', component: KhoahocComponent },
            { path: 'baihoc', component: BaihocComponent },
            // { path: 'contact', component: ContactComponent },
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
