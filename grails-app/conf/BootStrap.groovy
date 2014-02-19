import blog.Post

class BootStrap {

    def init = { servletContext ->		
		 new Post(title:"BlogPost Test",
           teaser:"Magic inside!!",
           content:"Maven!",
           published:true).save()

    }
    def destroy = {
    }
}
