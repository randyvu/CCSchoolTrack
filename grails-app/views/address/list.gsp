
<%@ page import="org.crisiscamp.schooltrack.datamodel.Address" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'address.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="postalCode" title="${message(code: 'address.postalCode.label', default: 'Postal Code')}" />
                        
                            <g:sortableColumn property="street" title="${message(code: 'address.street.label', default: 'Street')}" />
                        
                            <g:sortableColumn property="longitude" title="${message(code: 'address.longitude.label', default: 'Longitude')}" />
                        
                            <g:sortableColumn property="latitude" title="${message(code: 'address.latitude.label', default: 'Latitude')}" />
                        
                            <g:sortableColumn property="country" title="${message(code: 'address.country.label', default: 'Country')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${addressInstanceList}" status="i" var="addressInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${addressInstance.id}">${fieldValue(bean: addressInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: addressInstance, field: "postalCode")}</td>
                        
                            <td>${fieldValue(bean: addressInstance, field: "street")}</td>
                        
                            <td>${fieldValue(bean: addressInstance, field: "longitude")}</td>
                        
                            <td>${fieldValue(bean: addressInstance, field: "latitude")}</td>
                        
                            <td>${fieldValue(bean: addressInstance, field: "country")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${addressInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
