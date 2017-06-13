
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <asset:stylesheet src="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>DM | Home</title>
</head>
<body>
<div class="container">
    <header>
        <table border=0 style="width:100%">
            <tr>
                <td style="width:70%">
                    <h3 class="h3color">Digital Marketing</h3>
                </td>
                <td style="width:30%" align="center" valign="middle">
                </td>
            </tr>
        </table>
    </header>
</div>
<div class="row-custom">
    <div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4 relative" align="center" >

        <div class="para">
            <h2 class="ap">SignIn</h2>
        </div>
        <div class="content">
            <br>
            %{--<form action="/login/auth" method="post">--}%
            <form action="/login/authenticate" method="post">
                <input type='hidden' name='spring-security-redirect'
                       value='/secure'>

                <input type="text" placeholder="Email" required name="username">
                <input type="password" placeholder="Password" required name="password">
                <input type="submit" class="btn" value="SignIn">
                %{-- </form>--}%
            </form>
            <br>
            <br>
            <table border=0 style="width:100%">
                <tr>
                    <td style="width:43%" align=center>
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#signup">Sign Up</button>
                    </td>
                    <td style="width:57%" align=center>
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#reset">Reset Password</button>
                    </td>
                </tr>
            </table>
            <br>
            <br>
        </div>
    </div>
</div>
</body>
</html>

<div class="signupmodal">
    <!-- Trigger the modal with a button -->

    <!-- Modal -->
    <div class="modal fade" id="signup" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" align="center">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h2 class="modal-title">SignUp</h2>
                </div>
                <div class="modal-body" align="center">
                    <form action="">
                        <input type="text" placeholder="Name" required name="name">
                        <input type="text" placeholder="Email" required name="email">
                        <input type="text" placeholder="Contact No" required name="contact">
                        <input type="text" placeholder="Industry" required name="industry">
                        <input type="text" placeholder="Company Name" required name="company">
                        <input type="text" placeholder="Password" required name="password">
                        <input type="submit" class="btn" value="SignUp">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

</div>


<div class="signupmodal">
    <!-- Trigger the modal with a button -->

    <!-- Modal -->
    <div class="modal fade" id="reset" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" align="center">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h2 class="modal-title">Reset Password</h2>
                </div>
                <div class="modal-body" align="center">
                    <form>
                        <input type="text" placeholder="Email Address" required name="email">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

</div>