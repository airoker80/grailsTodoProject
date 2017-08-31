package TodoProject

import groovy.sql.Sql


class TodosController {

    def dataSource
    def index() {

    }

    def createTodos(){
        println Todos.list()
        def taglist = Tags.findAll()
        println taglist
        [taglist:taglist]

    }
    def addTodos(){
        println  "-->"+params
        Todos todos = new Todos()
        println "====" + Tags.findById(params.tagId)
        todos.note=params.todos;
        todos.created_at=new Date()
        todos.addToTags(Tags.get(params.tagId))
        todos.save(flush: true, failOnError: true);
        redirect(action: 'listTodos')
    }

    def  deleteTodos(){
        def sql = Sql.newInstance(dataSource)
        sql.execute(" DELETE  * from tags_todos where todos_id="+params.id+";")
        sql.close();
        Todos todos = Todos.get(params.id)
//        todos.delete(flush: true);
        redirect(action: 'listTodos')
    }
    def updateTodos(){
        println  "params:"+params
        Todos todos = Todos.get(params.setId)
        todos.note = params.todos;
        todos.created_at=new Date();
        todos.tags = Tags.findById(params.id)
        todos.save(flush: true, failOnError: true);
        redirect(action: 'listTodos')
    }
    def listTodos(){
        def todos = Todos.findAll();
        println todos;
        println todos.tags;
        [todos:todos]
    }
    def getTodosByTag(){
        println "params ->"+ params
        def tagId = (params.id)
        def list;
//        println tag/
        def sql = Sql.newInstance(dataSource)
       def result = sql.rows('SELECT * FROM tags_todos INNER JOIN todos WHERE tags_todos.todos_id = todos.id AND tags_id=:tagId',[tagId:tagId])
        println  'sql-->' +result
        list = result
        sql.close();
        println "list" + list
         render (template: 'todoList', model: [result:list])

//        render  result;
    }

}
