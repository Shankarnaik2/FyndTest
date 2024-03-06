<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management</title>
</head>
<body>
    <h2>List of Employees</h2>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Department</th>
                <th>Designation</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${employees}" var="employee">
                <tr>
                    <td>${employee.name}</td>
                    <td>${employee.department}</td>
                    <td>${employee.designation}</td>
                    <td>${employee.email}</td>
                    <td>${employee.phoneNumber}</td>
                    <td>
                        <a href="/employees/${employee.id}/edit">Edit</a> |
                        <a href="/employees/${employee.id}/delete">Delete</a> |
                        <a href="/employees/${employee.id}">Details</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="/employees/add">Add New Employee</a>
</body>
</html>