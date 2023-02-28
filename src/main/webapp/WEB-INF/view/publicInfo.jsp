<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<body>

<h1>Public Information</h1>
<br>
<br>

<security:authorize access="hasAnyRole('EMPLOYEE', 'IT', 'STUFF', 'DIRECTOR')">
<input type="button" value="Public Room"
    onclick="window.location.href = 'public_room'">
Only for Employees, It, Stuff, Director
</security:authorize>

<br>
<br>

<security:authorize access="hasAnyRole('IT', 'STUFF', 'DIRECTOR')">
<input type="button" value="Server Room"
       onclick="window.location.href = 'server_room'">
Only for It, Stuff, Director
</security:authorize>

<br>
<br>

<security:authorize access="hasAnyRole('STUFF', 'DIRECTOR')">
<input type="button" value="Security Room"
       onclick="window.location.href = 'security_room'">
Only for Stuff, Director
</security:authorize>

<br>
<br>

<security:authorize access="hasAnyRole('DIRECTOR')">
<input type="button" value="Boss Room"
       onclick="window.location.href = 'boss_room'">
Only for Director
</security:authorize>

</body>
</html>