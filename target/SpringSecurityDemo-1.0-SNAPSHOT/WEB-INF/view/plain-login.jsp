<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Custom Login Page</title>
        <style>
            .failed {
                color: red;
            }
        </style>
    </head>
    <body>
        <h1>My Custom Login Page</h1>
        
        <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
            
            <c:if test="${param.error!=null}">
                <i class="failed">Sorry! You have entered invalid username/password</i>
            </c:if>
            
            <p>
                User name : <input type="text" name="username" />
            </p>
            <p>
                Password : <input type="password" name="password" />
            </p>
            <input type="submit" value="Login" />
            
        </form:form>
    </body>
</html>
