
<%@ page import="org.crisiscamp.schooltrack.datamodel.Institution" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'institution.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="lossValue" title="${message(code: 'institution.lossValue.label', default: 'Loss Value')}" />
                        
                            <th><g:message code="institution.dataProvider.label" default="Data Provider" /></th>
                   	    
                            <g:sortableColumn property="damageLevel" title="${message(code: 'institution.damageLevel.label', default: 'Damage Level')}" />
                        
                            <g:sortableColumn property="department" title="${message(code: 'institution.department.label', default: 'Department')}" />
                        
                            <g:sortableColumn property="associatedDoc" title="${message(code: 'institution.associatedDoc.label', default: 'Associated Doc')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${institutionInstanceList}" status="i" var="institutionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${institutionInstance.id}">${fieldValue(bean: institutionInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "lossValue")}</td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "dataProvider")}</td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "damageLevel")}</td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "department")}</td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "associatedDoc")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${institutionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
