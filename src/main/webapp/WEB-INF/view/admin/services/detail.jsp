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
                            <h1 class="mt-4">Detail service: ${service.name_service}</h1>
                            <ol class="breadcrumb mb-4 d-flex gap-1">
                                <a class="breadcrumb-item active text-decoration-none" href="/admin">Dashboard</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none active"
                                    href="/admin/service">services</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none " href="">Detail service</a>
                            </ol>

                            <div class="container mt-5">
                                <div class="row">
                                    <div class="col-md-12 mx-auto">
                                        <div class="card" style="width:60%;">
                                            <div class="card-header">
                                                <h2 class="card-title">service ${service.id}</h5>
                                            </div>
                                            <div class="card-body">
                                                <c:if test=" ${service.image} != null">
                                                    <img src="..." class="card-img-top" alt="...">
                                                </c:if>
                                                <img src="" alt="ảnh trống" style="display: none;">

                                                <p class="card-text">Name Service: ${service.name_service}</p>

                                            </div>
                                        </div>
                                        <a href="/admin/service" class="btn btn-warning mt-3"> Back </a>
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