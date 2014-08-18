package abogadoexpresspuntonet

class Causa {
	String caratula
	String descripcion
	String tipo
	Integer expediente
	String estado
	Date fechaCreacion
	
	static belongsTo = [cliente: Cliente]
	
	static mapping = {
		table 'causas'
		id column: 'legajo'
		version false
	}

    static constraints = {
		caratula(blank: false, minSize: 4, maxSize: 30)
		descripcion(blank: false, minSize:4, maxSize: 90)
		tipo( inList: ["Judicial", "Penal", "Extrajudicial", "Administrativo", "Arbitral", "Laboral", "Familia", "Civil y Comercial"])
		estado( inList: ["Archivado", "No archivado"])
		fechaCreacion(blank: false)
				
    }
}
