<%@ page pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <jsp:include page="../frame/head_frame.jsp" />

            <jsp:include page="../layout/header.jsp" />
            <!-- end  -->
            <div id="layoutSidenav">
                <!-- sideBar  -->
                <jsp:include page="../layout/sidebar.jsp" />
                <!-- end  -->


                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">Delete Project</h1>
                            <ol class="breadcrumb mb-4 d-flex gap-1">
                                <a class="breadcrumb-item active text-decoration-none" href="/admin">Dashboard</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none active" href="/admin/project">Project</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none " href="">Delete Project</a>
                            </ol>

                            <div class="container mt-5">
                                <div class="row">
                                    <div class="col-md-12 mx-auto">
                                        <div class="card" style="width:60%;">
                                            <div class="card-header">
                                                <h2 class="card-title">
                                                    Do you want delele project: ${project.name_project} ?
                                                </h2>
                                            </div>
                                            <form:form action="/admin/project/delete" method="post"
                                                modelAttribute="project">
                                                <div class="card-body">
                                                    <c:if test=" ${project.image} != null">
                                                        <img src="..." class="card-img-top" alt="...">
                                                    </c:if>
                                                    <form:input path="id" value="${project.id}"
                                                        style="display: none;" />

                                                    <div class="d-flex flex-column w-25">
                                                        <button class="btn btn-danger mt-3"> Confrim </button>
                                                        <a href="/admin/project" class="btn btn-success mt-3"> Back To
                                                            All User </a>
                                                    </div>

                                                </div>
                                            </form:form>
                                        </div>
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