package linksharing

class Resource {

    String description
    User user
    Topic topic
    Date dateCreated
    Date lastUpdated

    static belongsTo = [topic: Topic,user: User]
    static hasMany = [readingItems: ReadingItem,resourceRated:ResourceRating]

    static mapping = {
        table 'Resources'
    }
}
