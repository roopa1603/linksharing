package linksharing

class ForgotPasswordController {

    def forgotPasswordService

    def forgotPassword() {
        render(view: "Forgotpassword")

    }

    def validateResetPasswordEmail() {
        if (forgotPasswordService.validateEmail(params)) {
            session.name = params.fetch_email
            render(view: "Resetnewpasword")
            //render(text:"jelklhkd")
        } else {
            render(text: "Email doesn't Exist")
        }
    }

    def updatePassword() {
        String email = session.name
        forgotPasswordService.resetPassword(params, email)
        session.invalidate()

        render(text: "Login with new Password")
    }
    /*def backtodashboard()
        {
            redirect(view:'dashboard')
        }*/
}

