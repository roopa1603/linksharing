package linksharing

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional
class UserController {

    def loginService
    def signupService
    def resetPasswordSevice
    def showAllUserListService


    def logout(){

        session.invalidate()
        redirect(url: "/")
    }

    def showList(){

        List<User> list1 = showAllUserListService.listMethod()
        render(view:"userList", model: [userlist: list1])
    }



}
