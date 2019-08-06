package linksharing

import grails.transaction.Transactional

@Transactional
class LoginService {

    Boolean isUserAlreadyLoggedIn(String userEmail, String enteredPassword) {
        Boolean isUserAlreadyLoggedIn = false
/*        if(userEmail || enteredPassword)
        {
            isUserAlreadyLoggedIn = false
        }*/
        if(userEmail && enteredPassword)
        {
            String storedPassword = User.findByEmail(userEmail)?.password
            isUserAlreadyLoggedIn  = storedPassword == enteredPassword
            /* if (storedPassword == enteredPassword)
             {
                 isUserAlreadyLoggedIn = true
 //                redirect(controller: "dashboard",action:"index")
             }
             else
             {
                 //render(text: "password mismath")
                 isUserAlreadyLoggedIn = false

             }*/
        }
        return isUserAlreadyLoggedIn
    }
}