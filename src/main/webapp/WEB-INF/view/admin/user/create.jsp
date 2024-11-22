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
                                        <form:form method="post" action="/admin/user/create" modelAttribute="newUser"
                                            enctype="multipart/form-data">

                                            <!-- c:set  -->
                                            <c:set var="emailHasBindError">
                                                <form:errors path="email" class="invalid-feedback" />
                                            </c:set>
                                            <c:set var="passwordHasBindError">
                                                <form:errors path="password" class="invalid-feedback" />
                                            </c:set>
                                            <c:set var="avatarHasBindError">
                                                <form:errors path="avatar" cssClass="invalid-feedback" />
                                            </c:set>
                                            <!-- end  -->

                                            <div class="form-group mb-3 ">
                                                <label for="exampleInputEmail1">Email address: </label>
                                                <form:input path="email" type="email"
                                                    class="form-control ${not empty emailHasBindError? 'is-invalid':''}"
                                                    id="exampleInputEmail1" aria-describedby="emailHelp"
                                                    placeholder="Enter email" />
                                                ${emailHasBindError}
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="exampleInputPassword1">Password: </label>
                                                <form:input path="password" type="password"
                                                    class="form-control ${not empty passwordHasBindError? 'is-invalid':''} "
                                                    id="exampleInputPassword1" placeholder="Password" />
                                                ${passwordHasBindError}
                                            </div>

                                            <div class="form-group mb-3 row ">
                                                <div class="col-8">
                                                    <label for="avatarFile" class="form-label">
                                                        Avatar:
                                                    </label>
                                                    <input
                                                        class="form-control ${not empty avatarHasBindError? 'is-invalid':''}"
                                                        type="file" id="avatarFile" name="MVN" />

                                                    ${avatarHasBindError}

                                                </div>

                                                <div class="col-4">
                                                    <label for="formFile" class="form-label"> Role: </label>
                                                    <form:select class="form-select" aria-label="Default select example"
                                                        path="role.name">
                                                        <form:option value="USER">USER</form:option>
                                                        <form:option value="ADMIN">ADMIN</form:option>
                                                    </form:select>
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

                        </div>
                    </main>
                    <!-- footer  -->
                    <jsp:include page="../layout/footer.jsp" />
                </div>
            </div>

            <jsp:include page="../frame/foot_frame.jsp" />