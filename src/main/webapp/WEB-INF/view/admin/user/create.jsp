<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>

                <!-- add link css  -->
                <link rel="stylesheet" href="/css/main.css">

                <!-- add bootrap  -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <h1>Create User</h1>
                            <hr>
                            <form:form method="post" action="/admin/user/create" modelAttribute="newUser">
                                <div class="form-group mb-3 ">
                                    <label for="exampleInputEmail1">Email address: </label>
                                    <form:input path="email" type="email" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" placeholder="Enter email" />
                                </div>

                                <div class="form-group mb-3">
                                    <label for="exampleInputPassword1">Password: </label>
                                    <form:input path="password" type="password" class="form-control"
                                        id="exampleInputPassword1" placeholder="Password" />
                                </div>

                                <button type="submit" class="btn btn-primary">
                                    Submit
                                </button>

                            </form:form>
                        </div>
                    </div>
                </div>

                <!-- add bootrap  -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <!-- add jquery -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
                    integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
                    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

            </body>

            </html>