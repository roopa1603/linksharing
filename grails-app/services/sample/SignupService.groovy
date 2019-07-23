package sample

import grails.transaction.Transactional
import linksharing.User

@Transactional
class SignupService {
    def register(params) {

        String firstname = params.firstname
        String lastname = params.lastname
        String email = params.signup_email
        String username = params.username
        String password = params.password
        String confirmpassword = params.confirmpassword
        // byte [] userphoto=params.pic.bytes
        Boolean admin = 0
        Boolean active = 1


        User user2 = new User(firstName: firstname, lastName: lastname, email: email, username: username, password: password, admin: admin, active: active)
        user2.save(flush: true, failOnError: true, validate: true)


    }
}