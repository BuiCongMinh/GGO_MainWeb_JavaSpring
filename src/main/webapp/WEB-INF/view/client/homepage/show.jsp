<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <link rel="stylesheet"
                href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>GGO.VN</title>

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
                integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
                crossorigin="anonymous" referrerpolicy="no-referrer" />

            <!-- owl-carousel  -->
            <link rel="stylesheet" href='css/client/owl.carousel.min.css' />
            <link rel="stylesheet" href='css/client/owl.theme.default.min.css' />

            <!-- link css  -->
            <link rel="stylesheet" href="css/client/homepage.css" />

            <!-- icon  -->
            <link rel="icon" href="images/client/homepage/cropped-favicon-32x32.png" sizes="32x32" />
            <link rel="icon" href="images/client/homepage/cropped-favicon-192x192.png" sizes="192x192" />
            <link rel="apple-touch-icon" href="images/client/homepage/cropped-favicon-180x180.png" />
        </head>

        <body>
            <div class="App_body" id="App_body">
                <div class="header">
                    <div class="logo">
                        <img src='/images/client/homepage/headers/logo-ggo.png' alt="" />
                        <figcaption style="color: white">CÔNG TY CỔ PHẦN GGO</figcaption>
                    </div>
                    <button style="display: block; z-index: 9999" id="scrollToFooterBtn"
                        onclick="scrollSmoothlyToBottom('contact')">
                        Liên Hệ
                    </button>
                    <img id="btnDown" src='/images/client/homepage/headers/logo-ggo-arrow.png' alt=""
                        onclick="scrollSmoothlyToBottom('sector_1')" />
                    <video id="background-video" loop muted autoplay>
                        <source src='/images/client/video/loop.mp4' type="video/mp4" />
                    </video>
                </div>

                <div class="sector_1" id="sector_1">
                    <div class="title">
                        <h2>DỰ ÁN</h2>
                    </div>

                    <div class="projects">

                        <div class="item">
                            <div class="img_item">
                                <a href="https://mhgh.ggo.vn/">
                                    <img src='/images/client/homepage/sector1/landing-showcase-5-1.jpg' alt="" />
                                </a>
                            </div>
                            <div class="title_item">
                                <p>MỘNG HUYỀN GIANG HỒ</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="img_item">
                                <a href="https://nhatmong.ggo.vn/">
                                    <img src='/images/client/homepage/sector1/landing-home-2-1.jpg' alt="" />
                                </a>
                            </div>
                            <div class="title_item">
                                <p>NHẤT MỘNG VÕ LÂM</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="img_item">
                                <a href="http://knah.mobi/">
                                    <img src='/images/client/homepage/sector1/landing-home-3-1.jpg' alt="" />
                                </a>
                            </div>
                            <div class="title_item">
                                <p>IDLE HEROES: KỶ NGUYÊN ANH HÙNG</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="img_item">
                                <a>
                                    <img src='/images/client/homepage/sector1/landing-home-5-11-1.jpg' alt="" />
                                </a>
                            </div>
                            <div class="title_item">
                                <p>MỘNG TU TIÊN AFK</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="img_item">
                                <a>
                                    <img src='/images/client/homepage/sector1/landing-home-6-2.jpg' alt="" />
                                </a>
                            </div>
                            <div class="title_item">
                                <p>MỘNG HUYỄN VÕ LÂM</p>
                            </div>
                        </div>

                    </div>

                </div>

                <div class="sector_2">
                    <div class="title">
                        <h2>ĐỐI TÁC CỦA CHÚNG TÔI</h2>
                    </div>
                    <div class="partner">
                        <div class="scroll_partner">
                            <div class="logos_slide">
                                <img src="/images/client/homepage/landing-showcase-01-2.jpg" alt="" />
                                <img src="/images/client/homepage/landing-showcase-2-1.jpg" alt="" />
                                <img src="/images/client/homepage/landing-showcase-3-2.jpg" alt="" />
                                <img src="/images/client/homepage/landing-showcase-4-1.jpg" alt="" />
                                <img src="/images/client/homepage/landing-showcase-5-1.jpg" alt="" />
                            </div>
                        </div>

                        <div class="section">
                            <div class="border"></div>
                            <div class="contact_item">
                                <img src='/images/client/homepage/sector2/logo-1.jpg' alt="" />
                            </div>
                            <div class="contact_item">
                                <img src='/images/client/homepage/sector2/logo-2.jpg' alt="" />
                            </div>
                            <div class="contact_item">
                                <img src='/images/client/homepage/sector2/logo-3.jpg' alt="" />
                            </div>
                            <div class="contact_item">
                                <img src='/images/client/homepage/sector2/logo-4.jpg' alt="" />
                            </div>
                            <div class="contact_item">
                                <img src='/images/client/homepage/sector2/logo-5.jpg' alt="" />
                            </div>
                            <div class="contact_item">
                                <img src='/images/client/homepage/sector2/logo-6.jpg' alt="" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sector_4">
                    <div class="title">
                        <h2>Sản phẩm</h2>
                    </div>
                    <div class="owl-carousel">
                        <div class="item"><img src='/images/client/homepage/sector4/3.jpg' alt="" /></div>
                        <div class="item"><img src='/images/client/homepage/sector4/gif1.gif' alt="" /></div>
                        <div class="item"><img src='/images/client/homepage/sector4/gif5.gif' alt="" /></div>
                        <div class="item">
                            <img src='/images/client/homepage/sector4/Sequence-01.gif' alt="" />
                        </div>
                        <div class="item"><img src='/images/client/homepage/sector4/gif5.gif' alt="" /></div>
                    </div>
                </div>

                <div class="sector_3"
                    style="background: url('/images/client/homepage/sector3/landing-showcase-01-2.jpg');">
                    <div class="title">
                        <h2 style="text-transform: uppercase">dịch vụ</h2>
                    </div>
                    <div class="service_list">
                        <img src="/images/client/homepage/sector3/anh1.jpg" alt="" />
                        <img src="/images/client/homepage/sector3/anh2.jpg" alt="" />
                        <img src="/images/client/homepage/sector3/anh3.jpg" alt="" />
                        <img src="/images/client/homepage/sector3/anh4.jpg" alt="" />
                        <img src="/images/client/homepage/sector3/anh5.jpg" alt="" />
                    </div>
                </div>

                <div class="footer">
                    <div class="top">
                        <h2>VỀ CHÚNG TÔI</h2>
                    </div>

                    <div class="middle">
                        <p>
                            Công Ty GGO được thành lập từ tháng 8/2018, là đơn vị trong lĩnh vực
                            công nghệ chuyên cung cấp các sản phẩm trò chơi trực tuyến đa nền
                            tảng. Mang sứ mệnh trở thành một trong những đội ngũ tiên phong
                            trong dịch vụ cung cấp trò chơi trực tuyến và công nghệ số, GGO
                            không ngừng đổi mới để nâng cao chất lượng dịch vụ & đón đầu xu thế
                            trong thời đại 4.0
                        </p>
                    </div>

                    <div class="bottom">
                        <span id="member"> Số người dùng ở Việt Nam & Đông Nam Á </span>
                        <h2>
                            1.500.000
                            <span class="blinking">+</span>
                        </h2>
                    </div>
                </div>

                <div class="contact" id="contact">
                    <div class="logo">
                        <img src='/images/client/homepage/headers/logo-ggo.png' alt="" />
                        <figcaption style="color: white">CÔNG TY CỔ PHẦN GGO</figcaption>
                    </div>

                    <div class="right">
                        <div class="contac_headquarters">
                            <div class="lienHe">
                                <div class="togel">
                                    <div class="square-icon">
                                        <i class="fa-solid fa-phone"></i>
                                    </div>
                                </div>
                                <div class="content">
                                    <span>LIÊN HỆ</span>
                                    <a>
                                        +84 282-239-6999
                                    </a>
                                    <a href="mailto:lienhe@ggo.vn">lienhe@ggo.vn</a>
                                </div>
                            </div>

                            <div class="lienHe">
                                <div class="togel">
                                    <div class="square-icon">
                                        <i class="fa-solid fa-location-arrow"></i>
                                    </div>
                                </div>
                                <div class="content">
                                    <span>TRỤ SỞ</span>
                                    <p>Địa chỉ: Tầng 19, Khu Văn Phòng, Tòa Nhà Indochina,</p>
                                    <p>04 Nguyễn Đình Chiểu, Phường Đa Kao, Quận 1, TPHCM</p>
                                </div>
                            </div>
                        </div>

                        <div class="information">
                            <div class="togel">
                                <div class="square-icon">
                                    <i class="fa-solid fa-circle-info"></i>
                                </div>
                            </div>
                            <div class="content">
                                <span style="text-transform: uppercase">thông tin</span>
                                <p>Chơi quá 180 phút 1 ngày ảnh hưởng xấu đến sức khỏe.</p>
                                <p>Giấy phép G1 số: 103/GP-BTTTT Ngày 17/01/2020.</p>
                                <p>Bộ Thông tin và Truyền thông cấp ngày 16/3/2020</p>
                                <p>Điều Khoản Sử Dụng| Chính sách bảo mật</p>
                            </div>
                        </div>
                    </div>

                    <video id="background-video" loop muted autoplay>
                        <source src='/images/client/video/loop.mp4' type="video/mp4" />
                    </video>
                </div>

                <div class="license">Bản quyền nội dung thuộc về GGO JSC.</div>
            </div>
        </body>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
            integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <script src='js/client/owl.carousel.min.js'></script>
        <script src='js/client/homepage.js'></script>

        </html>