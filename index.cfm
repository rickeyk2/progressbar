
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Progress </title>

    <!-- Bootstrap core CSS -->
    <link href="http://getbootstrap.com/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <style type="text/css">
		body {
		  padding-top: 50px;
		}
		.starter-template {
		  padding: 40px 15px;
		  text-align: center;
		}
	</style>

  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Bootstrap Progess Bar</a>
        </div>
        
      </div>
    </div>

    <div class="container">

      <div class="starter-template">
        <h1>Progress Bar File Upload</h1>
        <p class="lead">How to create a bootstrap progress bar when uploading files.  Won't work in IE 9 or lower</p>
      </div>
      
      
      
      <form id="mainForm" action="uploads/fileUpload.cfm" role="form">
          <fieldset>
          	<legend>File input</legend>
              <div class="form-group">
                <input type="file" name="exampleInputFile" id="exampleInputFile">
                <p class="help-block">
                	<div id="progress-bar" class="progress hide">
  						<div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuemin="0" aria-valuemax="100" >
    
  						</div>
					</div>
				</p>
              </div>
              <button type="submit" class="btn btn-success">Submit</button>
          </fieldset>
        </form>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://getbootstrap.com/dist/js/bootstrap.js"></script>
    <script src="js/ajaxUpload.js"></script>
    <script src="js/fileUpload.js"></script>
  </body>
</html>
