<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
    </head>
    <body>
        <h1>Hello - Welcome to homepage!!</h1>
        <hr>
        
        <p>
            User: <security:authentication property="principal.username" />
            <br>
            <br>
            Role(s): <security:authentication property="principal.authorities" />
        </p>
        <hr>
        
        <security:authorize access="hasRole('MANAGER')">
        <p>
            <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
            (Only for Managers)
        </p>
        </security:authorize>
        
        <security:authorize access="hasRole('ADMIN')">
        <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
            (Only for Admins)
        </p>
        </security:authorize>
        
        <hr>
        
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">       
            <input type="submit" value="Logout" />
        </form:form>
    </body>
</html>
