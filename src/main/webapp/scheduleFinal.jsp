<%@page language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- lower links must connect for schedule page -->
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Trash Master</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">

    <!-- FOR NAV BAR -->
    <link rel="stylesheet" href="nav.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>

</head>

<body>
    <!-- ***********************************  nav bar starts here  *************************************-->

    <nav class="nav">
        <input type="checkbox" id="nav-check">
        <div class="nav-header">

            <!-- for logo -->
            <div class="nav-title">
                TRASH MASTER
            </div>

        </div>
        <div class="nav-btn">
            <label for="nav-check">
                <span></span>
                <span></span>
                <span></span>
            </label>
        </div>

        <ul class="nav-list">
            <a href="index.jsp">Home</a>
            <a href="schedule" target="_blank">Schedule a pickup</a>
            <a href="manage.jsp">Awareness</a>
            <a href="about.jsp" target="_blank">About Us</a>
            <a href="Community.jsp">Community</a>
        </ul>
    </nav>

    <!-- ***********************************  nav bar ends here  *************************************-->


    <!--------------------------------------------- SCHEDULE A PICKUP CODE STARTS ----------------------------------------->

    <section class="text-gray-600 body-font">
        <div class="container mx-auto flex px-2 py-6 md:flex-row flex-col items-center">

            <!--------------------------  form starts here ----------------->
            <form class="row g-3 my-10 mx-10" action="add" method="post" modelAttribute="SchedulePost">
                <form:form class="row g-3 " action="add" method="post" modelAttribute="SchedulePost">
<div class="col-md-4">
                        <label for="validationCustom01" class="field-label" for="fname"  >First name</label>
                        <input type="text" class="form-control" id="fname" placeholder="First Name" name="fname" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label for="validationCustom02" class="field-label" for="lname" >Last name</label>
                        <input type="text" class="form-control" id="lname" placeholder="Last Name"  name="lname" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="field-label" for="email" >Email</label>
                        <input type="email" class="form-control" id="inputEmail4" id="email" name="email" required>
                    </div>
                    <div class="col-md-6">
                        <label for="pno" class="field-label" >Phone Number</label>
                        <input type="tel" maxlength="10" class="form-control" id="pno" name="pno" required>
                    </div>
                    <div class="col-12">
                        <label for="add" class="field-label" >Address</label>
                        <input type="text" class="form-control" id="add" type="text" name="add" required>
                    </div>

                    <div class="col-md-5">
                        <label for="city" class="field-label" >City</label>
                        <input type="text" class="form-control" id="city" type="text" name="city" required>
                    </div>
                    <div class="col-md-4">
                        <label for="state" class="field-label" name="state">State</label>
                        <input type="text" class="form-control" id="state" type="text" name="state" required>
                    </div>

                    <div class="col-md-3">
                        <label for="zip" class="field-label" >Zip Code</label>
                        <input type="text" class="form-control" id="zip" type="tel" name="zip" required>
                    </div>

                    <div class="col-md-6">
                        <label for="time" class="field-label" >Select Time</label>
                        <select class="form-select" id="time" name="time" required>
                            <option Selected></option>
                            <option value="07:00 AM - 09:00 AM">07:00 AM - 09:00 AM</option>
                            <option value="02:00 PM - 04:00 PM">02:00 PM - 04:00 PM</option>
                            <option value="07:00 PM - 09:00 PM">07:00 PM - 09:00 PM</option>

                        </select>
                    </div>

                    <!-----------select date div start ---------->
                    <div class="col-md-6" style="padding: 6px;">
                        <label for="datepicker" class="form-label" >Select a Date</label>

                        <div>
                            <input type="date" id="myDate" name="date" required>
                            <script>
                                $(document).ready(function () {
                                    $("#myDate").datepicker();
                                });
                            </script>
                        </div>
                    </div>
                    <!----------- select date div ends ----------->

                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck" name="seg" value="True">
                            <label class="form-check-label" for="gridCheck">
                                Is your waste segregated?
                            </label>
                        </div>
                    </div>

                    <div class="col-12">
                        <button type="submit" class="btn btn-outline-primary">Schedule</button>
                    </div>
                </form:form>
                <!-- form ends here -->


                <!-- image section starts -->
                <div class="lg:max-w-lg lg:w-full md:w-1/2 w-5/6">
                    <img class="object-cover object-center rounded max-w-full h-auto" alt="hero"
                        src="https://bit.ly/3PfHe6w" style="width: 700px; height: 355px;">
                </div>
                <!-- image section ends -->
        </div>
    </section>


    <!-- curved div at bottom starts -->
    <div class="curve shape" style="width: 100%;
    height: 190px;
    background-color: #4CAF50;
    position: fixed;
    bottom: 0;
    border-radius: 30% 700% 0 0;
    z-index: -1;">
    </div>
    <!-- curved div at bottom starts -->

    <!--------------------------------------------- SCHEDULE A PICKUP ENDS ----------------------------------------->


</body>
<script>


</html>