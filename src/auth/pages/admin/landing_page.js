$(document).ready(function () {
  $("#sidebar-toggle").click(function () {
    $("#sidebar").toggleClass("show");
    $(this).toggleClass("active");
  });
});

$(".sidebar_btn").click(function () {
  $(".page").hide();
  $(".minipage").hide();
  $("#" + $(this).attr("goto")).fadeIn(800);
  $("#" + $(this).attr("default_page")).fadeIn(800);
  $(".sidebar_btn").removeClass("sidebar-selected");
  $(this).addClass("sidebar-selected");
  $(this).attr("func") ? window[$(this).attr("func")]() : "";
});

$(".btn_logout").click(function () {
  payload = {
    request_type: "logout",
    payload_data: {},
  };

  deleteCookie("sesh_authorized");
  deleteCookie("access_level");
  deleteCookie("uid");
  setCookie("cur_page", "login");

  setTimeout(() => {
    location.reload();
  }, 100);

  _POST(con_auth, payload, (cb, res, msg) => {});
});

function singlify_word(word) {
  return word.charAt(0).toUpperCase() + ".";
}

function global_load_enrollments() {
  payload = {
    request_type: "get_all_enrollments",
    payload_data: {},
  };

  _GET(con_enrollment, payload, (cb) => {
    console.log(cb);
    $.each(cb, (k, v) => {});
  });
}

function global_load_strands(cbf = null) {
  payload = {
    request_type: "get_records_all",
    payload_data: {},
  };

  _GET(con_strand, payload, (cb) => {
    cbf(cb);
  });
}

$(document).ready(function () {
  dashboardGetTotalStudent();
  dashboardGetTotalTeacher();
  dashboardGetTotalStaff();
  dashboardGetTotalStudentPreEnrolled();
  dashboardGetEnrollmentInfos();
});