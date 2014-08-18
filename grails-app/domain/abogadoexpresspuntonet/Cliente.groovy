package abogadoexpresspuntonet

class Cliente {
	Integer dni
	String apellido
	String nombre
	String empresa
	String email
	Integer cuilPrimer
	Integer cuilMedio
	Integer cuilUltimo
	String cuil
	String calle
	Integer calleNro
	String localidad
	Integer codigoPostal
	String provincia
	String estadoCivil
	Integer telContactoCodArea
	Integer telContactoNro
	Date fechaCreacion
	
	static hasMany = [causas: Causa]
	
	static mapping = {
		table 'clientes'
		id column:'cliente_id'
		version false
	}
	

    static constraints = {
		dni(blank: false, unique: true, minSize: 6, maxSize: 8)
		apellido(blank: false, minSize: 3, maxSize: 20)
		nombre(blank: false, minSize: 3, maxSize: 20)
		empresa(blank:true, minSize: 2, maxSize: 20)
		email(blank: false, email: true, minSize: 3, maxSize: 40)
		cuilPrimer(blank: false, minSize:1, maxSize: 2, size: 2)
		cuilMedio(blank: false, minSize: 6, maxSize: 8)
		cuilUltimo(blank:false, maxSize: 2)
		cuil(matches: '\\d{2}\\-\\d{8}\\-\\d{1}')
		calle(blank: false, minSize: 2, maxSize: 30)
		calleNro(blank: false, minSize: 1, maxSize: 5)
		localidad(blank: false, minSize: 3, maxSize: 30)
		codigoPostal(blank: false, minSize: 3, maxSize: 6)
		provincia( inList: ["Buenos Aires", "Catamarca", "Chaco", "Chubut", "Ciudad Autónoma de Buenos Aires", "Córdoba", "Corrientes", "Entre Ríos", "Formosa", "Jujuy", "La Pampa", "La Rioja", "Mendoza", "Misiones", "Neuquén", "Río Negro", "Salta", "San Juan", "San Luis", "Santa Cruz", "Santa Fe", "Santiago del Estero", "Tierra del Fuego", "Tucumán"])
		estadoCivil( inList: ["Soltero/a", "Casado/a", "Divorciado/a", "Viudo/a"])
		telContactoCodArea(blank: false, minSize: 2, maxSize: 6)
		telContactoNro(blank: false, minSize: 4, maxSize: 8)
		}
}
