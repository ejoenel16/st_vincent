<!-- PAGE ENROLLMENT -->
<section class="page text-dark vh-100 p-5" style="display:none; background:#FAFBFC" id="page_enrollment">

    <!-- MINI PAGE ENROLLMENT HOME -->
    <div class="minipage" id="mini_page_enrollment_home">
        <p class="lead" style="font-weight:500;">Enrollment</p>

        <div class="text-end mb-3">
            <div class="search-wrapper">
                <i class="fa-solid fa-magnifying-glass search-icon"></i>
                <input type="text" class="form-control search-input" placeholder="Search">
            </div>
        </div>

        <div class="card mt-4 p-3 table-responsive">
            <h6 class="ps-2 pt-3 pb-2">Enrollment List</h6>

            <table class="table table-responsive" id="tbl_admin_enrollments">
                <thead>
                    <tr>
                        <th class="py-2 text-center" style="color:#5F6D7E; font-weight:500">LRN</th>
                        <th class="py-2" style="color:#5F6D7E; font-weight:500">Name</th>
                        <th class="py-2 text-center" style="color:#5F6D7E; font-weight:500">Grade Level</th>
                        <th class="py-2 text-center" style="color:#5F6D7E; font-weight:500">Status</th>
                        <th class="py-2" style="color:#5F6D7E; font-weight:500"></th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>

    <!-- MINI PAGE ENROLLMENT -->
    <div class="minipage" style="display:none" id="minipage_enroll_student">

        <div class="micropage" id="mp_student_information">
            <div class="d-flex justify-content-between align-items-center">
                <p class="lead my-auto" style="font-weight:500">Student Information</p>
            </div>

            <div class="mt-3 card border rounded p-3 card-responsive">
                <table class="table table-responsive" style="font-size:9pt">
                    <tbody>
                        <tr class="py-2">
                            <td style="font-weight:500;" width="40%">LRN</td>
                            <td id="mes_lrn">test</td>
                        </tr>
                        <tr class="py-2">
                            <td style="font-weight:500;" width="40%">NAME</td>
                            <td id="mes_name">test</td>
                        </tr>
                        <tr class="py-2">
                            <td style="font-weight:500;" width="40%">GRADE LEVEL</td>
                            <td id="mes_grade_level">test</td>
                        </tr>
                        <tr class="py-2">
                            <td style="font-weight:500;" width="40%">SCHOOL YEAR</td>
                            <td id="mes_school_year">test</td>
                        </tr>
                        <tr class="py-2">
                            <td style="font-weight:500;" width="40%">SEX</td>
                            <td id="mes_sex">test</td>
                        </tr>
                        <tr class="py-2">
                            <td style="font-weight:500;" width="40%">STRAND</td>
                            <td id="mes_strand">test</td>
                        </tr>
                        <tr class="py-2">
                            <td style="font-weight:500;" width="40%">STATUS</td>
                            <td id="mes_semester">test</td>
                        </tr>
                        <tr class="py-2">
                            <td style="font-weight:500;" width="40%">STATUS</td>
                            <td id="mes_status">test</td>
                        </tr>
                    </tbody>
                </table>

                <div class="text-end">
                    <button class="btn btn-sm btn-primary" id="mes_btn_enroll_student">Enroll Student</button>
                </div>
            </div>
        </div>

        <div class="micropage" id="mp_choose_section" style="display:none">
            <div class="d-flex justify-content-between align-items-center">
                <p class="lead my-auto" style="font-weight:500">Choose Section</p>
                <button class="btn border rounded" id="a_mp_btn_back_to_student_information">
                    <i class="fa-solid fa-xmark"></i>
                </button>
            </div>

            <label for="sel_choose_section">Section</label>
            <select id="sel_choose_section" class="form-select form-select-sm mb-4"></select>

            <h6>Schedule</h6>
            <table class="table table-responsive border-top table-bordered" style="font-size:10pt;"
                id="tbl_admin_section_subjects">
                <thead>
                    <tr>
                        <th class="py-2" style="color:#5F6D7E; font-weight:500">Subject</th>
                        <th class="py-2 text-center" style="color:#5F6D7E; font-weight:500">Days</th>
                        <th class="py-2 text-center" style="color:#5F6D7E; font-weight:500">Time</th>
                        <th class="py-2" style="color:#5F6D7E; font-weight:500">Teacher</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>

            <div class="text-end">
                <button class="btn btn-sm btn-primary" id="e_btn_proceed_enrollment">Proceed Enrollment</button>
            </div>
        </div>
    </div>

</section>

<script src="src/pages/admin/enrollment/enrollment.js"></script>