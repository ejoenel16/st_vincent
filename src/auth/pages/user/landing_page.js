$(document).ready(function () {
  $(".header_link").click(function () {
    $(".header_link").css("color", "#000");
    $(this).css("color", "#0A1881");
    $(".page").hide();
    $("#" + $(this).attr("goto")).fadeToggle();
  });
});

$("#h_btn_enroll_now").click(function () {
  $(".page").hide();
  $("#page_enroll_now").fadeToggle();
  prepare_enrollment_sheet();
});

$("#btn_login").click(function () {
  $(".page").hide();
  $("#page_login").fadeToggle();
  $("#content").hide();
});

$("#btn_login_mobile").click(function () {
  $(".page").hide();
  $("#page_login").fadeToggle();
  $("#content").hide();
});

con_enrollment = `src/database/controllers/enrollment_controller.php`;

function headerPrepareEnrollmentSheet() {
  payload = {
    request_type: "get_enrollment_information",
    payload_data: {},
  };

  _GET(con_enrollment, payload, (cb, status) => {
    $("#lrf_sy").html(
      `
              <option value="` +
        cb[0].school_year +
        `">` +
        cb[0].school_year_display +
        `</option>
          `
    );

    $("#lrf_semester").html(
      `
        <option value="` +
        cb[0].semester +
        `">` +
        cb[0].semester +
        `</option>
          `
    );
  });
}

function headerCheckEnrollmentStatus() {
  payload = {
    request_type: "getEnrollmentStatus",
    payload_data: {},
  };

  _GET(con_enrollment, payload, (cb, status) => {
    if (status == 204) {
      show_toast("Enrollment Closed", "No active enrollment yet.", "warning");
    } else {
      $(".page").hide();
      $("#page_enroll_now").fadeToggle();
      headerPrepareEnrollmentSheet();
    }
  });
}

$("#btn_enrollnow_home").click(() => {
  headerCheckEnrollmentStatus();
});

$("#btn_enrollnow_header").click(() => {
  headerCheckEnrollmentStatus();
});

$("#btn_enrollnow_header_mobile").click(() => {
  headerCheckEnrollmentStatus();
});
