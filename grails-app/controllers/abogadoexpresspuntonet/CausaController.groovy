package abogadoexpresspuntonet



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CausaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Causa.list(params), model:[causaInstanceCount: Causa.count()]
    }

    def show(Causa causaInstance) {
        respond causaInstance
    }

    def create() {
        respond new Causa(params)
    }

    @Transactional
    def save(Causa causaInstance) {
        if (causaInstance == null) {
            notFound()
            return
        }

        if (causaInstance.hasErrors()) {
            respond causaInstance.errors, view:'create'
            return
        }

        causaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'causa.label', default: 'Causa'), causaInstance.id])
                redirect causaInstance
            }
            '*' { respond causaInstance, [status: CREATED] }
        }
    }

    def edit(Causa causaInstance) {
        respond causaInstance
    }

    @Transactional
    def update(Causa causaInstance) {
        if (causaInstance == null) {
            notFound()
            return
        }

        if (causaInstance.hasErrors()) {
            respond causaInstance.errors, view:'edit'
            return
        }

        causaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Causa.label', default: 'Causa'), causaInstance.id])
                redirect causaInstance
            }
            '*'{ respond causaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Causa causaInstance) {

        if (causaInstance == null) {
            notFound()
            return
        }

        causaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Causa.label', default: 'Causa'), causaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'causa.label', default: 'Causa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
