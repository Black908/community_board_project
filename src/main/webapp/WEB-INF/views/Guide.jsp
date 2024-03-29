<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/icon/AmongLogo1.ico">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../CSS/Guide.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../JS/Guide.js"></script>

<title>Insert title here</title>
</head>
<body>
<h2 class="text-center">Bootstrap carousel with sidebar</h2>
<h3 class="text-center">This feature does not exist in official Bootstrap</h3>
<div class="container">
	<div class="row">
		<div class="col-sm-6 col-sm-offset-1">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
			  </ol>

			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			    <div class="item active">        
			      <img src="http://via.placeholder.com/600x400/D6BC65/fff?text=First+img">
			    </div>
			    <div class="item">
			      <img src="http://via.placeholder.com/600x400/008A84/fff?text=Second+img">
			    </div>
			    <div class="item">
			      <img src="http://via.placeholder.com/600x400/18AAA9/fff?text=Third+img">
			    </div>
			    <div class="item">
			      <img src="http://via.placeholder.com/600x400/C993A0/fff?text=Fourth+img">
			    </div>			    
			  </div>    
			  
			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div><!-- /.carousel -->

		</div><!-- /.col-sm-8 -->

		<div class="col-sm-3">
			<div class="result">
			  <p data-target="#carousel-example-generic" data-slide-to="0" class="active-p">01. This text is related to 01. slide</p>
			  <p data-target="#carousel-example-generic" data-slide-to="1">02. This text is related to 02. slide</p>
			  <p data-target="#carousel-example-generic" data-slide-to="2">03. This text is related to 03. slide</p>
			  <p data-target="#carousel-example-generic" data-slide-to="3">04. This text is related to 04. slide</p>
			</div>
		</div><!-- /.col-sm-8 -->		
	</div><!-- /.row -->
</div><!-- /.container -->

<div class="author">Made with ♥ by <a href="https://dankoknad.github.io/" target="_blank">Danko</a></div>  
</body>
</html>