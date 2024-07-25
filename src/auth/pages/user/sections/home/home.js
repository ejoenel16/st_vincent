con_enrollment = `src/database/controllers/enrollment_controller.php`;

$('#homeEnrollNow').click(function () {

    headerCheckEnrollmentStatus()
})

function headerPrepareEnrollmentSheet() {

    payload = {
        request_type: "get_enrollment_information",
        payload_data: {},
    };

    _GET(con_enrollment, payload, (cb, status) => {

        $('#lrf_sy').html(`
            <option value="` + cb[0].school_year + `">` + cb[0].school_year_display + `</option>
        `)

        $('#lrf_semester').html(`
            <option value="` + cb[0].semester + `">` + cb[0].semester + `</option>
        `)
    })
}

function headerCheckEnrollmentStatus() {

    payload = {
        request_type: "getEnrollmentStatus",
        payload_data: {},
    };

    _GET(con_enrollment, payload, (cb, status) => {
        if (status == 204) {
            show_toast('Enrollment Closed', 'No active enrollment yet.', 'warning')
        } else {
            $('.page').hide();
            $('#page_enroll_now').fadeToggle();
            headerPrepareEnrollmentSheet()
        }
    })
}