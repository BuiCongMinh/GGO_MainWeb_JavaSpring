<%@ page pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
                                <h1 class="mt-4">All Services</h1>
                                <ol class="breadcrumb mb-4 d-flex gap-1">
                                    <a class="breadcrumb-item active text-decoration-none" href="/admin">Dashboard</a>
                                    <li>/</li>
                                    <a class="breadcrumb-item text-decoration-none" href="">service</a>
                                </ol>

                                <div class="container">
                                    <div class="row">
                                        <div class="col-12 col-md-9 mx-auto">
                                            <div class="d-flex justify-content-between">
                                                <h3>All Services</h3>
                                                <a href="/admin/service/create"
                                                    class="btn btn-primary d-flex align-items-center">
                                                    Create service
                                                </a>
                                            </div>
                                            <hr>

                                            <table class="table text-center">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">ID</th>
                                                        <th scope="col">Name</th>
                                                        <th scope="col">Date</th>
                                                        <th scope="col">Action</th>
                                                    </tr>
                                                </thead>

                                                <!-- load data  -->
                                                <tbody>
                                                    <c:forEach var="service" items="${services}">
                                                        <tr>
                                                            <th scope="row" class="col-2">${service.id}</th>
                                                            <td class="col-md-4 ">${service.name_service}</td>
                                                            <td class="col-md-4">
                                                                <fmt:formatDate value="${service.date}"
                                                                    pattern="yyyy-MM-dd HH:mm:ss" />
                                                            </td>
                                                            <td class="d-flex gap-3">
                                                                <a href="/admin/service/${service.id}"
                                                                    class="btn btn-success d-flex align-items-center">View</a>
                                                                <a href="/admin/service/update/${service.id}"
                                                                    class="btn btn-warning d-flex align-items-center">Update</a>
                                                                <a href="/admin/service/delete/${service.id}"
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