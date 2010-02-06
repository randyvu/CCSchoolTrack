
<%@ page import="org.crisiscamp.schooltrack.datamodel.School" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'school.label', default: 'School')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${schoolInstance}">
            <div class="errors">
                <g:renderErrors bean="${schoolInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${schoolInstance?.id}" />
                <g:hiddenField name="version" value="${schoolInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lossValue"><g:message code="school.lossValue.label" default="Loss Value" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'lossValue', 'errors')}">
                                    <g:textField name="lossValue" value="${schoolInstance?.lossValue}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dataProvider"><g:message code="school.dataProvider.label" default="Data Provider" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'dataProvider', 'errors')}">
                                    <g:select name="dataProvider.id" from="${org.crisiscamp.schooltrack.datamodel.DataProvider.list()}" optionKey="id" value="${schoolInstance?.dataProvider?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="damageLevel"><g:message code="school.damageLevel.label" default="Damage Level" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'damageLevel', 'errors')}">
                                    <g:textField name="damageLevel" value="${schoolInstance?.damageLevel}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="department"><g:message code="school.department.label" default="Department" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'department', 'errors')}">
                                    <g:textField name="department" value="${schoolInstance?.department}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="associatedDoc"><g:message code="school.associatedDoc.label" default="Associated Doc" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'associatedDoc', 'errors')}">
                                    <g:textField name="associatedDoc" value="${schoolInstance?.associatedDoc}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nStudents"><g:message code="school.nStudents.label" default="NS tudents" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'nStudents', 'errors')}">
                                    <g:textField name="nStudents" value="${fieldValue(bean: schoolInstance, field: 'nStudents')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="institutionStatus"><g:message code="school.institutionStatus.label" default="Institution Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'institutionStatus', 'errors')}">
                                    <g:textField name="institutionStatus" value="${schoolInstance?.institutionStatus}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ownership"><g:message code="school.ownership.label" default="Ownership" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'ownership', 'errors')}">
                                    <g:textField name="ownership" value="${schoolInstance?.ownership}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="address"><g:message code="school.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'address', 'errors')}">
                                    <g:select name="address.id" from="${org.crisiscamp.schooltrack.datamodel.Address.list()}" optionKey="id" value="${schoolInstance?.address?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="school.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${schoolInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="inSahana"><g:message code="school.inSahana.label" default="In Sahana" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'inSahana', 'errors')}">
                                    <g:checkBox name="inSahana" value="${schoolInstance?.inSahana}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comments"><g:message code="school.comments.label" default="Comments" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'comments', 'errors')}">
                                    <g:textField name="comments" value="${schoolInstance?.comments}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="assetClass"><g:message code="school.assetClass.label" default="Asset Class" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: schoolInstance, field: 'assetClass', 'errors')}">
                                    <g:textField name="assetClass" value="${schoolInstance?.assetClass}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
