con_enrollment = `src/database/controllers/enrollment_controller.php`;
con_student = `src/database/controllers/student_controller.php`;
con_strand = `src/database/controllers/strands_controller.php`;

$(document).ready(function () {
  get_active_enrollment_details();
  load_grade_level_strands(12);
});

$("#lrf_gl").change(function (k) {
  load_grade_level_strands($(this).val());
});

$("#btn_submit_application").click(function () {
  if (enrollment_sheet_validate_inputs()) {
    var sf9 = document.getElementById("lrf_f_sf9");
    var sf10 = document.getElementById("lrf_f_sf10");
    var gmc = document.getElementById("lrf_f_gmc");
    var nso = document.getElementById("lrf_f_nso");
    var photo = document.getElementById("lrf_f_photo");

    const payload = {
      request_type: "apply_student",
      lrn: $("#lrf_lrn").val(),
      school_year: $("#lrf_sy").val(),
      strand_code: $("#lrf_strand").val(),
      grade_level: $("#lrf_gl").val(),
      semester: $("#lrf_semester").val(),
      birthdate: $("#lrf_dob").val(),
      lastname: $("#lrf_ln").val(),
      firstname: $("#lrf_fn").val(),
      middlename: $("#lrf_mn").val(),
      age: $("#lrf_age").val(),
      gender: $("input[type='radio']:checked").val(),
      email: $("#lrf_email").val(),
      mobile_no: $("#lrf_contact_no").val(),
      add_st: $("#lrf_street").val(),
      add_city: $("#lrf_city").val(),
      add_state: $("#lrf_state").val(),
      add_zipcode: $("#lrf_zipcode").val(),
      guardian_name: $("#lrf_g_fullname").val(),
      guardian_no: $("#lrf_g_contact_no").val(),
      sf9: sf9.files[0],
      sf10: sf10.files[0],
      gmc: gmc.files[0],
      nso: nso.files[0],
      photo: photo.files[0],
    };

    _POST(API_URL_STUDENTS, payload, (cb) => {
      show_toast(
        "Student Enrollment",
        "Application has been successfully submitted. Page is reloading"
      );

      setTimeout(() => {
        location.reload();
      }, 1500);
    });
  } else {
    show_toast("Submission Failed", "Please fill in required fields.", "error");
  }
});

$("#lrf_dob").change(function () {
  var dob = new Date($(this).val());
  var today = new Date();
  var age = Math.floor((today - dob) / (365.25 * 24 * 60 * 60 * 1000));

  if (age < 14) {
    $("#lrf_age").val("INPUT VALID BIRTHDATE!");
  } else {
    $("#lrf_age").val(age);
  }
});

function enrollment_sheet_validate_inputs() {
  sheet_is_valid = true;

  $(".form-control-required").removeClass("border-danger");
  $(".form-control-file-required").removeClass("border-danger");

  if ($("#lrf_age").val() == "INPUT VALID BIRTHDATE!") {
    $("#lrf_age").addClass("border-danger");
    return false;
  }

  $(".form-control-required").each(function () {
    if (!$(this).val()) {
      $(this).addClass("border-danger");
      sheet_is_valid = false;
    }
  });

  $(".form-control-file-required").each(function () {
    if (!$(this).val()) {
      $(this).addClass("border-danger");
      sheet_is_valid = false;
    }
  });

  if (!sheet_is_valid) {
    return false;
  } else {
    return true;
  }
}

function get_active_enrollment_details() {
  payload = {
    request_type: "get_enrollment_details",
    payload_data: {},
  };

  _GET(con_enrollment, payload, (cb) => {
    $("#lrf_sy")
      .empty()
      .append(
        `<option value="` +
          cb[0].school_year +
          `" > ` +
          cb[0].school_year +
          `</option>`
      );
    $("#lrf_semester")
      .empty()
      .append(
        `<option value="` +
          cb[0].semester +
          `" > ` +
          cb[0].semester +
          `</option>`
      );
  });
}

function load_grade_level_strands(grade_level) {
  payload = {
    request_type: "get_strand_by_grade_level",
    payload_data: {
      grade_level: grade_level,
    },
  };

  _GET(con_strand, payload, (cb) => {
    output = "";

    $.each(cb, (k, v) => {
      output += `<option value="${v.id}">${v.strand}</option>`;
    });

    if (output) {
      $("#lrf_strand").html(output);
      $("#div_enroll_now_strand").show();
    } else {
      $("#lrf_strand").html("");
      $("#div_enroll_now_strand").hide();
    }
  });
}
