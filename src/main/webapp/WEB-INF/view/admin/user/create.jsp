<%@ page pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <jsp:include page="../frame/head_frame.jsp" />

            <!-- Header  -->
            <jsp:include page="../layout/header.jsp" />
            <!-- end  -->

            <div id="layoutSidenav">
                <!-- sideBar  -->
                <jsp:include page="../layout/sidebar.jsp" />
                <!-- end  -->

                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-2">Create User</h1>
                            <ol class="breadcrumb mb-4 d-flex gap-1">
                                <a class="breadcrumb-item active text-decoration-none" href="/admin">Dashboard</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none active" href="/admin/user">Users</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none " href="">Create User</a>
                            </ol>

                            <div class="container ">
                                <div class="row">
                                    <div class="col-md-6 col-12 mx-auto">
                                        <h1>Create User</h1>
                                        <hr>
                                        <form:form method="post" action="/admin/user/create" modelAttribute="newUser">
                                            <div class="form-group mb-3 ">
                                                <label for="exampleInputEmail1">Email address: </label>
                                                <form:input path="email" type="email" class="form-control"
                                                    id="exampleInputEmail1" aria-describedby="emailHelp"
                                                    placeholder="Enter email" />
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="exampleInputPassword1">Password: </label>
                                                <form:input path="password" type="password" class="form-control"
                                                    id="exampleInputPassword1" placeholder="Password" />
                                            </div>
                                            <div class="form-group mb-3 row ">
                                                <div class="col-8">
                                                    <label for="formFile" class="form-label">
                                                        Avatar:
                                                    </label>
                                                    <input class="form-control" type="file" id="formFile">
                                                </div>
                                                <div class="col-4">
                                                    <label for="formFile" class="form-label">
                                                        Role:
                                                    </label>
                                                    <select class="form-select" aria-label="Default select example">
                                                        <option value="1">USER</option>
                                                        <option value="3">ADMIN</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <button type="submit" class="btn btn-primary">
                                                Submit
                                            </button>

                                        </form:form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </main>
                    <!-- footer  -->
                    <jsp:include page="../layout/footer.jsp" />
                </div>
            </div>

            <jsp:include page="../frame/foot_frame.jsp" />