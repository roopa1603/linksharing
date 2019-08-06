package linksharing

class TopicController {
    def userService
    def topicService
    def topicListService

    def newTopic(){
        render(view:"topicShow")
    }

    def topiclist() {
        User u = User.findByEmail(session.name)
        List subscriptionLt = userService.subscriptions(session.name)
        List topiclist = topicListService.serviceMethod()

        render(view:'TopicList', model: [topiclists: topiclist,
                                         userdata: u,
                                         subscriptions:subscriptionLt])
    }

    def save() {
        Topic t = Topic.findByName(params.topicName)
        List myList = topicService.postOfUser(session.name)
        boolean var = myList.contains(t)
        if(var){
            flash.message11 = "Topic Already exists!!"
            redirect(controller: "dashboard", action: "index")
        }else {
            String email = session.name
            topicService.save(params, email)

            redirect(controller: "dashboard", action: "index")
            flash.message11 = "CREATED A NEW TOPIC!!!!!"
        }
    }

    def saveDoc(){
        topicService.saveDoc(params,request,session.name)
        redirect(controller: "dashboard", action: "index")
    }
    def saveLink(){
        topicService.saveLink(params,request,session.name)
        redirect(controller: "dashboard", action: "index")
    }

    def updateVisibility(params)
    {
        Topic t=Topic.get(params.id)
        t.visibility=params.visibility
        t.save(flush:true)
        redirect(controller: "dashboard", action: "index")

    }
    def delete(){
        Long tid = Long.parseLong(params.id)
        Topic topic = Topic.findById(tid)
        topic.delete(flush: true)
        flash.message13 = "YOU HAV DELETED A TOPIC!!!!"
        redirect(action: 'topiclist')
    }


    def topicshow() {
        User user=User.findByEmail(session.name)
        User user1 = User.findByEmail(session.name)
        Long tid=0.0
        print params.id
        Long id = Long.parseLong(params.id)
        Subscription sub = Subscription.get(id)

        List subscriptionLt=userService.subscriptions(session.name)

        if(sub){
            Topic t = sub.topic
            tid = t.id

        }
        else{
            tid=id
        }


        Long subscount = Subscription.createCriteria().count {
            eq("topic.id", tid)
        }
        int postcount = Resource.createCriteria().count {
            eq('topic.id', tid)
        }

        List<Subscription> subscription = Subscription.createCriteria().list {
            eq("topic.id", tid)
        }
        List<User> users = subscription*.user
        List<Long> userslist = users.collect { it.id }


        List subscriptioncount = topicService.subscriptioncount(userslist)

        List postscount = topicService.topiccount(userslist)

        List<Resource> resource = Resource.createCriteria().list {
            eq("topic.id", tid)
        }
        println "------------------------"
        render(view:"topicShow" ,
                model : [user:user,
                         subs:sub ,
                         subscount:subscount ,
                         postcount : postcount ,
                         subscription:subscription,
                         subscriptions : subscriptionLt,
                         subscriptioncount:subscriptioncount ,
                         postscount:postscount,
                         resources:resource,
                         userdata:user1,
                         subscriptions : subscriptionLt])
    }
}


