package linksharing

import com.sample.Seriousness

class Subscription {
    Topic topic
    User user

    Date dateCreated
    Seriousness seriousness


    static belongsTo = [topics: Topic, users: User]
}
