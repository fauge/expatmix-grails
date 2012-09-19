import org.expatmix.User
import org.expatmix.Event

class BootStrap {

    def init = { servletContext ->
        def manu = new User(login: "manu",
                name: "Emmanuel",
                gender: "M",
                password: "toto",
                mail: "e@gmail.com",
                birthDate: new Date(),
                city: "Houilles"
        )
        manu.save()
        if (manu.hasErrors()) {
            println manu.errors
        }

        def fred = new User(login: "fred",
                name: "Frédéric",
                gender: "M",
                password: "toto", mail: "f@gmail.com",
                birthDate: new Date(),
                city: "Houilles"
        )
        fred.save()
        if (fred.hasErrors()) {
            println fred.errors
        }

        def anel = new User(login: "anel",
                name: "Anel",
                gender: "F",
                password: "toto", mail: "a@gmail.com",
                birthDate: new Date(),
                city: "Houilles"
        )
        anel.save()
        if (anel.hasErrors()) {
            println anel.errors
        }

        def webSiteCreation = new Event(title: "Création site web",
                description: "description",
                eventDate: new Date(),
                maxParticipants: 10,
                language: "FR, EN",
                place: "Houilles")
        //webSiteCreation.addToParticipants(manu)
        webSiteCreation.addToParticipants(fred)
        webSiteCreation.save()

    }
    def destroy = {
    }

}
