package abogadoexpresspuntonet

import java.util.Date;

class Rol {
	String nombre
	String descripcion
	String toString(){
		"${nombre}"
	}
	static hasMany = [usuarios: Usuario]
			
	static mapping = {
		table 'roles'
		id column:'rol_id'
		version false
	}

    static constraints = {
		nombre(blank:false, minSize:3, maxSize:20)
		descripcion(blank:false, minSize:4, maxSize:60)
	}
		
  
}



