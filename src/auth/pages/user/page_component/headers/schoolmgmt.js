$(document).ready(function () {
  $("#hamburger").click(function () {
    $("#side-menu").toggleClass("open");
  });

  $("#close-menu").click(function () {
    $("#side-menu").removeClass("open");
  });
});

$("#btn_enrollnow").click(function () {
  headerCheckEnrollmentStatus();
});
