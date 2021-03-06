<?php
@header ("Expires: Sun, 16 Mar 2003 05:00:00 GMT");
@header ("Last-Modified: " . gmdate ("D, d M Y H:i:s") . " GMT");
@header ("Cache-Control: no-store, no-cache, must-revalidate");
@header ("Cache-Control: post-check=0, pre-check=0", false);
@header ("Pragma: no-cache");

include( "./include/output.inc.php" );
?>
<!DOCTYPE html>
<html lang="en">
<!--
    SVN Access Manager - a subversion access rights management tool
    Copyright (C) 2008-2018 Thomas Krieger <tom@svn-access-manager.org>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="SVN Access Manager Sign in">
    <meta name="author" content="Thomas Krieger">
    
    <!-- favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="./images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./images/favicon-16x16.png">
    <link rel="shortcut icon" href="./images/favicon.ico">

    <title>SVN Access Manager</title>

    <!-- Bootstrap core CSS -->
    <link href="./lib/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="./lib/bootstrap-3.3.7/css/ie10-viewport-bug-workaround.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./style/signin.css" rel="stylesheet">
    <link href="./lib/bootstrap-3.3.7/css/sticky-footer-navbar.css" rel="stylesheet">
    <link href="./style/svnam.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="./lib/bootstrap-3.3.7/js/html5shiv.min.js"></script>
      <script src="./lib/bootstrap-3.3.7/js/respond.min.js"></script>
    <![endif]-->
    <script src="./lib/jquery/jquery-3.3.1.min.js"></script>
    <script src="./lib/bootstrap-3.3.7/js/bootstrap.min.js"></script>
     <script>
      $(document).ready(function() {
          $("#noJS").hide();
          $("#site").show();
      });
    </script>
    <style>
    #site {
        display: none;
    }
    
    .logoBar {
        vertical-align:bottom;
        background-color:#efeff8;
        width:716px;
        height:70px;
    }
    </style>
  </head>

  <body>
    <noscript>
        <div id="noJS">
            
            <div class="logoBar">
                <a href="#">
                    <img src="./images/svn-access-manager_200_60.jpg" width="200" height="60" border="0" />
                </a>
            </div>
            
            <!-- BEGIN Liquid Middle Column --> 
            <div class="Content">
               
                <p><?php print _("Javascript is disabled. This site needs JavaScript to work correctly. Please enable JavaScript in your browser!"); ?></p>
    
            </div>
            <!-- END Liquid Middle Column -->   
        </div>
    </noscript>
    
    <div class="container" id="site">
      
      <form class="form-horizontal" name="lostpassword" method="post" autocomplete="off">

        <div class="input-group">
            <p><h3><?php print  _("Reset your password"); ?></h3></p>
        </div>
        <div class="form-group <?php print outputResponseClasses($tTokenError); ?>">
            <label class="col-sm-3 control-label" for="token"><?php print _("Token"); ?>:</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="token" name="fToken" value="<?php print $tToken;?>" data-toggle="tooltip" title="<?php print _("Question to answer before a password reset."); ?>" />
                <?php print outputResponseSpan($tTokenError); ?>
            </div>
        </div>
        <div class="form-group <?php print outputResponseClasses($tPassword1Error); ?>">
            <label class="col-sm-3 control-label" for="pw1"><?php print _("New password"); ?>:</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="pw1" name="fPassword1" value="<?php print $tPassword1;?>"  />
                <?php print outputResponseSpan($tPassword1Error); ?>
            </div>
        </div>
        <div class="form-group <?php print outputResponseClasses($tPassword2Error); ?>">
            <label class="col-sm-3 control-label" for="pw2"><?php print _("Retype password"); ?>:</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="pw2" name="fPassword2" value="<?php print $tPassword2;?>" />
                <?php print outputResponseSpan($tPassword2Error); ?>
            </div>
        </div>
        <div class="input-group">
            <p>&nbsp;</p>
        </div>    
        <div class="input-group">
            <button class="btn btn-sm btn-primary btn-block" type="submit"><span class="glyphicon glyphicon-ok"></span> <?php print _("Submit"); ?></button>
        </div>
        <div class="input-group">
            <p>&nbsp;</p>
        </div>
        <?php 
            outputMessage($tMessage, $tMessageType);
        ?>
        <div class="input-group">
            <p>&nbsp;</p>
        </div>
        
      </form>

    </div> <!-- /container -->
    
    <footer class="footer">
      <div class="container">
        <p class="text-muted small">
     
                <?php 
                    $datetime = htmlentities(strftime("%c"));
                ?>
            
                <div class="row">
                    <div class="col-sm-6"><?php global $CONF; print $CONF['copyright']." - PHP Version: ".PHP_VERSION; ?></div>
                    <div class="col-sm-3"><?php print $tBuildInfo; ?></div>
                    <div class="col-sm-3"><?php print $datetime; ?></div>
                </div>

        </p>
      </div>
    </footer>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./lib/bootstrap-3.3.7/js/ie10-viewport-bug-workaround.min.js"></script>
  </body>
</html>
