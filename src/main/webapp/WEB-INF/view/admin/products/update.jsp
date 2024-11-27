<%@ page pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <jsp:include page="../frame/head_frame.jsp" />

            <!-- main content  -->
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
                            <h1 class="mt-4">Update Product: ${product.name_product}</h1>
                            <ol class="breadcrumb mb-4 d-flex gap-1">
                                <a class="breadcrumb-item active text-decoration-none" href="/admin">Dashboard</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none active" href="/admin/product">Product</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none " href="">Update Project</a>
                            </ol>

                            <div class="container mt-5">
                                <div class="row">
                                    <div class="col-md-6 col-12 mx-auto">

                                        <form:form method="post" action="/admin/product/update"
                                            modelAttribute="product">
                                            <div class="form-group mb-3 ">
                                                <form:input path="id" class="form-control d-none"
                                                    aria-describedby="emailHelp" value="${user.id}" />
                                            </div>
                                            <div class="form-group mb-3 ">
                                                <label for="exampleInputEmail1">Email address: </label>
                                                <form:input path="name_product" class="form-control"
                                                    id="exampleInputEmail1" aria-describedby="emailHelp"
                                                    placeholder="Enter email" value="${user.email}" />
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
            <!-- end  -->

            <jsp:include page="../frame/foot_frame.jsp" />