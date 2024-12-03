<%@ page pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <jsp:include page="../frame/head_frame.jsp" />

            <!-- Header  -->
            <jsp:include page="../layout/header.jsp" />
            <div id="layoutSidenav">
                <!-- sideBar  -->
                <jsp:include page="../layout/sidebar.jsp" />
                <!-- end  -->

                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">Service</h1>
                            <ol class="breadcrumb mb-4 d-flex gap-1">
                                <a class="breadcrumb-item active text-decoration-none" href="/admin">
                                    Dashboard
                                </a>
                                <li>/</li>
                                <a class="breadcrumb-item active text-decoration-none" href="/admin/service">
                                    service
                                </a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none" href="#">
                                    Create a service
                                </a>
                            </ol>

                            <div class=" container">
                                <div class="row">
                                    <div class="col-md-6 col-12 mx-auto">
                                        <h1>Create service</h1>
                                        <hr>

                                        <form:form method="post" action="/admin/service/create"
                                            enctype="multipart/form-data" modelAttribute="newService">

                                            <!-- c:set -->
                                            <c:set var="imageHasBindErrors">
                                                <form:errors path="image" cssClass="invalid-feedback" />
                                            </c:set>

                                            <c:set var="nameServiceHasBindErrors">
                                                <form:errors path="name_service" cssClass="invalid-feedback" />
                                            </c:set>
                                            <!-- end  -->

                                            <div class="form-group mb-3 ">
                                                <label for="exampleInputEmail1">Name Service</label>
                                                <form:input path="name_service" type="text"
                                                    class="form-control ${not empty nameServiceHasBindErrors ? 'is-invalid':''}"
                                                    placeholder="Enter name product" />

                                                ${nameServiceHasBindErrors}
                                            </div>

                                            <div class="form-group mb-3 row ">
                                                <div class="col-12">
                                                    <label for="avatarFile" class="form-label">
                                                        Images:
                                                    </label>
                                                    <input
                                                        class="form-control ${not empty imageHasBindErrors? 'is-invalid':''}"
                                                        type="file" id="avatarFile" name="imgService" />
                                                    ${imageHasBindErrors}
                                                </div>
                                            </div>

                                            <div class="form-group mb-3">
                                                <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                    id="avatarPreview" />
                                            </div>

                                            <button type="submit" class="btn btn-primary">
                                                Submit
                                            </button>

                                        </form:form>


                                    </div>
                                </div>

                            </div>
                    </main>

                    <!-- footer  -->
                    <jsp:include page="../layout/footer.jsp" />

                </div>
            </div>
            <jsp:include page="../frame/foot_frame.jsp" />