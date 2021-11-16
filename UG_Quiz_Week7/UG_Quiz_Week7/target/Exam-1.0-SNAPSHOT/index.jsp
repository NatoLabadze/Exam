<%@ page import="com.example.ug_quiz_week7.entities.Car" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h3>Session & Cookie Test</h3>

<form method="post">
    Model: <input id="carModel" type="text" name="model"><br/>
    Manufacturer: <input id="carManufacturer" type="text" name="manufacturer"><br/>
    releaseDate: <input id="carReleaseDate" type="date" name="releaseDate"><br/>
    Engine Capacity: <input id="carEngine" type="number" name="engine"><br/>
    Seat Count: <input id="carSeatCount" type="number" name="seatCount"><br/>
    <button type="submit">Submit</button>
</form>

<%
    Car car = new Car();

    if(request.getParameter("model") != null
    && request.getParameter("manufacturer") != null
            && request.getParameter("releaseDate") != null
            && request.getParameter("engine") != null
            && request.getParameter("seatCount") != null) {

        car.setModel(request.getParameter("model"));
        car.setManufacturer(request.getParameter("manufacturer"));
        car.setReleaseDate(request.getParameter("releaseDate"));
        car.setEngine(Float.parseFloat(request.getParameter("engine")));
        car.setSeatCount(Integer.parseInt(request.getParameter("seatCount")));


        session.setAttribute("model", car.getModel());
        session.setAttribute("manufacturer", car.getManufacturer());
        session.setAttribute("releaseDate", car.getReleaseDate());
        session.setAttribute("engine", car.getEngine());
        session.setAttribute("seatCount", car.getSeatCount());

        %>
        <script>window.location.href = "data.jsp";</script>
        <%
    }
%>

</body>
</html>