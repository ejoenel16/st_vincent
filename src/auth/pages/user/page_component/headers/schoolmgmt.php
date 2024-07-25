<section class="d-none d-lg-block">
    <div class="d-flex align-items-center justify-content-between py-1 mx-auto header-container">
        <div class="d-flex align-items-center">
            <img src="src/img/school_logo.jpg" height="50px" class="me-2">
            <span style="font-weight:500; font-size:11pt">St. Vincent Institute <br>of Technology</span>
        </div>

        <ul class="nav nav_school">
            <li class="nav-item">
                <a class="nav-link header_link" goto="page_home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link header_link" goto="page_about">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link header_link" goto="page_admissions">Admissions</a>
            </li>
        </ul>

        <div>
            <button class="btn desktop-button fw-bold" id="btn_login" style="color:#0A1881">Login</button>
            <button class="btn desktop-button text-light" style="background:#0A1881" id="btn_enrollnow_header">Enroll
                Now</button>

        </div>

        <div class="hamburger" style="font-size: 15pt;" id="hamburger">
            <i class="fa-solid fa-bars"></i>
        </div>
    </div>

    <div class="side-menu" id="side-menu">
        <div class="close d-block d-lg-none" style="font-size: 15pt;" id="close-menu">
            <i class="fa-solid fa-xmark"></i>
        </div>

        <ul class="nav nav_school nav_school_side d-block d-lg-none">
            <li class="nav-item">
                <a class="nav-link header_link" goto="page_home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link header_link" goto="page_about">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link header_link" goto="page_admissions">Admissions</a>
            </li>
        </ul>

        <div class="mobile-button-container d-block d-lg-none">
            <button class="btn mobile-button fw-bold" id="btn_login_mobile" style="color:#0A1881">Login</button>
            <button class="btn mobile-button text-light" style="background:#0A1881"
                id="btn_enrollnow_header_mobile">Enroll
                Now</button>
        </div>
    </div>
</section>

<script src="src/pages/user/page_component/headers/schoolmgmt.js"></script>