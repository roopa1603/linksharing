package linksharing

class LoginController {
    def loginService

    def index() {
        User u = User.findByEmail(params.email)
       /* if(u.active){*/

            String email = params.email
            String enteredPassword = params.pwd
            Boolean isLogin =  loginService.isUserAlreadyLoggedIn(email, enteredPassword)
            //for getting session object
            //def values = loginService.loginMethod(email, enteredPassword)

            if(isLogin) {
                //render view: "/dashboard", model: [:]
                session.name = params.email
                flash.message="Register sucess"
                print session.name
                redirect(controller: "dashboard", action: "index")
            }
            else {
                flash.message="NO SUCH EMAIL EXISTS"
                redirect(url: '/')
            }
        } /*else {
            flash.message="Fail"
            redirect(url: '/')
        }*/



    }

/*
}*/
