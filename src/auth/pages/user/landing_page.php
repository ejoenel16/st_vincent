<div class="landing_page" style="display:none">

    <?php
    include 'src/pages/user/page_component/headers/schoolmgmt.php';
    ?>

    <div id="div_user_landing">

        <?php

        include 'src/pages/user/sections/home/home.php';
        include 'src/pages/user/sections/about/about.php';
        include 'src/pages/user/sections/admissions/admissions.php';
        include 'src/pages/user/sections/enroll_now/enroll_now.php';

        ?>

    </div>

    <?php
    include 'src/pages/user/page_component/footer/schoolmgmt.php';
    ?>

    <script src="src/pages/user/landing_page.js"></script>
    <script src="src/pages/user/sections/enroll_now/enroll_now.js"></script>
    <script src="src/pages/user/sections/home/home.js"></script>

</div>