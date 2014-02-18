package blog

class Comment implements Comparable{

	  static belongsTo = Post

    Post post
    String comment
    CommentAuthor who = new CommentAuthor()
    Date dateCreated

    public int compareTo(Object o) {
        return dateCreated.compareTo(o.dateCreated)
    }
}
