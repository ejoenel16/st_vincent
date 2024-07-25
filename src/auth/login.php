<div class="page" id="page_login" style="display:none;">
    <div class="container-fluid vh-100">
        <div class="row h-100">
            <div class="col-lg-6 p-0 d-none d-lg-block"
                style="background-image: url('src/img/school_splash.png'); background-size: cover; background-repeat: no-repeat; background-position: center center;">
                <div class="d-flex justify-content-center flex-column p-lg-5 h-100 w-100" style="background:#0a1881c4">
                    <img src="src/img/sc_logo.png" class="mx-auto" style="height:250px; width:250px" alt="">
                    <h2 class="text-light mx-auto mt-5">SCHOOL PORTAL</h2>
                </div>
            </div>
            <div class="col-lg-6 col-12 d-flex justify-content-center align-items-center position-relative">
                <a class="nav-link mt-0 mt-lg-4 ms-0 ms-lg-4 p-2 position-absolute top-0 start-0" id="go_back"
                    style="cursor: pointer;"><i class="fa-solid fa-caret-left me-2"></i>Go back</a>
                <div class="w-100 p-4" style="max-width: 500px;">
                    <input type="text" hidden value="<?php echo $_SESSION['csrf']; ?>" id="lcsrf">

                    <div class="d-flex align-items-center mb-4">
                        <img src="src/img/sc_logo.png" style="height:90px; width:90px" alt="">
                        <h5 class="ps-3">St. Vincent Institute of Technology</h5>
                    </div>

                    <div class="mb-3">
                        <label for="txt_username" class="form-label">Email Address</label>
                        <div class="position-relative">
                            <i class="fa-solid fa-user position-absolute"
                                style="color:#BFC0C1; top:12px; left:10px;"></i>
                            <input type="text" class="form-control ps-5" id="txt_username">
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="txt_password" class="form-label">Password</label>
                        <div class="position-relative">
                            <i class="fa-solid fa-lock position-absolute"
                                style="color:#BFC0C1; top:12px; left:10px;"></i>
                            <input type="password" class="form-control ps-5" id="txt_password">
                            <i class="fa-solid fa-eye position-absolute"
                                style="color:#3f4041; top:12px; right:10px;"></i>
                        </div>
                    </div>

                    <div class="d-flex justify-content-between align-items-center">
                        <button class="btn text-light btn-sm mt-2" id="btn_t_login"
                            style="width:120px; background:#0A1881">Login</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<script src="src/auth/login.js"></script>