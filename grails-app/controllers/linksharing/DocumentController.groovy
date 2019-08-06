package linksharing

class DocumentController {

    def documentService

    def download()
    {

        Long id=Long.parseLong(params.id)
        println "id:"+id
        DocumentResource dr = DocumentResource.get(id)


        //Users user = session.user
        User user=User.findByEmail(session.name)
        def file=new File("/home/roopa/Downloads/GRAILS_Doc")

        def temp = new File('/home/roopa/projects/linksharing/grails-app/assets/document'+dr.path)

        if (temp.exists()) {
            file = temp
        } else {
            file = null
        }
        print dr.path

        response.setHeader("Content-disposition", "attachment;filename=\"${dr.path}\"")
        response.outputStream << file.bytes

    }


    /*def save()
    {
        documentService.saveMethod(params,session.uname,request)
        redirect(controller:"Dashboard" , action:"index")

    }*/




}
