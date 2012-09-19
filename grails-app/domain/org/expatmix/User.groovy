package org.expatmix

class User {

    static constraints = {
        login()
        name()
        gender()
        mail()
        role(inList: ["admin", "user"])

    }

    static hasMany = [events: Event]
    static transients = ['admin']

    boolean isAdmin() {
        return role == "admin"
    }



    String login
    String password

    String name

    Date birthDate

    String gender
    String city
    String mail

    Date dateCreated

    String role = "user"

    String toString() {
        return "${login}, ${dateCreated.format('MM/dd/yyyy')}"
    }

}
