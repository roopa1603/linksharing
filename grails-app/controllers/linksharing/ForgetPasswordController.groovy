package linksharing

class ForgetPasswordController {
def forgetPasswordService
    def forgetpassword() {
        render view: "ForgetPassword1"
    }



//check if email is present in database or not and act accordingly.
    def validateResetPasswordEmail(){
        /*Users userFromService = */
        if(forgetPasswordService.validateEmail(params)){
            session.reset = params.fetch_email
            render(view: "ResetNewPassword")

        }else{
            render(text: "Email Does Not Exists")

        }
    }


    def resetPassword(){
        String changePass = session.reset
        forgetPasswordService.updatePassword(params, changePass)
        session.invalidate()
        render(text: "Login with new password")
    }
}
