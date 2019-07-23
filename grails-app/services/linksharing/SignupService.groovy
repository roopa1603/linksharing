package linksharing

import grails.transaction.Transactional
import linksharing.User

@Transactional
class SignupService {

    def register(params) {

        String password = params.password
        String confirmpassword = params.confirmpassword

        if(confirmpassword.compareTo(password)!=0){
            return 1
        }
        else {


            String firstname = params.firstname
            String lastname = params.lastname
            String email = params.email
            String username = params.username
            // byte [] userphoto=params.pic.bytes
            Boolean admin = 0
            Boolean active = 1


            User user1 = new User(firstName: firstname, lastName: lastname, email: email, username: username, password: password, admin: admin, active: active)
            user1.save(flush: true, failOnError: true, validate: true)

        }
    }
}