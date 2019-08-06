package linksharing

class SendMailController {

    def forgetPasswordService

    Integer otp1 = Math.random()*100000

       def index() {


           User user = User.findByEmail(params.email)
           if(user) {
               otp1 = Math.random() * 100000
               String link = createLink(controller: 'forgotPassword', action: 'validateResetPasswordEmail', params: [email: user.email], absolute: true)
               sendMail {
                   to "${user.email}"
                   subject "Hello ${user.firstName} Your password reset link is here!!!"
                   text link
                   "OTP: " + otp1
               }
               render("Check Your Mail")
           }
           else{
               render("EMAIL DOESNOT EXSIST")
                  //flash.message4=" EMAIL DOESNOT EXISTS"
           }

       }

    /*def index(String emailId){

        User user = User.findByEmail(emailId)
        if (user){

            if(user.active) {

                String to = emailId
                String subject = "Forget Password Request"
                String newPassword = Util.randomPassword

                EmailDTO emailDTO = new EmailDTO(to: to, subject: subject, model: [newPassword: newPassword])

                user.password = newPassword
                if (user.saveInstance()) {

                    def ctx = startAsync()
                    ctx.start {
                        emailService.sendMail(emailDTO)
                    }
                    ctx.complete()
                    flash.message = "EMAIL SENT SUCCESSFULLY"
                } else {
                    flash.error = "EMAIL WAS NOT SENT"
                }
            }
            else{
                flash.error = "THE EMAIL ID DOESNOT BELONG TO A REGISTERED USER"
            }
            redirect(controller:)
        }
    }*/




}

