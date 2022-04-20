import { Component } from '@angular/core'
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { first } from 'rxjs/operators';
import { AuthenticationService } from 'src/app/shared/services/authentication.service';


@Component({
    templateUrl: './login-1.component.html'
})

export class Login1Component {
    loginForm: FormGroup;
    loading = false;
    submitted = false;

    constructor(
        private fb: FormBuilder,
        private route: ActivatedRoute,
        private router: Router,
        private accountService: AuthenticationService
    ) {
    }

    ngOnInit(): void {
        this.loginForm = this.fb.group({
            login: [null, [Validators.required]],
            password: [null, [Validators.required]]
        });
    }

    submitForm(): void {
        for (const i in this.loginForm.controls) {
            this.loginForm.controls[i].markAsDirty();
            this.loginForm.controls[i].updateValueAndValidity();
        }

        if (this.loginForm.invalid) {
            console.log('statut formulaire : ', this.loginForm.status);
            return;
        }

        this.loading = true;

        this.accountService.login(this.f.login.value, this.f.password.value)
            .pipe(first())
            .subscribe({
                next: (data) => {

                    const returnUrl = '/dashboard';
                    console.log('returnUrl : ', returnUrl);
                    this.router.navigateByUrl(returnUrl);
                    console.log('data : ', data);
                },
                error: error => {
                    console.log(`Erreur ${error.status} : `, error.error.message);
                    this.loading = false;
                }
            })
    }

    get f() { return this.loginForm.controls }



}    