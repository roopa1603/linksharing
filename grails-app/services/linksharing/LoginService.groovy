package linksharing

import grails.transaction.Transactional

@Transactional
class LoginService {

    Boolean loginMethod(String userEmail, String enteredPassword) {
        Boolean flag = false
        User u = User.findByEmail(userEmail)
        print u.username
        String str = u.password
/*        if(userEmail || enteredPassword)
        {
            flag = false
        }*/
        if(userEmail && enteredPassword)
        {


            /*String storedPassword = User.findByEmail(userEmail)?.password
            println"####################"+storedPassword*/
            flag  = str == enteredPassword
            /* if (storedPassword == enteredPassword)
             {
                 flag = true
 //                redirect(controller: "dashboard",action:"index")
             }
             else
             {
                 //render(text: "password mismath")
                 flag = false

             }*/
        }
        return flag

    }
}