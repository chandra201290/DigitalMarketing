
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
    <title>Digital Marketing | Camapign</title>
</head>
<body>

<div class="container">
    <header>
        <table border=0 style="width:100%">
            <tr>
                <td style="width:60%">
                    <h3>Digital Marketing</h3>
                </td>
                <td style="width:35%" align="right" valign="middle">
                    <p>Welcome <b><%=request.getParameter("username")%></b></p>
                </td>
                </tr>
        </table>
    </header>
</div>
<div class="row">
    <div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4 relative" align="center" >

        <div class="para">
            <h2>Create Campaign</h2>
        </div>
        <div class="content">
            <br>
            <form method="get" action="loginform">
                <input type="text" placeholder="Camapign Name" required name="campaignName">
                <input type="text" placeholder="Title" name="title">
                <input type="text" placeholder="Link" name="link">
                <input type="img" placeholder="photo" name="photo">
                <input type="text" placeholder="Write here..." required name="message">
                <input type="submit" class="postbtn" value="Post">
            </form>
            <br>
            <br>
        </div>
    </div>
</div>



</body>
</html>