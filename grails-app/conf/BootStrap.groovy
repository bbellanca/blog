import blog.Post
import blog.User

class BootStrap {

    def init = { servletContext ->		
		def author = new User(login:"author", password:"author", name:"Author" ,role: "author")
		def commentator = new User(login:"commentator", password:"commentator", name:"Commentator")
		author.save()
		commentator.save()
		
    }
    def destroy = {
    }
}
