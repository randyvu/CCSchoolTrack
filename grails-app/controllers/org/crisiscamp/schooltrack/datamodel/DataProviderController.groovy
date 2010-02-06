package org.crisiscamp.schooltrack.datamodel

class DataProviderController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [dataProviderInstanceList: DataProvider.list(params), dataProviderInstanceTotal: DataProvider.count()]
    }

    def create = {
        def dataProviderInstance = new DataProvider()
        dataProviderInstance.properties = params
        return [dataProviderInstance: dataProviderInstance]
    }

    def save = {
        def dataProviderInstance = new DataProvider(params)
        if (dataProviderInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'dataProvider.label', default: 'DataProvider'), dataProviderInstance.id])}"
            redirect(action: "show", id: dataProviderInstance.id)
        }
        else {
            render(view: "create", model: [dataProviderInstance: dataProviderInstance])
        }
    }

    def show = {
        def dataProviderInstance = DataProvider.get(params.id)
        if (!dataProviderInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'dataProvider.label', default: 'DataProvider'), params.id])}"
            redirect(action: "list")
        }
        else {
            [dataProviderInstance: dataProviderInstance]
        }
    }

    def edit = {
        def dataProviderInstance = DataProvider.get(params.id)
        if (!dataProviderInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'dataProvider.label', default: 'DataProvider'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [dataProviderInstance: dataProviderInstance]
        }
    }

    def update = {
        def dataProviderInstance = DataProvider.get(params.id)
        if (dataProviderInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (dataProviderInstance.version > version) {
                    
                    dataProviderInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'dataProvider.label', default: 'DataProvider')] as Object[], "Another user has updated this DataProvider while you were editing")
                    render(view: "edit", model: [dataProviderInstance: dataProviderInstance])
                    return
                }
            }
            dataProviderInstance.properties = params
            if (!dataProviderInstance.hasErrors() && dataProviderInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'dataProvider.label', default: 'DataProvider'), dataProviderInstance.id])}"
                redirect(action: "show", id: dataProviderInstance.id)
            }
            else {
                render(view: "edit", model: [dataProviderInstance: dataProviderInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'dataProvider.label', default: 'DataProvider'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def dataProviderInstance = DataProvider.get(params.id)
        if (dataProviderInstance) {
            try {
                dataProviderInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'dataProvider.label', default: 'DataProvider'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'dataProvider.label', default: 'DataProvider'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'dataProvider.label', default: 'DataProvider'), params.id])}"
            redirect(action: "list")
        }
    }
}
