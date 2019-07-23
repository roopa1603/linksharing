package linksharing

import grails.transaction.Transactional

@Transactional
class LoginService {

    def loginMethod(Map params) {

        String emailOrUsername=params.loginEmail
        String loginPassword=params.s_pwd
        //println "password --< " + loginPassword


        if(emailOrUsername == null || loginPassword == null)
        {
            return 0
        }
        else
        {
            def fetchUser = User.findByEmail(emailOrUsername)
            def fetchPassword = fetchUser.password
            if(loginPassword==fetchPassword) {
                return 1
                //render(text: "Success")
            }else{
                return 0
            }

        }
    }
}
