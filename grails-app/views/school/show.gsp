
<%@ page import="org.crisiscamp.schooltrack.datamodel.School" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'school.label', default: 'School')}" />
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
                            <td valign="top" class="name"><g:message code="school.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.lossValue.label" default="Loss Value" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "lossValue")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.dataProvider.label" default="Data Provider" /></td>
                            
                            <td valign="top" class="value"><g:link controller="dataProvider" action="show" id="${schoolInstance?.dataProvider?.id}">${schoolInstance?.dataProvider?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.damageLevel.label" default="Damage Level" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "damageLevel")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.department.label" default="Department" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "department")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.associatedDoc.label" default="Associated Doc" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "associatedDoc")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.nStudents.label" default="NS tudents" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "nStudents")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.institutionStatus.label" default="Institution Status" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "institutionStatus")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.ownership.label" default="Ownership" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "ownership")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.address.label" default="Address" /></td>
                            
                            <td valign="top" class="value"><g:link controller="address" action="show" id="${schoolInstance?.address?.id}">${schoolInstance?.address?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.inSahana.label" default="In Sahana" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${schoolInstance?.inSahana}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.comments.label" default="Comments" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "comments")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="school.assetClass.label" default="Asset Class" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: schoolInstance, field: "assetClass")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${schoolInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
