package TodoProject

class TagsController {

    def index() { }

    def createTags(){
    }
    def  addTags(){
        println "params===>"+params
        Tags tags = new Tags()
        tags.tags= params.tags
        tags.created_at = new Date();
        tags.save(flush: true, failOnError: true)
        redirect(action: 'listTags')
    }
    def listTags(){
    def list_tags = Tags.findAll();
        [list_tags:list_tags]
    }
    def deleteTags(){
        Tags tags = Tags.get(params.id)
        tags.delete(flush: true)
        redirect(action: 'listTags')
    }
    def updateTags(){
        println  "params:"+params
        Tags tags = Tags.get(params.setId)
        tags.tags = params.tags;
        tags.created_at=new Date();
        tags.save(flush: true, failOnError: true);
        redirect(action: 'listTags')
    }
}
