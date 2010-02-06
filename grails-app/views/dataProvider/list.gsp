
<%@ page import="org.crisiscamp.schooltrack.datamodel.DataProvider" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'dataProvider.label', default: 'DataProvider')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'dataProvider.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'dataProvider.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="url" title="${message(code: 'dataProvider.url.label', default: 'Url')}" />
                        
                            <g:sortableColumn property="comments" title="${message(code: 'dataProvider.comments.label', default: 'Comments')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${dataProviderInstanceList}" status="i" var="dataProviderInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${dataProviderInstance.id}">${fieldValue(bean: dataProviderInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: dataProviderInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: dataProviderInstance, field: "url")}</td>
                        
                            <td>${fieldValue(bean: dataProviderInstance, field: "comments")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${dataProviderInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
