package linksharing

class SignupController {

        def signupService
        def loginService

        def index(){
            //print "inside cont"
            signupService.register(params)

    }

    def login() {

        Integer loginValue = loginService.loginMethod(params)
        if(loginValue==1) {
            render(text: "Logged In")
        }else{
            render(text: "wrong password")
        }
    }
}