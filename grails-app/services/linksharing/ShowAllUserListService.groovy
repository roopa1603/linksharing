package linksharing

import grails.transaction.Transactional

@Transactional
class ShowAllUserListService {

    def listMethod() {

        List showList =  User.list()
        return showList

    }
}
