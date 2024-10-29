<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>

                    <!-- add link css  -->
                    <link rel="stylesheet" href="/css/main.css">

                    <!-- add bootrap  -->
                    <link rel="stylesheet"
                        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
                </head>


                <body>
                    <div class="container mt-5">
                        <div class="row">
                            <div class="col-12 col-md-9 mx-auto">
                                <div class="d-flex justify-content-between">
                                    <h1>All Users</h1>
                                    <a href="/admin/user/create" class="btn btn-primary d-flex align-items-center">
                                        Create User
                                    </a>
                                </div>
                                <hr>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>

                                    <!-- load data  -->
                                    <tbody>
                                        <c:forEach var="user" items="${allUsers}">
                                            <tr>
                                                <th scope="row" class="col-2">${user.id}</th>
                                                <td class="col-md-4 ">${user.email}</td>
                                                <td class="d-flex gap-3">
                                                    <a href="/admin/user/${user.id}"
                                                        class="btn btn-success d-flex align-items-">View</a>
                                                    <a href="/admin/user/update/${user.id}"
                                                        class="btn btn-warning d-flex align-items-">Update</a>
                                                    <a href="/admin/user/delete/${user.id}"
                                                        class="btn btn-danger d-flex align-items-">Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                    <!-- add script bootrap  -->
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                </body>

                </html>