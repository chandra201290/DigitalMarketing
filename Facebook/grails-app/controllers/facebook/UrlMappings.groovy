package facebook

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/fbSignIn/callback?"(controller:"camp", action:"campaign" )

      // "/"(view:"/index")
       "/"(controller:'Home',action: 'index' )
       // "500"(controller:'Home',action: 'index' )
        "/camp"(controller:'camp', action:'campaign')
       "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
