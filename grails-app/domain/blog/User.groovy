package blog

class User {

	static hasMany = [posts:Post]
	
	String login
	String password
	String name
	String role = "commentator"
	
	String toString(){
		name
	  }
	
	static constraints = {
		  login(unique:true)
		  password(password:true)
		  name()
		  role(inList:["author", "admin","commentator"])
		}
	
}
