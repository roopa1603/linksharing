package linksharing

class User {

    String firstName
    String lastName
    String username
    String email
    String password
    String photo
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
        //firstname()
        email(unique: true)
        username(unique:true)
        password blank :false, nullable : false,minSize: 4, maxSize: 32
        photo nullable: true
    }

    static mapping = {
        table 'Users'
    }
}