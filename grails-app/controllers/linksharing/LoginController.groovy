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
        println"####################"+params.email
        println ",,,,,,,,,,,,,,,,,,,,,"+params.pwd
        Boolean isLogin =  loginService.loginMethod(email, enteredPassword)

        //for getting session object
        //def values = loginService.loginMethod(email, enteredPassword)

        if(isLogin)

        {

            session.name = params.email
            println "in log in controller"
            //println "You are logged in with email"+session.name
            redirect(controller: "dashboard",action: "index")

//            redirect(controller: "dashboard",action: "showDashboard")
            //render view: "dashboard", model: [:]
            //User u1 = User.findByEmail(session.name)
        }
        else {
            render(text: "unable to login")
            //render view: "/error", model: [:]
        }

    }
}