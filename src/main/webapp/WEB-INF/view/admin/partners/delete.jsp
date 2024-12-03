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
                            <h1 class="mt-4">Delete Partner</h1>
                            <ol class="breadcrumb mb-4 d-flex gap-1">
                                <a class="breadcrumb-item active text-decoration-none" href="/admin">Dashboard</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none active" href="/admin/partner">Partner</a>
                                <li>/</li>
                                <a class="breadcrumb-item text-decoration-none " href="">Delete Partner</a>
                            </ol>

                            <div class="container mt-5">
                                <div class="row">
                                    <div class="col-md-12 mx-auto">
                                        <div class="card" style="width:60%;">
                                            <div class="card-header">
                                                <h2 class="card-title">
                                                    Do you want delele partner: ${partner.name_partner} ?
                                                </h2>
                                            </div>

                                            <form:form action="/admin/partner/delete" method="post"
                                                modelAttribute="partner">
                                                <div class="card-body">
                                                    <c:if test=" ${partner.image} != null">
                                                        <img src="..." class="card-img-top" alt="...">
                                                    </c:if>
                                                    <form:input path="id" value="${partner.id}"
                                                        style="display: none;" />

                                                    <div class="d-flex flex-column w-25">
                                                        <button class="btn btn-danger mt-3"> Confrim </button>
                                                        <a href="/admin/partner" class="btn btn-success mt-3"> Back </a>
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