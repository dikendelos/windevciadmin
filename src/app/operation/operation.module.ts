import { NgModule } from '@angular/core';
import { CommonModule } from "@angular/common";
import { SharedModule } from '../shared/shared.module';
import { OperationRoutingModule } from "./operation-routing.module";
import { NgChartjsModule } from 'ng-chartjs';

import { ThemeConstantService } from '../shared/services/theme-constant.service';

import { NzButtonModule } from 'ng-zorro-antd/button';
import { NzCardModule } from 'ng-zorro-antd/card';
import { NzAvatarModule } from 'ng-zorro-antd/avatar';
import { NzRateModule } from 'ng-zorro-antd/rate';
import { NzBadgeModule } from 'ng-zorro-antd/badge';
import { NzProgressModule } from 'ng-zorro-antd/progress';
import { NzRadioModule } from 'ng-zorro-antd/radio';
import { NzTableModule } from 'ng-zorro-antd/table';
import { NzDropDownModule } from 'ng-zorro-antd/dropdown';
import { NzTimelineModule } from 'ng-zorro-antd/timeline';
import { NzTabsModule } from 'ng-zorro-antd/tabs';
import { NzTagModule } from 'ng-zorro-antd/tag';
import { NzListModule } from 'ng-zorro-antd/list';
import { NzCalendarModule } from 'ng-zorro-antd/calendar';
import { NzToolTipModule } from 'ng-zorro-antd/tooltip';
import { NzCheckboxModule } from 'ng-zorro-antd/checkbox';
import { IconDefinition } from '@ant-design/icons-angular';
import { LeftOutline, RightOutline } from '@ant-design/icons-angular/icons';
import { NzAffixModule } from 'ng-zorro-antd/affix';
import { NZ_CONFIG } from 'ng-zorro-antd/core/config';
import { NzGridModule } from 'ng-zorro-antd/grid';
import { NzI18nModule } from 'ng-zorro-antd/i18n';
import { NzIconModule } from 'ng-zorro-antd/icon';
import { NzInputModule } from 'ng-zorro-antd/input';
import { NzMenuModule } from 'ng-zorro-antd/menu';
import { NzMessageModule } from 'ng-zorro-antd/message';
import { NzPopoverModule } from 'ng-zorro-antd/popover';
import { NzSelectModule } from 'ng-zorro-antd/select';
const icons: IconDefinition[] = [LeftOutline, RightOutline];

// import { ProjectsDashboardComponent } from './projects/projects-dashboard.component';
import { LicencesComponent } from './licences/licences.component';
import { NzPopconfirmModule } from 'ng-zorro-antd/popconfirm';
import { NzFormModule } from 'ng-zorro-antd/form';
import { ReactiveFormsModule } from '@angular/forms';

const antdModule = [
    NzButtonModule,
    NzCardModule,
    NzAvatarModule,
    NzRateModule,
    NzBadgeModule,
    NzProgressModule,
    NzRadioModule,
    NzTableModule,
    NzDropDownModule,
    NzTimelineModule,
    NzTabsModule,
    NzTagModule,
    NzListModule,
    NzCalendarModule,
    NzToolTipModule,
    NzCheckboxModule,
    NzIconModule.forRoot(icons),
    NzGridModule,
    NzAffixModule,
    NzMenuModule,
    NzI18nModule,
    NzSelectModule,
    NzMessageModule,
    NzPopoverModule,
    NzInputModule,
    NzFormModule,
    NzPopconfirmModule
]

@NgModule({
    imports: [
        CommonModule,
        SharedModule,
        ReactiveFormsModule,
        OperationRoutingModule,
        NgChartjsModule,
        ...antdModule
    ],
    exports: [],
    declarations: [
        // ProjectsDashboardComponent,
        LicencesComponent

    ],
    providers: [
        ThemeConstantService
    ],
})
export class OperationModule { }
