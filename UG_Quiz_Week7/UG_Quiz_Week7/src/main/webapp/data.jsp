<%--
  Created by IntelliJ IDEA.
  User: Vladislav
  Date: 2021-11-08
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Data</title>
</head>
<body>
Model: <%=session.getAttribute("model")%><br/>
Manufacturer: <%=session.getAttribute("manufacturer")%><br/>
releaseDate: <%=session.getAttribute("releaseDate")%><br/>
Engine: <%=session.getAttribute("engine")%><br/>
Seat Count: <%=session.getAttribute("seatCount")%><br/>
</body>
</html>
