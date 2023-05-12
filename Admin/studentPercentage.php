<?php 
include '../Includes/dbcon.php';
include '../Includes/session.php';

$query = "SELECT tblclass.className, tblclassarms.classArmName 
FROM tblclassteacher
INNER JOIN tblclass ON tblclass.Id = tblclassteacher.classId
INNER JOIN tblclassarms ON tblclassarms.Id = tblclassteacher.classArmId
WHERE tblclassteacher.Id = '{$_SESSION['userId']}'";

$rs = $conn->query($query);
$num = $rs->num_rows;
$rrw = $rs->fetch_assoc();  
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="img/logo/Ece.png" rel="icon">
  <title>Dashboard</title>
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">
</head>
<body id="page-top">
  <div id="wrapper">
    <!-- Sidebar -->
    <?php include "Includes/sidebar.php";?>
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
        <?php include "Includes/topbar.php";?>
        <!-- Topbar -->
        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Administrator Dashboard (Today's Date : <?php echo $todaysDate = date("d-m-Y");?>)</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
            </ol>
          </div>

          <div class="row mb-3">
            <!-- Students Card -->
            <?php 
            $query1 = mysqli_query($conn,"SELECT * from tblstudents where classId = 5");                       
            $students = mysqli_num_rows($query1);

            if (isset($_POST['submit'])) {
              // get the input values
              $from_date = $_POST['from_date'];
              $to_date = $_POST['to_date'];

              // make sure the input values are valid dates
              if (strtotime($from_date) && strtotime($to_date)) {

                // search for data within the date range
                $results = search_data_between_dates($conn, $from_date, $to_date);

                // display the results
                while ($row = mysqli_fetch_assoc($results)) {
                  // display each result
                }

              } else {
                echo "Please enter valid dates.";
              }
            }

            function search_data_between_dates($conn, $from_date, $to_date) {

              // create an SQL query to search for data within the date range
              $sql = "SELECT * FROM tblattendance WHERE dateTimeTaken BETWEEN '$from_date' AND '$to_date' && status=1";

              // execute the query and get the results
              $result =mysqli_query($conn,$sql);

    // return the search results
    return $result;
  }
//$num_students =  mysqli_num_rows($results);

  ?>
  <!-- HTML form for inputting the dates -->
  <form method="post">
   
  <label for="from_date">From:</label>
  <input type="date" id="from_date" name="from_date" required>

  <label for="to_date">To:</label>
  <input type="date" id="to_date" name="to_date" required>

  <button type="submit" name="submit">Search</button>
  <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card h-100">
                              <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                  <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">Total Percentage</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo ($num_students/$students)*100;?>%</div>
                                    <div class="mt-2 mb-0 text-muted text-xs">
                                      <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                                      <span>Since last years</span> -->
                                    </div>
                                  </div>
                                  <div class="col-auto">
                                    <i class="fas fa-chalkboard-teacher fa-2x text-danger"></i>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
              
        </div>
        <!-- Footer -->
        <?php include 'includes/footer.php';?>
        <!-- Footer -->
      </div>
    </div>

    <!-- Scroll to top -->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/ruang-admin.min.js"></script>
    <script src="../vendor/chart.js/Chart.min.js"></script>
    <script src="js/demo/chart-area-demo.js"></script>  
  </body>

  </html>