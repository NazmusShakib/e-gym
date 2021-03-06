﻿<?php
require 'db_conn.php';
page_protect();
?><!doctype html>


<head><title>Power-Gym Management System ,A Complete Fitness Management System</title>

    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!-- Apple devices fullscreen -->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <!-- Apple devices fullscreen -->
    <meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />


    <!-- Bootstrap -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <!-- Bootstrap responsive -->
    <link rel="stylesheet" href="../../css/bootstrap-responsive.min.css">
    <!-- jQuery UI -->
    <link rel="stylesheet" href="../../css/plugins/jquery-ui/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../../css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
    <!-- PageGuide -->
    <link rel="stylesheet" href="../../css/plugins/pageguide/pageguide.css">
    <!-- Fullcalendar -->
    <link rel="stylesheet" href="../../css/plugins/fullcalendar/fullcalendar.css">
    <link rel="stylesheet" href="../../css/plugins/fullcalendar/fullcalendar.print.css" media="print">
    <!-- Theme CSS -->
    <link rel="stylesheet" href="../../css/style.css">
    <!-- Color CSS -->
    <link rel="stylesheet" href="../../css/themes.css">
    <!-- Tagsinput -->
    <link rel="stylesheet" href="../../css/plugins/tagsinput/jquery.tagsinput.css">
    <!-- chosen -->
    <link rel="stylesheet" href="../../css/plugins/chosen/chosen.css">
    <!-- multi select -->
    <link rel="stylesheet" href="../../css/plugins/multiselect/multi-select.css">
    <!-- timepicker -->
    <link rel="stylesheet" href="../../css/plugins/timepicker/bootstrap-timepicker.min.css">
    <!-- colorpicker -->
    <link rel="stylesheet" href="../../css/plugins/colorpicker/colorpicker.css">
    <!-- Datepicker -->
    <link rel="stylesheet" href="../../css/plugins/datepicker/datepicker.css">
    <!-- Plupload -->
    <link rel="stylesheet" href="../../css/plugins/plupload/jquery.plupload.queue.css">


    <!-- jQuery -->
    <script src="../../js/jquery.min.js"></script>
    <!-- jQuery UI -->
    <script src="../../js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
    <script src="../../js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
    <script src="../../js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
    <script src="../../js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
    <script src="../../js/plugins/jquery-ui/jquery.ui.spinner.js"></script>
    <script src="../../js/plugins/jquery-ui/jquery.ui.slider.js"></script>
    <!-- Bootstrap -->
    <script src="../../js/bootstrap.min.js"></script>
    <!-- Bootbox -->
    <script src="../../js/plugins/bootbox/jquery.bootbox.js"></script>
    <!-- Masked inputs -->
    <script src="../../js/plugins/maskedinput/jquery.maskedinput.min.js"></script>
    <!-- TagsInput -->
    <script src="../../js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
    <!-- Datepicker -->
    <script src="../../js/plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Timepicker -->
    <script src="../../js/plugins/timepicker/bootstrap-timepicker.min.js"></script>
    <!-- Colorpicker -->
    <script src="../../js/plugins/colorpicker/bootstrap-colorpicker.js"></script>
    <!-- Chosen -->
    <script src="../../js/plugins/chosen/chosen.jquery.min.js"></script>
    <!-- MultiSelect -->
    <script src="../../js/plugins/multiselect/jquery.multi-select.js"></script>
    <!-- CKEditor -->
    <script src="../../js/plugins/ckeditor/ckeditor.js"></script>
    <!-- PLUpload -->
    <script src="../../js/plugins/plupload/plupload.full.js"></script>
    <script src="../../js/plugins/plupload/jquery.plupload.queue.js"></script>
    <!-- Custom file upload -->
    <script src="../../js/plugins/fileupload/bootstrap-fileupload.min.js"></script>

    <!-- Theme framework -->
    <script src="../../js/eakroko.min.js"></script>
    <!-- Theme scripts -->
    <script src="../../js/application.min.js"></script>
    <!-- Just for demonstration -->
    <script src="../../js/demonstration.min.js"></script>
    <script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
    <script src="SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>

    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" />
    <!-- Apple devices Homescreen icon -->
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png" />
    <link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">

    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png" />
    <link href="SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        $(document).ready(function()
        {
            $(".country").change(function()
            {
                var id=$(this).val();
                var dataString = 'id='+ id;

                $.ajax
                ({
                    type: "POST",
                    url: "ajax_city.php",
                    data: dataString,
                    cache: false,
                    success: function(html)
                    {
                        $(".city").html(html);
                    }
                });

            });
        });
    </script>



    <SCRIPT LANGUAGE="JavaScript">
        function checkIt(evt) {
            evt = (evt) ? evt : window.event
            var charCode = (evt.which) ? evt.which : evt.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                status = "This field accepts numbers only."
                return false
            }
            status = ""
            return true
        }
    </SCRIPT>


