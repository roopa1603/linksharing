package linksharing

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ResourceController {

    def userService
    def resourceRatingService
    def resourceService

    def index() {
        if (!session.name) {
            render("Login required")
        }
        else {
            User u = User.findByEmail(session.name)
            List SubscriptionLt = userService.subscriptions(session.name)

            Resource res = Resource.get(params.id)
            List trending = userService.trendtopics()

            List trending1=trending.collect{it.id}
            println "trending1>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+trending1
            List subcount = userService.subscriptioncount(trending1)
            List postcount = userService.postscount(trending1)

            def rating = resourceRatingService.readMethod(session.name,res)


            render(view: "index", model: [userdata:u,
                                            subscriptions: SubscriptionLt,
                                           resource: res,
                                            value: rating,
                                          trending: trending,
                                          countforsubs: subcount,
                                          countforposts:postcount])


        }
    }


    def editread() {
        if (!session.name) {
            render("Login required")
        } else {
            resourceService.editreadMethod(params, session.name)
            redirect(controller: "dashboard", action: "index")
        }
    }

    def delete() {
        resourceService.deleteMethod(params)
        redirect(controller: "dashboard", action: "index")
    }
    def postlist() {
        if(!session.name){
            render("please login first")
        }else{
            User user = User.findByEmail(session.name)
            List subscriptionLt = userService.subscriptions(session.name)
            List resources = Resource.list()
            render(view:'postlist',model:[list:resources,userdata:user,subscriptions:subscriptionLt])

        }
    }

}
