<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Employee</title>
</head>
<body>
    <h2>Add New Employee</h2>
    <form action="/employees/add" method="post" modelAttribute="employee">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required><br>
        <label for="department">Department:</label><br>
        <select id="department" name="department">
            <option value="IT">IT</option>
            <option value="HR">HR</option>
            <option value="Finance">Finance</option>
            <option value="Marketing">Marketing</option>
        </select><br>
        <label for="designation">Designation:</label><br>
        <input type="text" id="designation" name="designation" required><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br>
        <label for="phoneNumber">Phone Number:</label><br>
        <input type="text" id="phoneNumber" name="phoneNumber" required pattern="[0-9]{10}"><br>
        <input type="submit" value="Add Employee">
    </form>
</body>
</html>