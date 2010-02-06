
<%@ page import="org.crisiscamp.schooltrack.datamodel.Contact" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'contact.id.label', default: 'Id')}" />
                        
                            <th><g:message code="contact.address.label" default="Address" /></th>
                   	    
                            <g:sortableColumn property="name" title="${message(code: 'contact.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="telephone" title="${message(code: 'contact.telephone.label', default: 'Telephone')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${contactInstanceList}" status="i" var="contactInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${contactInstance.id}">${fieldValue(bean: contactInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: contactInstance, field: "address")}</td>
                        
                            <td>${fieldValue(bean: contactInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: contactInstance, field: "telephone")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${contactInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
