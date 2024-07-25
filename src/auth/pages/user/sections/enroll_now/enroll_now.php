<section class="page" id="page_enroll_now" style="color:#21313C!important; display:none">

    <div class="container" style="margin-top:2em;">
        <div class="row">
            <div class="col">

                <h5 style="font-weight:500">LEARNER REGISTRATION FORM</h5>

                <div style="background:#F5FAFF; border:2px solid #88A9F9; border-radius:5px;" class="p-3">
                    <h5 style="font-weight:400">Important Reminder:</h5>
                    <p style="font-weight:400; font-size:10pt" class="mb-1 text-muted">Please ensure to provide accurate
                        and complete information. Required fields are marked with an asterisk(*).</p>
                </div>

            </div>
        </div>

        <div class="row mt-4">
            <div class="col">
                <h6>GRADE LEVEL AND SCHOOL INFORMATION</h6>
            </div>
        </div>

        <div class="row mt-1">
            <div class="col-12 col-lg-6">
                <label class="mt-2">School Year: <span class="text-danger">*</span></label>
                <select class="form-select" id="lrf_sy"></select>
            </div>
            <div class="col-12 col-lg-6">
                <label class="mt-2">Grade Level: <span class="text-danger">*</span></label>
                <select class="form-select" id="lrf_gl">
                    <option value="12">GRADE 12</option>
                    <option value="11">GRADE 11</option>
                    <option value="10">GRADE 10</option>
                    <option value="9">GRADE 9</option>
                    <option value="8">GRADE 8</option>
                    <option value="7">GRADE 7</option>
                </select>
            </div>
        </div>

        <div class="row mt-1">

            <div class="col-12 col-lg-6">
                <label class="mt-2">Status: <span class="text-danger">*</span></label>
                <select class="form-select" id="lrf_semester"></select>
            </div>

            <div class="col-12 col-lg-6" id="div_enroll_now_strand">
                <label class="mt-2">Strand: <span class="text-danger">*</span></label>
                <select class="form-select" id="lrf_strand">
                    <option value="Science, Technology, Engineering and Mathematics Strand (STEM)">Science, Technology,
                        Engineering and Mathematics Strand (STEM)</option>
                    <option value="Accountancy, Business and Management Strand (ABM)">Accountancy, Business and
                        Management Strand (ABM)</option>
                    <option value="General Academic Strand (GAS)">General Academic Strand (GAS)</option>
                    <option value="Information & Communication Technology (ICT)">Information & Communication Technology
                        (ICT)</option>
                    <option value="Food & Beverages (F&B)">Food & Beverages (F&B)</option>
                </select>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col">
                <h6>STUDENT INFORMATION</h6>
            </div>
        </div>

        <div class="row mt-1">
            <div class="col-12 col-lg-6">
                <label class="mt-2">Learner Reference Number: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_lrn">
            </div>
            <div class="col-12 col-lg-6">
                <label class="mt-2">Date of Birth: <span class="text-danger">*</span></label>
                <input type="date" id="lrf_dob" class="form-control form-control-required">
            </div>
        </div>

        <div class="row mt-1">
            <div class="col-12 col-lg-6">
                <label class="mt-2">Last Name: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_ln">
            </div>
            <div class="col-12 col-lg-6">
                <label class="mt-2">Age: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" disabled id="lrf_age" readonly>
            </div>
        </div>

        <div class="row mt-1">
            <div class="col-12 col-lg-6">
                <label class="mt-2">First Name: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_fn">
            </div>
            <div class="col-12 col-lg-6">

                <label class="mt-2">Sex: <span class="text-danger">*</span></label>

                <div class="d-flex">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="enroll_gender" id="frd_male" value="male"
                            checked>
                        <label class="form-check-label me-2" for="frd_male">
                            Male
                        </label>
                    </div>

                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="enroll_gender" value="female"
                            id="frd_female">
                        <label class="form-check-label" for="frd_female">
                            Female
                        </label>
                    </div>
                </div>

            </div>
        </div>

        <div class="row mt-1">
            <div class="col-12 col-lg-6">
                <label class="mt-2">Middle Name: </label>
                <input type="text" class="form-control" id="lrf_mn">
            </div>
            <div class="col-12 col-lg-6"></div>
        </div>

        <div class="row mt-4">
            <div class="col">
                <h6>CONTACT INFORMATION</h6>
            </div>
        </div>

        <div class="row mt-1">
            <div class="col-12 col-lg-6">
                <label class="mt-2">Email Address: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_email"
                    placeholder="juandelacruz@example.com">
            </div>
            <div class="col-12 col-lg-6">
                <label class="mt-2">Contact Number: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_contact_no"
                    placeholder="09*********">
            </div>
        </div>

        <div class="row mt-4">
            <div class="col">
                <h6>ADDRESS</h6>
            </div>
        </div>

        <div class="row mt-1">
            <div class="col-12 col-lg-6">
                <label class="mt-2">Street: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_street">
            </div>
            <div class="col-12 col-lg-6">
                <label class="mt-2">City: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_city">
            </div>
        </div>

        <div class="row mt-1">
            <div class="col-12 col-lg-6">
                <label class="mt-2">State: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_state">
            </div>
            <div class="col-12 col-lg-6">
                <label class="mt-2">Zip Code: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_zipcode">
            </div>
        </div>

        <div class="row mt-4">
            <div class="col">
                <h6>GUARDIAN'S INFORMATION</h6>
            </div>
        </div>

        <div class="row mt-1">
            <div class="col-12 col-lg-6">
                <label class="mt-2">Full Name: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_g_fullname">
            </div>
            <div class="col-12 col-lg-6">
                <label class="mt-2">Contact Number: <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-required" id="lrf_g_contact_no">
            </div>
        </div>


        <div class="row mt-4">
            <div class="col">
                <h6>ATTACH DOCUMENTS</h6>
            </div>
        </div>


        <div class="row mt-2">
            <div class="col-12 col-lg-6">
                <label class="mt-2">SF 9: <span class="text-danger">*</span></label>
                <input type="file" style="width:70%" class="form-control form-control-file-required" id="lrf_f_sf9"
                    accept="application/pdf">
            </div>
            <div class="col-12 col-lg-6">
                <label class="mt-2">PSA/NSO Birth Certificate: <span class="text-danger">*</span></label>
                <input type="file" style="width:70%" class="form-control form-control-file-required" id="lrf_f_nso"
                    accept="application/pdf">
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-12 col-lg-6">
                <label class="mt-2">SF 10: <span class="text-danger">*</span></label>
                <input type="file" style="width:70%" class="form-control form-control-file-required" id="lrf_f_sf10"
                    accept="application/pdf">
            </div>
            <div class="col-12 col-lg-6">
                <label class="mt-2">Attach a 2x2 photo with a white background: <span
                        class="text-danger">*</span></label>
                <input type="file" style="width:70%" class="form-control form-control-file-required" id="lrf_f_photo"
                    accept="image/x-png,image/jpeg">
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-12 col-lg-6">
                <label class="mt-2">Certificate of Good Moral Character: <span class="text-danger">*</span></label>
                <input type="file" style="width:70%" class="form-control form-control-file-required" id="lrf_f_gmc"
                    accept="application/pdf">
            </div>
            <div class="col-12 col-lg-6">
            </div>
        </div>


        <div class="row mt-4">
            <div class="col-12">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="lrf_confirmed_application">
                    <label class="form-check-label" for="lrf_confirmed_application">
                        I hereby certify that the above statements are true to the best of my knowledge.
                        I authorize St. Vincent Institute of Technology to collect, process, and store my personal data.
                    </label>
                </div>
            </div>
        </div>

        <div class="row mt-3 mb-5">
            <div class="col-12">
                <button class="btn" style="background:#0A1881; height:40px; width:150px; font-size:10pt; color:white;"
                    id="btn_submit_application">Submit Application</button>
            </div>
        </div>
    </div>
</section>