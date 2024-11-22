<%@ page pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <% String currentUrl=request.getRequestURL().toString(); %>
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Chức năng</div>
                            <a class='nav-link <%= currentUrl.contains("/admin/user") ? "active" : " " %> '
                                href="/admin/user">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                User
                            </a>
                            <a class='nav-link <%= currentUrl.contains("/admin/project") ? "active" : " " %> '
                                href="/admin/project">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dự án
                            </a>
                            <a class='nav-link <%= currentUrl.contains("/admin/partner") ? "active" : " " %> '
                                href="/admin/partner">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Đối tác
                            </a>
                            <a class='nav-link <%= currentUrl.contains("/admin/product") ? "active" : " " %> '
                                href="/admin/product">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Sản Phẩm
                            </a>
                            <a class='nav-link <%= currentUrl.contains("/admin/service") ? "active" : " " %> '
                                href="/admin/service">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dịch Vụ
                            </a>

                        </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    MVN
                </div>
            </nav>
        </div>