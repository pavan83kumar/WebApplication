<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="bootstrap-overridden.css" />

</head>
<body>

	<div class="container container-small">
		<div class="alert alert-warning">
			<strong>*</strong> Indicates required fields
		</div>
		<!-- 	<form class="form-horizontal" name="myForm" action="/WebApp/employee" method ="get">

 -->
		<form action="/WebApp/employee" method="get">
			<div class="form-group">

				<label class="control-label col-sm-4">EmployeeId<span
					style="color: red">*</span>
				</label>
				<div class="col-sm-8">
					<input type="number" class="form-control" id="eId"
						placeholder="Enter EmployeeId" name="eId" >
				</div>
				<br>
				<br>
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<div class="col-sm-4">

							<input type="submit" class="btn btn-primary" value="submit">

						</div>
					</div>
				</div>

			</div>
		</form>
		
		<!-- </form> -->
	</div>


</body>
</html>
