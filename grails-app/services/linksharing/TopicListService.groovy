package linksharing

import grails.transaction.Transactional

@Transactional
class TopicListService {

    def serviceMethod() {

        List lists = Topic.list()
        return lists
    }

}