package blog

class PostController {


	def edit = {
		def post = Post.get(params.id)
		if(!post) {
			post = new Post()
		}
		render(view:'edit', model:[post:post])
	}

	def beforeInterceptor = [action:this.&auth, except:["index", "list", "view"]]
	
	  def auth() {
		if(!session.user) {
		  redirect(controller:"user", action:"login")
		  return false
		}
	  }
	
	def list = {
		render(
				view:'list',
				model:[posts:Post.list(
					sort:'lastUpdated',
					order:'desc')])
	}

	def save = {
		def post = loadPost(params.id)
		post.properties = params
		if(post.save()) {
			redirect(action:'list')
		} else {
			render(view:'edit', model:[post:post])
		}
	}

	private loadPost(id) {
		def post = new Post();
		if(id) {
			post = Post.get(id)
		}
		return post
	}

	def view = {
		if(params.id == null){
			render(view:'view', model:[post:Post.findByTitle(params.title)])
		}
		else{
			render(view:'view', model:[post:Post.get(params.id)])
		}
	}

	def delete = {
		Post.get(params.id).delete();
		redirect(action:'list')
	}

	def search = {

		if(params.value != null){
			def posts = Post.findAllByTitleIlike("${params.value}%")
			render(
					view:'list',
					model:[value: params.value,posts:posts.asList()])
		
	}
}

def index() {
	list()
}
}
