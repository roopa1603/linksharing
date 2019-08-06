package linksharing

import grails.transaction.Transactional

@Transactional
class ResourceRatingService {

    def saveMethod(params) {
        print "very much inside"

        int rating =Integer.parseInt(params.value)
        User user=User.findByEmail(params.username)
        Long resourceId= Long.parseLong(params.resourceId)
        Resource res=Resource.get(resourceId)
        ResourceRating resRate=ResourceRating.createCriteria().get{
            eq('userRated.id',user.id)
            eq('resource.id',res.id)
        }
        if(resRate)
        {
            resRate.score=rating
            resRate.save()
        }
        else {
            ResourceRating resourceRate = new ResourceRating(score: rating, userrated: user, resource: res)
            resourceRate.save(failOnError: true)
            user.addToResourceRated(resourceRate)
            res.addToResourceRated(resourceRate)
            user.save(flush: true, failOnError: true)
            res.save(flush: true, failOnError: true)
            //resourceRate.save(flush:true , failOnError: true)}
            print "very much outside"
        }

    }

    def readMethod(username, Resource res)
    {
        User user =User.findByEmail(username)
        ResourceRating resRate=ResourceRating.createCriteria().get{
            eq('userRated.id',user.id)
            eq('resource.id',res.id)
        }
        if(resRate)
        {
            return resRate.score
            //resRate.score.save()
        }
        else
            return 0

    }
}