</head>
<body>
<div id="navigation">
    <div class="container-fluid">
        <a href="index.php" id="brand">
            e-GYM</a>
        <ul class='main-nav'>
            <li>
                <a href="index.php">
                    <i class="icon-home"></i>
                    <span>Dashboard</span>

                </a>
            </li>

            <li>
                <a href="new_entry.php">
                    <i class="icon-edit"></i>
                    <span>New Registration</span>

                </a>

            </li>
            <li>
                <a href="#" data-toggle="dropdown" class='dropdown-toggle'>
                    <i class="icon-edit"></i>
                    <span>Members</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="view_mem.php">View Members</a>
                    </li><li>
                        <a href="table_view.php">View / Enter Schedule</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="change_values.php">
                    <i class="icon-edit"></i>
                    <span>Edit Subsciption Details</span>

                </a>

            </li><li class='active'>
                <a href="new_plan.php">
                    <i class="icon-edit"></i>
                    <span>New Plan</span>

                </a>

            </li>
            <li>
                <a href="#" data-toggle="dropdown" class='dropdown-toggle'>
                    <i class="icon-edit"></i>
                    <span>Overview</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="over_members_month.php">Members per Month</a>
                    </li><li>
                        <a href="over_members_year.php">Members per Year</a>
                    </li>
                    <li>
                        <a href="revenue_month.php">Income per month</a>
                    </li>
                </ul>
            </li><li>
                <a href="#" data-toggle="dropdown" class='dropdown-toggle'>
                    <i class="icon-edit"></i>
                    <span>Alerts</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="unpaid.php">Unpaid Members</a>
                    </li><li>
                        <a href="sub_end.php">Ending Membership</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="logout.php">Logout</a>
            </li>


            </li>




        </ul>
        <div class="user">
            <ul class="icon-nav">

                <li>
                    <a href="logout.php" class='lock-screen' rel='tooltip' title="Sign Out" data-placement="bottom"><i class="icon-lock"></i></a>
                </li>

            </ul>
            <div class="dropdown">
                <a href="#" class='dropdown-toggle' data-toggle="dropdown"><?php
                    echo $_SESSION['full_name'];
                    if ($_SESSION['sex'] == 'male') {
                        echo "<img src='men-ava.jpg'></a>";
                    } else {
                        echo "<img src='women-ava.jpg'></a>";
                    }
                    ?>
                    <ul class="dropdown-menu pull-right">
                        <li>
                            <a href="more-userprofile.php">Edit profile</a>
                        </li>
                        <li>
                            <a href="../../login/lock.php">Lock Screen</a>
                        </li>
                    </ul>
            </div>
        </div>
        <a href="#" class='toggle-mobile'><i class="icon-reorder"></i></a>
    </div>
</div>

<div class="container-fluid" id="content">
    <div id="main">
        <div class="container-fluid">
            <div class="page-header">
                <div class="pull-left">
                    <h1>New Plan</h1>
                </div>
                <div class="pull-right">
                    <?php include('status-widget.php');?>
                </div>
            </div>
            <div class="breadcrumbs">
                <ul>
                    <li>
                        <a href="index.php">Home</a>
                        <i class="icon-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">New Plan</a>

                    </li>

                </ul>
                <div class="close-bread">
                    <a href="#">
                        <i class="icon-remove"></i>
                    </a>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span12">
                    <div class="box box-bordered box-color">
                        <div class="box-title">
                            <h3><i class="icon-th-list"></i> New Plan Details </h3>
                        </div>
                        <div class="box-content nopadding">
                            <form action="submit_plan_new.php" method="POST" class='form-horizontal form-bordered'>

                                <div class="control-group">
                                    <label for="textfield" class="control-label">Plan ID :</label>
                                    <div class="controls"><?php
                                        function getRandomWord($len = 8)
                                        {
                                            $word = array_merge(range('A', 'Z'));
                                            shuffle($word);
                                            return substr(implode($word), 0, $len);
                                        }

                                        ?>					<input type="text" name="p_id" value="<?php
                                        echo getRandomWord();
                                        ?>" class="uneditable-input"  readonly/>
                                    </div>
                                </div>



                                <div class="control-group">
                                    <label for="textfield" class="control-label">Name :</label>
                                    <div class="controls"><span id="sprytextfield1">
										  <input type="text" name="name" id="textfield3" class="input-xlarge" data-rule-required="true" data-rule-minlength="4" placeholder="Plan Name" maxlength="100">
									    <span class="textfieldRequiredMsg">A value is required.</span></span></div>
                                </div>


                                <div class="control-group">
                                    <label for="emailfield" class="control-label">Details :</label>
                                    <div class="controls">

                                        <input type="text" name="details"  id="emailfield" class="input-xlarge"  data-rule-minlength="5" placeholder="Details" maxlength="999">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label for="textfield" class="control-label">Days :</label>
                                    <div class="controls"><span id="sprytextfield2">
										  <input type="text" name="days" id="textfield4" class="input-xlarge" data-rule-required="true" data-rule-minlength="1" placeholder="Validity In Days"  onKeyPress="return checkIt(event)" maxlength="3">
									    <span class="textfieldRequiredMsg">A value is required.</span></span></div>
                                </div>



                                <div class="control-group">
                                    <label for="textfield" class="control-label">Rate :</label>
                                    <div class="controls"><span id="sprytextfield4">
										  <input type="text" name="rate" id="textfield6" class="input-xlarge" data-rule-required="true" data-rule-minlength="10" placeholder="Rate" onKeyPress="return checkIt(event)" maxlength="10">
									    <span class="textfieldRequiredMsg">A value is required.</span></span></div>
                                </div>



                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary">Save changes</button>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="alert alert-info">
    <center>

        <h4>Power-Gym ,A Complete Fitness Management System</h4>
        <p><a href="#">Developed By PowerSoft,Bangladesh</a> Powered

            by Mithun & Aziz</p></center>
</div>



<script type="text/javascript">
    var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
    var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
    var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1");
    var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
    var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4");
    var spryselect2 = new Spry.Widget.ValidationSelect("spryselect2");
</script>
</body>

</html>
