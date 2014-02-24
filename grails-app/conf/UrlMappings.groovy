
class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
			
				}

		}
		"/$year/$month/$title"(controller:"post",action:"view"){
			constraints {
			year(matches:/\d{4}/)
			month(matches:/\d{2}/)
				}
		}
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
