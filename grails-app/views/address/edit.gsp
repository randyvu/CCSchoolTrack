
<%@ page import="org.crisiscamp.schooltrack.datamodel.Address" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
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
            <g:hasErrors bean="${addressInstance}">
            <div class="errors">
                <g:renderErrors bean="${addressInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${addressInstance?.id}" />
                <g:hiddenField name="version" value="${addressInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="postalCode"><g:message code="address.postalCode.label" default="Postal Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: addressInstance, field: 'postalCode', 'errors')}">
                                    <g:textField name="postalCode" value="${addressInstance?.postalCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="street"><g:message code="address.street.label" default="Street" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: addressInstance, field: 'street', 'errors')}">
                                    <g:textField name="street" value="${addressInstance?.street}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="longitude"><g:message code="address.longitude.label" default="Longitude" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: addressInstance, field: 'longitude', 'errors')}">
                                    <g:textField name="longitude" value="${addressInstance?.longitude}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="latitude"><g:message code="address.latitude.label" default="Latitude" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: addressInstance, field: 'latitude', 'errors')}">
                                    <g:textField name="latitude" value="${addressInstance?.latitude}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="country"><g:message code="address.country.label" default="Country" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: addressInstance, field: 'country', 'errors')}">
                                    <g:textField name="country" value="${addressInstance?.country}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="city"><g:message code="address.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: addressInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" value="${addressInstance?.city}" />
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
