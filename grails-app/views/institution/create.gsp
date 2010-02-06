
<%@ page import="org.crisiscamp.schooltrack.datamodel.Institution" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${institutionInstance}">
            <div class="errors">
                <g:renderErrors bean="${institutionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lossValue"><g:message code="institution.lossValue.label" default="Loss Value" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'lossValue', 'errors')}">
                                    <g:textField name="lossValue" value="${institutionInstance?.lossValue}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataProvider"><g:message code="institution.dataProvider.label" default="Data Provider" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'dataProvider', 'errors')}">
                                    <g:select name="dataProvider.id" from="${org.crisiscamp.schooltrack.datamodel.DataProvider.list()}" optionKey="id" value="${institutionInstance?.dataProvider?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="damageLevel"><g:message code="institution.damageLevel.label" default="Damage Level" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'damageLevel', 'errors')}">
                                    <g:textField name="damageLevel" value="${institutionInstance?.damageLevel}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="department"><g:message code="institution.department.label" default="Department" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'department', 'errors')}">
                                    <g:textField name="department" value="${institutionInstance?.department}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="associatedDoc"><g:message code="institution.associatedDoc.label" default="Associated Doc" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'associatedDoc', 'errors')}">
                                    <g:textField name="associatedDoc" value="${institutionInstance?.associatedDoc}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="institutionStatus"><g:message code="institution.institutionStatus.label" default="Institution Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'institutionStatus', 'errors')}">
                                    <g:textField name="institutionStatus" value="${institutionInstance?.institutionStatus}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address"><g:message code="institution.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'address', 'errors')}">
                                    <g:select name="address.id" from="${org.crisiscamp.schooltrack.datamodel.Address.list()}" optionKey="id" value="${institutionInstance?.address?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="institution.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${institutionInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="inSahana"><g:message code="institution.inSahana.label" default="In Sahana" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'inSahana', 'errors')}">
                                    <g:checkBox name="inSahana" value="${institutionInstance?.inSahana}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comments"><g:message code="institution.comments.label" default="Comments" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'comments', 'errors')}">
                                    <g:textField name="comments" value="${institutionInstance?.comments}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
