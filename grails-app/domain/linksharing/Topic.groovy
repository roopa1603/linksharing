package linksharing

import com.sample.Visibility

//import java.beans.Visibility

class Topic {

    String name
    User createdBy
    Visibility visibility

    Date dateCreated
    Date lastUpdated

    static belongsTo = [user: User]
    static hasMany = [resources: Resource, subscriptions: Subscription]
}
