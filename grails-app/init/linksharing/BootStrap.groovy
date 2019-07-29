/*
package linksharing

class BootStrap {

    def destroy = {
    }
    def init = { servletContext ->

        User u1=new User(username : 'Sabri',firstName : 'Roopa'  , lastName : 'sabri' , password : 'roopa' , admin : false , active : true , email : 'roopa1@gmail.com' )
        User u2=new User(username : 'saurabh' , firstName : 'saurabh'  , lastName : 'kumar' , password : 'saurabh' , admin : false , active : true , email : 'saurabh1@gmail.com')
        User u3=new User(username : 'chaithra1' , firstName : 'chaithra'  , lastName : 'gs' , password : 'chai123' , admin : false , active : true , email : 'chai1@gmail.com')
        User u4=new User(username : 'akshu' , firstName : 'Akshatha'  , lastName : 'tilagar' , password : 'qwerty' , admin : true , active : true , email : 'akshu1reset@gmail.com')


        u1.save(flush:true,failOnError:true)

        Topic topic1 = new Topic(name:"html",visibility: "PUBLIC")
        Topic topic2 = new Topic(name:"css",visibility: "PUBLIC")
        Topic topic3 = new Topic(name:"javascript",visibility: "PUBLIC")
        Topic topic11 = new Topic(name:"groovy",visibility: "PRIVATE")
        Topic topic12 = new Topic(name:"grails",visibility: "PRIVATE")

        u4.addToTopics(topic1)
        u4.addToTopics(topic2)

        u4.save(flush:true,failOnError: true)
        topic1.save(flush:true,failOnError: true)
        topic2.save(flush:true,failOnError: true)

        u3.addToTopics(topic3)
        u3.addToTopics(topic11)
        u3.save(flush:true,failOnError: true)
        topic3.save(flush:true,failOnError: true)
        topic11.save(flush:true,failOnError: true)
        u2.addToTopics(topic12)
        u2.save(flush:true,failOnError: true)
        topic12.save(flush:true,failOnError: true)

        Resource resource1 = new Resource(description:"This is first Post",topic:topic1)
        Resource resource2 = new Resource(description:"This is second Post",topic:topic1)
        Resource resource3 = new Resource(description:"This is third Post",topic:topic2)
        Resource resource4 = new Resource(description:"This is fourth Post",topic:topic3)

        u4.addToResources(resource1)

        u4.addToResources(resource2)

        u4.addToResources(resource3)
        u4.save(flush:true,failOnError: true)


        u3.addToResources(resource4)
        u3.save(flush:true,failOnError: true)


        topic1.addToResourceHas(resource1)
        topic1.addToResourceHas(resource2)
        topic1.save(flush:true,failOnError: true)

        topic2.addToResourceHas(resource3)
        topic2.save(flush:true,failOnError: true)


        topic3.addToResourceHas(resource4)
        topic3.save(flush:true,failOnError: true)

        resource1.save(flush:true,failOnError:true)
        resource2.save(flush:true,failOnError:true)
        resource3.save(flush:true,failOnError:true)
        resource4.save(flush:true,failOnError:true)

        //---------no error-------

        Subscription s1=new Subscription(seriousness: "CASUAL" ,topics : topic1)
        Subscription s2=new Subscription(seriousness: "CASUAL" , topics : topic2)
        Subscription s3=new Subscription(seriousness: "CASUAL" , topics : topic3)
        Subscription s4=new Subscription(seriousness: "CASUAL" , topics : topic11)
        Subscription s5=new Subscription(seriousness: "CASUAL" , topics: topic12)
        Subscription s6=new Subscription(seriousness: "CASUAL" ,topics: topic11)
        Subscription s7=new Subscription(seriousness: "CASUAL" , topics : topic1)
        Subscription s8=new Subscription(seriousness: "CASUAL" , topics : topic2)

        u4.addToSubscriptions(s1)
        u4.addToSubscriptions(s2)
        u4.addToSubscriptions(s6)
        u3.addToSubscriptions(s3)
        u3.addToSubscriptions(s4)
        u2.addToSubscriptions(s5)
        u1.addToSubscriptions(s7)
        u1.addToSubscriptions(s8)

        topic1.addToSubscriptions1(s1)
        topic1.addToSubscriptions1(s7)
        topic2.addToSubscriptions1(s8)
        topic2.addToSubscriptions1(s2)
        topic3.addToSubscriptions1(s3)
        topic11.addToSubscriptions1(s4)
        topic11.addToSubscriptions1(s6)
        topic12.addToSubscriptions1(s5)

        s1.save(flush:true,failOnError:true)
        s2.save(flush:true,failOnError:true)
        s3.save(flush:true,failOnError:true)
        s4.save(flush:true,failOnError:true)
        s5.save(flush:true,failOnError:true)
        s6.save(flush:true,failOnError:true)
        s7.save(flush:true,failOnError:true)
        s8.save(flush:true,failOnError:true)
    }
}
*/
