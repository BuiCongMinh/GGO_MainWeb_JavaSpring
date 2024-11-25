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
                            <h1 class="mt-4">All User</h1>
                            <ol class="breadcrumb mb-4 d-flex gap-1">
                                <a class="breadcrumb-item active text-decoration-none" href="/admin">Dashboard</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none" href="">Users</a>
                            </ol>

                            <div class="container">
                                <div class="row">
                                    <div class="col-12 col-md-9 mx-auto">
                                        <div class="d-flex justify-content-between">
                                            <h3>All Users</h3>
                                            <a href="/admin/user/create"
                                                class="btn btn-primary d-flex align-items-center">
                                                Create User
                                            </a>
                                        </div>
                                        <hr>

                                        <table class="table text-center">
                                            <thead>
                                                <tr>
                                                    <th scope="col">ID</th>
                                                    <th scope="col">Email</th>
                                                    <th scope="col">Role</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>

                                            <!-- load data  -->
                                            <tbody>
                                                <c:forEach var="user" items="${allUsers}">
                                                    <tr>
                                                        <th scope="row" class="col-2">${user.id}</th>
                                                        <td class="col-md-4 ">${user.email}</td>
                                                        <td class="col-md-4 ">${user.role.name}</td>
                                                        <td class="d-flex gap-3">
                                                            <a href="/admin/user/${user.id}"
                                                                class="btn btn-success d-flex align-items-center">View</a>
                                                            <a href="/admin/user/update/${user.id}"
                                                                class="btn btn-warning d-flex align-items-center">Update</a>
                                                            <a href="/admin/user/delete/${user.id}"
                                                                class="btn btn-danger d-flex align-items-center">Delete</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>

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