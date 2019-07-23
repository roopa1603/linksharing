package linksharing

class User {

    String firstName
    String lastName
    String username
    String email
    String password
    Byte photo
    Boolean admin
    Boolean active
    Date dateCreated
    Date lastUpdated
//    String toString(){
//
//        "${fullname}"
//    }

    static hasMany = [topics: Topic, subscriptions: Subscription, resources: Resource, readingitems: ReadingItem, ratings: ResourceRating]

    static constraints = {
        firstname()
        username(unique:true)
        password(password:true)
    }

    static mapping = {
        table 'Users'
    }
}