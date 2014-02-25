package blog

class Comment implements Comparable{

	  static belongsTo = Post

    Post post
    String comment
    CommentAuthor who = new CommentAuthor()
    Date dateCreated
	int id

	static constraints = {
		comment(maxSize: 5000)
	  }
	
    public int compareTo(Object o) {
        return o.dateCreated.compareTo(dateCreated)
    }
}
