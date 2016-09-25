<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>BienVenue Chez Nous !</title>
        
        <!-- Our CSS stylesheet file -->
        <link rel="stylesheet" href="a/assets/css/styles.css" />
        
        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    
    <body>

		<div id="formContainer">
			<form id="login" method="post" action="auth.jsp">
				<a href="#" id="flipToRecover" class="flipLink">ISSAM</a>
                                <input type="text" name="login" id="loginEmail" placeholder="LoGin" />
				<input type="password" name="password" id="loginPass" placeholder="Pass" />
                               
				<input type="submit" name="submit" value="OK" />
			</form>
        <form id="recover" method="post" action="./">
				<a href="" id="flipToLogin" class="flipLink">GHANOUCH</a>
				<input type="text" name="recoverEmail" id="recoverEmail" value="Email" />
				<input type="submit" name="submit" value="Recover" />
			</form>
		</div>

        <footer>
	        <h2><i>Vous Pouvez nous </i>Contacter !</h2>
            <a class="tzine" href="www.gmail.com">GHANOUCH <i>STAIM<b>.</b>LUCK@</i>GMAIL.COM</a>
        </footer>
        
        <!-- JavaScript includes -->
		<script src="a/assets/js/jquery-1.7.1.min.js"></script>
		<script src="a/assets/js/script.js"></script>

    </body>
</html>



