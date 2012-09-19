package org.expatmix

class Event {

    static constraints = {
    }
    static belongsTo = User
    static hasMany = [participants:User]

    String title
    String description
    Date dateCreated
    Date eventDate
    String language
    String place
    Integer maxParticipants

    String toString(){
        return "${title}, ${dateCreated.format('MM/dd/yyyy')}"
    }


}
