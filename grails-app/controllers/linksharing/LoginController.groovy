package linksharing

class LoginController {

    def loginService

    def index() {


        //get boolean value from service
        //compare value to true and false
        //if true -- render dashboard
        //if flase -- render error/login again

        String email = params.email
        String enteredPassword = params.pwd
        Boolean isLogin =  loginService.loginMethod(email, enteredPassword)

        //for getting session object
        //def values = loginService.loginMethod(email, enteredPassword)



        if(isLogin)

        {
            session.name = params.email
            redirect(controller: "dashboard",action: "index")
            //render view: "dashboard", model: [:]
        }
        else {
            render view: "/error", model: [:]
        }

    }
}