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
                            <h1 class="mt-4">Detail Product: ${product.name_product}</h1>
                            <ol class="breadcrumb mb-4 d-flex gap-1">
                                <a class="breadcrumb-item active text-decoration-none" href="/admin">Dashboard</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none active" href="/admin/product">Product</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none " href="">Detail Product</a>
                            </ol>

                            <div class="container mt-5">
                                <div class="row">
                                    <div class="col-md-12 mx-auto">
                                        <div class="card" style="width:60%;">
                                            <div class="card-header">
                                                <h2 class="card-title">Product ${product.id}</h5>
                                            </div>
                                            <div class="card-body">
                                                <c:if test=" ${product.image} != null">
                                                    <img src="..." class="card-img-top" alt="...">
                                                </c:if>
                                                <img src="" alt="ảnh trống" style="display: none;">

                                                <p class="card-text">Name Product: ${product.name_product}</p>

                                            </div>
                                        </div>
                                        <a href="/admin/product" class="btn btn-warning mt-3"> Back </a>
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