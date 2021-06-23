<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">

<script src="dist/js/app.min.js"></script>

<section class="content-header">
	<h1><b>Leaderboard</b></h1>
	<ol class="breadcrumb">
		<li><a href="index.php"><i class="fa fa-home"></i> Home</a></li>
		<li class="active">Leaderboard</li>x
	</ol>
</section>

<section class="content">
	<div class='row'>
		<div class='col-xs-12'>
			<div class='box'>
				<div class='box-body'>
					<table id='example2' class='table table-bordered table-striped'>
						<thead>
							<tr>
								<th style="text-align:center;"> Name </th>
								<th style="text-align:center;"> Score </th>
							</tr>
						</thead>
						<tbody>			 
							<?php
								if($stmt = $mysqli->prepare("SELECT `username`, `highscore` FROM `leaderboard`")) {
                                    $mysqli->set_charset('utf8mb4');
									$stmt->execute();
									$stmt->store_result();
									$stmt->bind_result($username, $highscore);
									$num_rows = $stmt->num_rows;
									if($num_rows>0) {
										while ($stmt->fetch()) {
											echo"<tr>
												<td> $username </td>
												<td> $highscore </td>
											</tr>";
										}
										$stmt->close();	
									}
								}
							?>
						</tbody>					
					</table>
				</div>
			</div>
		</div>
	</div>
</section>

<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="plugins/fastclick/fastclick.min.js"></script>
<script src="dist/js/demo.js"></script>

<script>
	$('#example2').DataTable ({
        "paging": true,
        "lengthChange": true,
        "searching": true,
        "ordering": true,
        "info": true,
        "autoWidth": true,
        "language": {
			"sProcessing":   "Processing...",
			"sLengthMenu":   "Show _MENU_ results",
			"sZeroRecords":  "There is no results do be showned",
			"sInfo":         "Show from _START_ until _END_ / _TOTAL_ results",
			"sInfoEmpty":    "Showing 0 of 0 from 0 results",
			"sInfoFiltered": "(_MAX_ have been filtered)",
			"sInfoPostFix":  "",
			"sSearch":       "Search:",
			"sUrl":          "",
			"oPaginate": {
				"sFirst":    "First",
				"sPrevious": "Previous",
				"sNext":     "Next",
				"sLast":     "Last"
			}
		}
    });
</script>