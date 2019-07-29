package linksharing

class DashboardController {

    def dashboardService

    def index (){
//        println "This is session name"+session.name

       /* User user1 = User.findByEmail(session.name)
        Integer topicCount = dashboardService.tCount(session.name)
        Integer subs = dashboardService.sCount(session.name)

        render(view:"Dashboard", model:[userdata: user1, topicCount:topicCount, total:subs])
*/
        //print session.name
        User user1 = User.findByEmail(session.name)
        println "This is username of the user who is logged in"+user1.username
        //for displaying subscriptions and topic count of particular user

        Integer count_topic = dashboardService.tCount(session.name)
        Integer count_subscribe = dashboardService.sCount(session.name)
        println session.name

        List subscriptionLt=dashboardService.subscriptions(session.name)
        print subscriptionLt

        List topicList=subscriptionLt*.topic

        List<Long>topicids = topicList.collect{it.id}

        List counts=dashboardService.subscriptioncount(topicids)
        List resourceCount=dashboardService.postscount(topicids)

        List trending=dashboardService.trendtopics()

        User user =User.findByEmail(session.name)


        render(view: "Dashboard" ,model : [user           : user,
                                           userdata       : user1,
                                           count_topic    : count_topic,
                                           count_subscribe: count_subscribe,
                                           subscriptions  : subscriptionLt,
                                           subscount      :counts,
                                           resourceCount  :resourceCount,
                                           trending       : trending])



    }
}
