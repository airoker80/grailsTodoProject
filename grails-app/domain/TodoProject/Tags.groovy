package TodoProject

class Tags {

    String tags
    Date created_at
    static hasMany = [todos:Todos]
    static constraints = {
    }
}
