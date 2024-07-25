<?php
session_start();

$_SESSION['csrf'] = rand(1000000000, 9999999999);

if (!array_key_exists('sesh_access_level', $_SESSION)) {
    $_SESSION['sesh_access_level'] = 1;
}

$_SESSION['SYS_TYPE'] = "ecommerce";

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>St. Vincent Institute of Technology - Official Website</title>

    <link rel="icon" href="src/img/sc_logo.png" type="image/x-icon">

    <link rel="stylesheet" href="src/lib/bootstrap/bs5/bs.css">
    <link rel="stylesheet" href="src/lib/fontawesome/css/all.css">
    <link rel="stylesheet" href="src/lib/quilljs/quill.snow.css">
    <link rel="stylesheet" href="src/lib/quilljs/quill.bubble.css">
    <link rel="stylesheet" href="src/lib/loader/style.css">
    <?php
    echo ' 
        <link rel="stylesheet" href="src/pages/user/user_landing_style.css">
        <link rel="stylesheet" href="src/pages/user/page_component/headers/schoolmgmt.css">
        <link rel="stylesheet" href="src/pages/user/sections/home/home.css">
        <link rel="stylesheet" href="src/pages/user/sections/enroll_now/enroll_now.css">
        ';
    if ($_SESSION['sesh_access_level'] == '4') {
        echo '
        <link rel="stylesheet" href="src/pages/teacher/landing_page.css">
        <link rel="stylesheet" href="src/pages/teacher/profile/profile.css">
        <link rel="stylesheet" href="src/pages/teacher/student_learning/student_learning.css">
        ';
    } else if ($_SESSION['sesh_access_level'] == '3') {
        echo '
        <link rel="stylesheet" href="src/pages/admin/admin_landing_page.css">
        <link rel="stylesheet" href="src/pages/admin/admission/admission.css">
        <link rel="stylesheet" href="src/pages/admin/employees/employees.css">
        <link rel="stylesheet" href="src/pages/admin/enrollment/enrollment.css">
        <link rel="stylesheet" href="src/pages/admin/subjects/subjects.css">
        <link rel="stylesheet" href="src/pages/admin/sections/sections.css">
        <link rel="stylesheet" href="src/pages/admin/students/students.css">
        ';
    } else if ($_SESSION['sesh_access_level'] == '2') {
        echo '
        <link rel="stylesheet" href="src/pages/student/landing_page.css">
        <link rel="stylesheet" href="src/pages/student/profile/profile.css">
        <link rel="stylesheet" href="src/pages/student/student_learning/student_learning.css">
        ';
    }
    ?>
</head>

<body>

    <?php include 'src/components/toast/index.php' ?>
    <script src="src/lib/bootstrap/bs5/bs.js"></script>
    <script src="src/lib/jquery/jquery-3.7.0.js"></script>
    <script src="src/lib/jquery/jqueryui-1.13.2.js"></script>
    <script src="src/lib/jquery/moment.js"></script>
    <script src="src/lib/fontawesome/js/all.js"></script>
    <script src="src/lib/tagsinput/bootstrap-tagsinput.js"></script>
    <script src="src/lib/quilljs/quilljs.js"></script>
    <script src="src/lib/moment.js"></script>
    <script src="src/lib/es6-promise/dist/es6-promise.auto.js"></script>
    <script src="src/lib/jspdf/dist/jspdf.min.js"></script>
    <script src="src/lib/html2canvas/dist/html2canvas.min.js"></script>
    <script src="src/lib/html2pdf.js/dist/html2pdf.js"></script>

    <script src="src/func/system.js"></script>

    <?php

    include 'src/auth/login.php';

    ?>

    <div id="content">
        <?php

        switch ($_SESSION['sesh_access_level']) {
            case '4':
                include 'src/pages/teacher/landing_page.php';
                break;
            case '3':
                include 'src/pages/admin/landing_page.php';
                break;
            case '2':
                include 'src/pages/student/landing_page.php';
                break;
            case '1':
                include 'src/pages/user/landing_page.php';
                break;
            default:
                echo "Invalid access level.";
                break;
        }


        ?>

    </div>

    <?php include 'src/components/loader/index.php' ?>
</body>

</html>