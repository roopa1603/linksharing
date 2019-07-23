package linksharing

class Resource {

    String description
    User user
    Topic topic
    Date dateCreated
    Date lastUpdated

    static belongsTo = [topic: Topic]

    static mapping = {
        table 'Resources'
    }
}
