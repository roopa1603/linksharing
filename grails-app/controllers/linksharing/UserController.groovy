package linksharing


import grails.transaction.Transactional


@Transactional(readOnly = true)
class UserController {

    def UserService
    def showAllUserListService


    /*def forgetPasswordService*/

    def myaction() {
        List subscriptionLt = UserService.subscriptions(session.name)
        User user1 = User.findByEmail(session.name)

        render(view: "EditProfile", model: [userdata: user1, subscriptions: subscriptionLt])
    }

    def showlist() {
        String str = session.name
        User user1 = User.findByEmail(str)
        List subscriptionLt = UserService.subscriptions(session.name)
        List<User> list1 = showAllUserListService.listMethod()
        render(view: "showUserList", model: [userList: list1, userdata: user1, subscriptions: subscriptionLt])
    }

    def logout() {
        session.invalidate()
        redirect(url: '/')
    }

    // To display the number of subscription and trending topics  done by particular user
    def userTable() {
        render(view: 'showUserList', model: [userList: User.list()])
    }

    def activate() {
        User user = User.findById(params.userId)
        user.active = true
        user.save(failOnError: true, flush: true)
        redirect(controller: "user", action: 'showlist')
    }

    @Transactional
    def deactivate() {
        User user = User.findById(params.userId)
        user.active = false
        //user.confirmPassword = user.password
        user.save(failOnError: true, flush: true)
        redirect(controller: "user", action: 'showlist')
        //redirect(action: 'userTable')
    }

    def removeAdmin() {
        User user = User.findById(params.userId)
        if(user.id != 5) {
            user.admin = false
        }
        user.save(failOnError: true, flush: true)
        redirect(controller:"user" ,action:'showlist')
    }
    def makeAdmin() {
        User user = User.findById(params.userId)
        user.admin = true
        user.save(failOnError: true, flush: true)
        redirect(controller: "user", action: 'showlist')
    }



}

































