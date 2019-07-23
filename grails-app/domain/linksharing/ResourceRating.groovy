package linksharing

class ResourceRating {
    Resource resource
    User user
    Integer score

    static constraints = {
        score nullable:true
    }
}
