package linksharing

import grails.transaction.Transactional

import javax.annotation.Resources

@Transactional
class DashboardService {

    def tCount(String name) {

        User user1 = User.findByEmail(name)
        Integer topicCount = user1?.topics?.size()
        return topicCount
    }

    def sCount(String name) {

        User user1 = User.findByEmail(name)
        Integer subscriptionCount = user1?.subscriptions?.size()
        return subscriptionCount
    }
    def subscriptions(String name) {
        User user =User.findByEmail(name)

        List<Long> subscriptionList = Subscription.createCriteria().list{
            eq("user.id",user.id)
        }

        //print subscriptionList
        subscriptionList.sort{b,a-> a.topics.lastUpdated<=>b.topics.lastUpdated}
        //print subscriptionList
        return subscriptionList

    }

    def subscriptioncount(List topicids)
    {
        def topiccounts=Subscription.createCriteria().list
                {
                    projections{
                        count('topic.id')
                        groupProperty('topic.id')
                        // countDistinct('topic.id')
                    }
                    'topic'{
                        inList('id',topicids)
                    }
                }

        List <Integer> counts = topicids.collect{ x ->
            topiccounts.find{
                if (it.getAt(1)==x)
                    return it.getAt(0)
            }

        }.collect{it.getAt(0)}
        return counts
    }
    // for displaying topic  which has more resources as a trending topic
    def postscount(List topicids)
    {
        def rescounts= Resource.createCriteria().list
                {
                    projections{
                        count('topic.id')
                        groupProperty('topic.id')
                        // countDistinct('topic.id')
                    }
                    'topic'{
                        inList('id',topicids)
                    }
                }

        List <Integer> resourceCount=topicids.collect{ x ->
            rescounts.find{

                if (it.getAt(1)==x)
                    return it.getAt(0)
            }

        }.collect{if(!it)
            return 0
        else
            it.getAt(0)}

        return resourceCount

    }

    def trendtopics()
    {
        List <Long> topicsid=Topic.list().collect{
            it.id
        }

        List abcd=Resource.createCriteria().list(max:5)
                {
                    projections{
                        count('topic.id')
                        groupProperty('topic.id')

                    }


                }

        abcd.sort{b,a-> a.getAt(0)<=>b.getAt(0)}

        List <Integer> xyz=topicsid.collect{ x ->
            abcd.find{

                if (it.getAt(1)==x)
                    return it.getAt(0)
                else
                    return 0

            }

        }.collect{if(!it)
            return 0
        else
            it.getAt(1)}
        xyz.removeAll{it==0}
        List bbb= xyz+(topicsid-xyz)
        List <Topic> topicstrendy=Topic.createCriteria().list{
            inList('id' , bbb)

        }
        return topicstrendy
    }


}
