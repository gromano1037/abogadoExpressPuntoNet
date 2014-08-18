package abogadoexpresspuntonet

class LoginController {

    def index = {
		
	}
	
	def validar = {
		
		def usuarioVal = Usuario.findByUsuario(params.loginUsuario)
		if(usuarioVal)
			{
				def passwordVal = Usuario.findByPassword(params.loginPassword)
				if(passwordVal)
					{
						session.user = usuarioVal
						flash.message = "Bienvenido ${usuarioVal.nombre}!"
						redirect(controller:'menu')
		    			}
			    else 
					{
						flash.message = "Password incorrecto"
						redirect (controller: "login")
					 }
			}
		else
			{
				flash.message = "usuario no registrado!"
				def err = 2
				redirect(controller: "login")
				}
	}
	
	def logout = {
		//flash.message = "Goodbye ${session.user.fullName}"
		session.user = null
		redirect(controller:"login")
	}
	
}
