package TodoProject

class Todos {

    String note;
    Date created_at;

    static hasMany = [tags:Tags]
    static belongsTo = Tags
    static constraints = {
    }
}
