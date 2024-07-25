data_collections_sy = {};

$('#btn_add_sy').click(function () {
    $('#sy_md_add').modal('show')
    $('#sy_md_btn_add_confirm').unbind('click').click(function () {

        payload_data = {
            request_type: "add_record",
            school_year_start: $('#sy_md_txt_sy_start_add').val(),
            school_year_end: $('#sy_md_txt_sy_end_add').val()
        };

        _POST(API_URL_SY, payload_data, () => {
            show_toast('Add School Year', 'School year added successfully.')
            sys_load_school_year()
        });

    })
})


function sys_load_school_year() {

    payload = {
        request_type: "get_records_all",
        payload_data: {},
    };

    _GET(API_URL_SY, payload, (cb) => {

        output = ``;
        count = 0;

        $.each(cb, (k, v) => {

            count = count + 1;

            if (v.status == 'active') {
                badge = `<label class="p-2" style="width:120px; border-radius:5px; background:#F0FAF0; color:#2D8A39">Active</label>`;
            } else {
                badge = `<label class="p-2" style="width:120px; border-radius:5px; background:#FFF2F0; color:#E2341D">Inactive</label>`;
            }

            data_collections_sy[v.id] = {
                sy_start: v.school_year_start,
                sy_end: v.school_year_end,
                sy_status: v.status
            }

            output += `
                    <tr>
                        <td class="text-center">`+ count + `</td>
                        <td>`+ v.school_year_start + ` - ` + v.school_year_end + `</td>
                        <td class="text-center">`+ badge + `</td>
                        <td class="text-center">
                            <button class="sy_btn_edit btn p-1" sy_id="`+ v.id + `">
                            <i class="fa-solid fa-pencil"></i>
                            </button>
                            <button class="sy_btn_delete btn p-1" sy_id="`+ v.id + `">
                                <i class="fa-regular fa-trash-can"></i>
                            </button>
                        </td>
                    </tr>
                `;
        })

        $('#tbl_admin_sy tbody').html(output)

        $('.sy_btn_edit')
            .unbind('click')
            .click(function () {

                const syId = $(this).attr('sy_id')

                $('#sy_md_edit').modal('show')

                $('#sy_md_txt_sy_start').val(data_collections_sy[syId].sy_start)
                $('#sy_md_txt_sy_end').val(data_collections_sy[syId].sy_end)
                $('#sy_md_sel_status').val(data_collections_sy[syId].sy_status)

                $('#sy_md_btn_edit_confirm')
                    .unbind('click')
                    .click(function () {
                        _POST(API_URL_SY, {
                            request_type: "edit_record",
                            edit_anchor: ['id', syId],
                            school_year_start: $('#sy_md_txt_sy_start').val(),
                            school_year_end: $('#sy_md_txt_sy_end').val(),
                            status: $('#sy_md_sel_status').val(),
                        }, () => {

                            show_toast(
                                'Edit School Year',
                                'School year updated successfully.'
                            )

                            sys_load_school_year()
                        });
                    })

            })

        $('.sy_btn_delete')
            .unbind('click')
            .click(function () {

                $('#sy_md_delete_confirmation').modal('show')
                
                $('#sy_md_btn_del_confirm').attr('sy_id', $(this).attr('sy_id'))

                $('#sy_md_btn_del_confirm').unbind('click').click(function () {

                    payload_data = {
                        request_type: "delete_record",
                        id: $(this).attr("sy_id")
                    };

                    _POST(API_URL_SY, payload_data, () => {
                        show_toast('Delete School Year', 'School year deleted successfully.')
                        sys_load_school_year()
                    });


                })
            })

    })

}




