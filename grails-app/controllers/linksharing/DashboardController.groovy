package linksharing

class DashboardController {

    def index() {

        User user1 = User.findByEmail(session.name)
        println session.attributeNames

        render(view: "Dashboard",model: [userdata: user1])
    }
}
