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
                            <h1 class="mt-4">Projects</h1>
                            <ol class="breadcrumb mb-4 d-flex gap-1">
                                <a class="breadcrumb-item active text-decoration-none" href="/admin">Dashboard</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none" href="">Projects</a>
                            </ol>

                            <div class=" container">
                                <div class="row">
                                    <div class="col-12 col-md-9 mx-auto">
                                        <div class="d-flex justify-content-between">
                                            <h3>Table projects</h3>
                                            <a href="/admin/project/create" class="btn btn-primary">
                                                Create a project
                                            </a>
                                        </div>
                                        <hr />
                                        <table class="table text-center">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Name</th>
                                                    <th>Date</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach var="project" items="${allProjects}">
                                                    <tr>
                                                        <th scope="row" class="col-2">${project.id}</th>
                                                        <td class="col-md-4">${project.name_project}</td>
                                                        <td class="col-md-4">
                                                            ${project.date}
                                                        </td>
                                                        <td class="d-flex gap-3">
                                                            <a href="/admin/project/${project.id}"
                                                                class="btn btn-success">View</a>
                                                            <a href="/admin/project/update/${project.id}"
                                                                class="btn btn-warning">Update</a>
                                                            <a href="/admin/project/delete/${project.id}"
                                                                class="btn btn-danger">Delete</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>


                            </div>
                    </main>
                    <!-- footer  -->
                    <jsp:include page="../layout/footer.jsp" />
                </div>
            </div>

            <jsp:include page="../frame/foot_frame.jsp" />