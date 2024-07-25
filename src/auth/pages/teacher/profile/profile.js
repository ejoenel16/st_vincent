con_teacher = `src/database/controllers/teacher_controller.php`;

let teacherSubjectList = {};

data_collections_teacher_information = {};

$(document).ready(function () {

    profile_load_information()

    $('#sp_change_photo').click(function () {
        $('#md_teacher_change_photo').modal('show')
    })
})

function profile_load_information() {

    const teacherId = getCookie('profile_id');

    payload = {
        request_type: "get_teacher_information",
        payload_data: {
            teacher_id: teacherId
        }
    };

    _GET(API_URL_TEACHERS, payload, (cb) => {

        cb.teacher_information.map((teacherInformation) => {

            $('#teacher_photo').attr('src', teacherInformation.photo_dir)
            $('#sidebar_img').attr('src', teacherInformation.photo_dir)
            $('#teacher_header_name').text(teacherInformation.lastname + ', ' + teacherInformation.firstname + ' ' + teacherInformation.middlename)
            $('#teacher_header_email').text(teacherInformation.email)

            $('#sp_lastname').val(teacherInformation.lastname)
            $('#sp_firstname').val(teacherInformation.firstname)
            $('#sp_middlename').val(teacherInformation.middlename)
            $('#sp_birthdate').val(teacherInformation.birthdate)
            $('#sp_age').val(teacherInformation.age)

            if (teacherInformation.gender == 'male') {
                $('#sp_male').prop('checked', true)
            } else {
                $('#sp_female').prop('checked', true)
            }

            $('#sp_email').val(teacherInformation.email)
            $('#sp_contact_no').val(teacherInformation.mobile_no)
            $('#sp_add_st').val(teacherInformation.add_st)
            $('#sp_add_city').val(teacherInformation.add_city)
            $('#sp_add_state').val(teacherInformation.add_state)
            $('#sp_add_zipcode').val(teacherInformation.zip_code)
            $('#sp_guardian_name').val(teacherInformation.e_name)
            $('#sp_guardian_no').val(teacherInformation.e_contact)
            $('#tr_info_e_relationship').val(teacherInformation.e_relationship)
        })

        $.each(cb.subjects, (k, v) => {
            teacherSubjectList[v.subject_id] = {
                id: v.subject_id,
                subject: v.subject
            }
        })

        loadTeacherWriteSubjects()
    })

    // CHANGE PHOTO FUNCTION
    $('#md_confirm_teacher_change_photo').unbind('click').click(function () {

        payload = {
            request_type: "teacher_change_photo",
            photo: $('#file_teacher_change_photo').prop('files')[0],
            teacher_id: id
        };

        _POST(con_teacher, payload, (cb, status) => {
            if (cb == 1) {
                show_toast('Change Photo', 'Change photo successful')
                profile_load_information(id)
            } else {
                show_toast('Contact Administrator', 'Post Failed : No rows affected', 'error')
            }
        })
    })

    // CHANGE PASSWORD
    $('#md_confirm_teacher_change_password').unbind('click').click(function () {

        if ($('#sp_cp_new_password_confirm').val() == $('#sp_cp_new_password').val()) {
            payload = {
                request_type: "teacher_change_password",
                id: teacherId,
                password: $('#sp_cp_new_password_confirm').val()
            };

            _POST(con_teacher, payload, (cb) => {
                if (cb == 1) {
                    show_toast('Change Password', 'Change password successful')
                    $('#sp_cp_new_password_confirm').val('')
                    $('#sp_cp_new_password').val('')

                    profile_load_information(id)
                } else {
                    show_toast('Contact Administrator', 'Post Failed : No rows affected', 'error')
                }
            })
        } else {
            show_toast('Change Password Fail', 'Passwords doesn`t match', 'error')

        }

    })

    // // SAVE CHANGES
    $('#sp_btn_profile_save_changes').unbind('click').click(function () {

        console.log(teacherId)
        payload = {
            request_type: "edit_record",
            edit_anchor: ['id', teacherId],
            firstname: $('#sp_firstname').val(),
            lastname: $('#sp_lastname').val(),
            middlename: $('#sp_middlename').val(),
            birthdate: $('#sp_birthdate').val(),
            age: $('#sp_age').val(),
            gender: $('input[name="sp_gender_radio_btn"]:checked').val(),
            email: $('#sp_email').val(),
            mobile_no: $('#sp_contact_no').val(),
            add_st: $('#sp_add_st').val(),
            add_city: $('#sp_add_city').val(),
            add_state: $('#sp_add_state').val(),
            zip_code: $('#sp_add_zipcode').val(),
            e_name: $('#sp_guardian_name').val(),
            e_contact: $('#sp_guardian_no').val(),
            e_relationship: $('#tr_info_e_relationship').val(),
            "subjects_teaching": JSON.stringify(teacherSubjectList)
        };

        _POST(con_teachers, payload, (cb) => {
            if (cb == 1) {
                show_toast('Update Profile', 'Profile has been updated successfully')
                profile_load_information() 
            } else {
                show_toast('Contact Administrator', 'Post Failed : No rows affected', 'error')
            }
        })
    })
}

const loadTeacherWriteSubjects = () => {
    output = ` `;
    $.each(teacherSubjectList, (k, v) => {
        output += `
            <span class="d-inline-block my-1 px-3 py-1 rounded" style="background:#F5FAFF; color:#0A1881">
                <span style="font-size:9pt;"> `+ v.subject + ` </span>
            </span>
        `;
    })

    $('#div_teacher_subjects').html(output)
}

$('#btn_changepass_profile_save_changes').click(function () {
    $('#md_teacher_change_password').modal('show')
})

$('.sp_micro_nav').click(function () {
    $('.sp_micro_nav').removeClass('active')
    $('.micropage').hide()

    $('#' + $(this).attr('show_micropage')).show()
    $(this).addClass('active')
})
