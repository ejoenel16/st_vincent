<div class="landing_page" style="display:none">

    <div class="container-fluid mx-0 px-0">
        <div class="mx-0 px-0">
            <!-- Sidebar Toggle Button -->
            <button id="sidebar-toggle" class="btn btn-primary">
                <span class="menu-icon"><i class="fa-solid fa-bars"></i></span>
                <span class="close-icon"><i class="fa-solid fa-xmark"></i></span>
            </button>

            <div id="sidebar" class="sidebar-container">
                <?php include 'src/pages/admin/sidebar.php'; ?>
            </div>
        </div>

        <div class="position-relative mx-0 px-0">
            <?php
            include 'src/pages/admin/dashboard/dashboard.php';
            include 'src/pages/admin/school_year/school_year.php';
            include 'src/pages/admin/admission/admission.php';
            include 'src/pages/admin/sections/sections.php';
            include 'src/pages/admin/employees/employees.php';
            include 'src/pages/admin/subjects/subjects.php';
            include 'src/pages/admin/students/students.php';
            include 'src/pages/admin/enrollment/enrollment.php';
            ?>
        </div>

    </div>

    <script src="src/pages/admin/dashboard/dashboard.js"></script>
    <script src="src/pages/admin/students/students.js"></script>
    <script src="src/pages/admin/sections/sections.js"></script>
    <script src="src/pages/admin/landing_page.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</div>