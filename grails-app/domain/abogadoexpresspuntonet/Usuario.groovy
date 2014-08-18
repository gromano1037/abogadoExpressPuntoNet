package abogadoexpresspuntonet

class Usuario {
	String nombre
	String apellido
	String usuario
	String password
	String email
	static belongsTo = [rol: Rol] // El usuario tiene un rol
	Date fechaCreacion
	
	static mapping = {
		table 'usuarios'
		id column:'usuario_id'
		version false
	}
	
    static constraints = {
		nombre(blank: false, minSize: 3, maxSize: 20)
		apellido(blank: false, minSize: 3, maxSize: 20)
		usuario(blank: false, unique: true, minSize: 4, maxSize: 20)
		password(blank: false, password: true, mnSizei: 4, maxSize:8)
		email(blank: false, email: true, unique: true)
				
    }
}
