
<%@ page import="org.crisiscamp.schooltrack.datamodel.Institution" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: institutionInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.lossValue.label" default="Loss Value" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: institutionInstance, field: "lossValue")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.dataProvider.label" default="Data Provider" /></td>
                            
                            <td valign="top" class="value"><g:link controller="dataProvider" action="show" id="${institutionInstance?.dataProvider?.id}">${institutionInstance?.dataProvider?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.damageLevel.label" default="Damage Level" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: institutionInstance, field: "damageLevel")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.department.label" default="Department" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: institutionInstance, field: "department")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.associatedDoc.label" default="Associated Doc" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: institutionInstance, field: "associatedDoc")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.institutionStatus.label" default="Institution Status" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: institutionInstance, field: "institutionStatus")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.address.label" default="Address" /></td>
                            
                            <td valign="top" class="value"><g:link controller="address" action="show" id="${institutionInstance?.address?.id}">${institutionInstance?.address?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: institutionInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.inSahana.label" default="In Sahana" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${institutionInstance?.inSahana}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="institution.comments.label" default="Comments" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: institutionInstance, field: "comments")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${institutionInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
