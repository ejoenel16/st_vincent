
const dashboardGetTotalStudent = () => {

    _GET(API_URL_STUDENTS, {
        request_type: "get_total_students",
        payload_data: {},
    }, (callbackData) => {
        $('#dashboard_total_students').text(callbackData[0].totalStudents)
    })
}

const dashboardGetTotalStudentPreEnrolled = () => {

    _GET(API_URL_STUDENTS, {
        request_type: "get_total_preEnrolled",
        payload_data: {},
    }, (callbackData) => {
        $('#dashboard_total_preEnrolled').text(callbackData[0].totalPreEnrolled)
    })
}

const dashboardGetTotalTeacher = () => {

    _GET(API_URL_TEACHERS, {
        request_type: "get_total_teachers",
        payload_data: {},
    }, (callbackData) => {
        $('#dashboard_total_teacher').text(callbackData[0].totalTeachers)
    })
}

const dashboardGetTotalStaff = () => {

    _GET(API_URL_STAFFS, {
        request_type: "get_total_staffs",
        payload_data: {},
    }, (callbackData) => {
        $('#dashboard_total_staffs').text(callbackData[0].totalStaffs)
    })
}

const dashboardGetEnrollmentInfos = () => {

    _GET(API_URL_ENROLLMENT, {
        request_type: "get_enrollment_information",
        payload_data: {},
    }, (cb, status) => {

        if (status == 200) {

            $('#btn_start_enrollment').hide();
            $('#btn_stop_enrollment').show();
            $('#d_txt_enrollment_status').html(`Enrollment Status :   
                <span class="text-success" 
                style="font-weight:500;">Active</span>
            `)

            setCookie('cur_sy',
                cb[0].school_year_start
                + ' - '
                + cb[0].school_year_end
            )

            $("#d_txt_enrollment_sy").html(
                `Active School Year :  
                <span style="font-weight:500">`
                + cb[0].school_year_start + ' - ' + cb[0].school_year_end
            )
        } else {
            $('#btn_start_enrollment').show();
            $('#btn_stop_enrollment').hide();
            $('#d_txt_enrollment_status')
                .html(`Enrollment Status :  
                    <span class="text-danger" style="font-weight:500;">
                    Inactive</span>
            `)

        }
    })
}

$('#btn_start_enrollment').unbind('click')
    .click(function () {

        $('#md_se').modal('show')

        // get current sy
        payload = {
            request_type: "get_current_schoolyear",
            payload_data: {},
        };

        _GET(con_sy, payload, (cb, status) => {
            if (status == 200) {
                $('#txt_md_se_sy').val(cb[0].school_year_start + ' - ' + cb[0].school_year_end)
                sy_id = cb[0].id


                $('#btn_md_se_confirm_enrollment').unbind('click').click(function () {

                    payload = {
                        request_type: "start_enrollment",
                        semester: $('#sel_md_se_sem').val(),
                        school_year: sy_id,
                    };

                    _POST(con_enrollment, payload, (cb) => {
                        console.log(cb)
                        if (cb == 1) {
                            location.reload();
                            // show_toast("Start Enrollment",
                            //     "Enrollment has been started successfully.")

                            // $('#btn_start_enrollment').hide();
                            // $('#btn_stop_enrollment').show();

                            // $('#d_txt_enrollment_status').html(`Enrollment Status :   
                            //     <span class="text-success" style="font-weight:500;">Active</span>
                            // `)

                            // $("#d_txt_enrollment_sy").html(
                            //     `Active School Year :  
                            //     <span style="font-weight:500">`
                            //     + cb[0].school_year_start + ' - ' + cb[0].school_year_end
                            // )

                        } else {
                            show_toast("Start Enrollment Failed", "Please contact admin", "error")
                        }

                    })
                })
            } else {
                show_toast("No active school year", "Enrollment cannot be started without an active school year.", "error")

            }


        })




    })

$('#btn_stop_enrollment').click(function () {

    $('#md_ee').modal('show')

    $('#btn_md_ee_confirm_enrollment').unbind('click').click(function () {

        payload = {
            request_type: "stop_enrollment",
        };

        _POST(con_enrollment, payload, (cb) => {
            show_toast("Stop Enrollment", "Enrollment has been stopped successfully.")

            $('#btn_start_enrollment').show();
            $('#btn_stop_enrollment').hide();
            $('#d_txt_enrollment_status').html(`Enrollment Status :   <span class="text-danger" style="font-weight:500;">Inactive</span>`)
        })
    })

})
