package blog

class CommentController {
	
     def edit = {
        render(view:'post.edit',
                model:[
                        comment:new Comment(),
                        postId:params.postId])
    }

    def save = {
        def comment = new Comment(params)
        comment.dateCreated = new Date();
        comment.post = Post.get(params.postId)
		comment.id = Comment.count
        comment.save()
		def post = Post.get(params.postId)
		def comments = Comment.findAllByPost(post).reverse()
		render(template:'commentsPrint',model: ['comments':comments])
        }
	
	def delete = {
		Comment.get(1).delete();
		redirect(action:'view')
    }
}

