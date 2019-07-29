package linksharing

import grails.transaction.Transactional

@Transactional
class TopicService {

        def save(params,email) {

        String topicName = params.topicName
        com.sample.Visibility visible=params.Visibility
        User u=User.findByEmail(email)

        Topic topic = new Topic(name:topicName,visibility: visible,user: u)
        topic.save(flush:true,failOnError:true,validate:true)

    }

    def serviceMethod() {

    }
}
