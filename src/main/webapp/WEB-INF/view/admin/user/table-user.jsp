<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in</title>
    <!--bootstrap 5-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <!--Jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- <link rel="stylesheet" href="/css/demo.css"> -->
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-12 mx-auto">
                <div class="d-flex justify-content-between">
                    <h3>Table Users</h3>
                    <a href="/admin/user/create" class="btn btn-primary">Add new user</a>
                </div>
                <hr/>
                <table class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th scope="col">Guest ID</th>
                        <th scope="col">Email</th>
                        <th scope="col">Full Name</th>
                        <th scope="col">Status Action</th>
                      </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${users1}">
                            <tr>
                                <td style="text-align: center">${user.id}</td>
                                <td>${user.email}</td>
                                <td style="text-align: center">${user.fullName}</td>
                                <td>
                                    <a href="/admin/user/${user.id}" class="btn btn-success">View</a>
                                    <a href="/admin/user/update/${user.id}" class="btn btn-warning">Update</a>
                                    <a href="/admin/user/delete/${user.id}" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                  </table>
            </div>
        </div>
    </div>
</body>