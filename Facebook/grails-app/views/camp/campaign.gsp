
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <asset:stylesheet src="stylesheet.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>DM | Home</title>
</head>
<body>
<div class="container">
    <header>
        <table border=0 style="width:100%">
            <tr>
                <td style="width:80%">
                    <h3 class="h3color">Digital Marketing</h3>
                </td>
                <td style="width:6%" align="center" valign="middle">
                    <h5 class="h5color">Welcome</h5>
                </td>
                <td style="width:15%" align="left" valign="middle">
                    <div class="dropdown">
                        <%=request.getParameter("username")%>Me<button class="dropbtn"> <span class="caret"></span></button>
                        <div class="dropdown-content">
                            <g:link controller="Home" action="index">Logout</g:link>
                            <g:link controller="FbLogout" action="logout">Facebook Logout</g:link>
                            %{--<g:link controller="#" action="#">Change Password</g:link>--}%
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </header>
</div>

<div class="row-custom">

    <div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4 relative" align="center" >

        <div class="para">
            <h2 class="ap">Create Campaign</h2>
        </div>
        <div class="content">
            <br>
            <form>
                %{--<input type="text" placeholder="Name"  name="campaignname">
                <input type="text" placeholder="Title" name="campaigntitle">--}%
                <p><input type="checkbox" id="checkme"/> By clicking this I agree to post<br>the contents on facebook wall</p>
                <h3 class="h3color">Choose a Category to Post</h3>
                <table border="0" style="width: 60%">
                    <tr>
                        <td style="width: 70%"><p><input type="radio" name="campaigntype"  id="link" value="link">Link</p></td>
                        <td style="width: 30%"><p><input type="radio" name="campaigntype"  id="text" value="text">Text</p></td>
                    </tr>
                    <tr>
                        <td><p><input type="radio" name="campaigntype"  id="image" value="image">Image</p></td>
                        <td><p><input type="radio" name="campaigntype"  id="video" value="video">Video</p></td>
                    </tr>
                </table>
                <button type="button" class="postbtn" disabled="disabled" id="proceed" value="Next" onclick="getcube()">Next</button>
                %{--<input type="submit" class="postbtn" disabled="disabled" id="proceed" value="Next" onclick="getcube()">--}%
            </form>
            <script type="text/javascript">
                function getcube(){
                    if (document.getElementById('link').checked) {
                        $('#linkmodal').modal('show');
                    }else if (document.getElementById('text').checked) {
                        $('#textmodal').modal('show');
                    }else if (document.getElementById('image').checked) {
                        $('#imagemodal').modal('show');
                    }else if (document.getElementById('video').checked) {
                        $('#videomodal').modal('show');
                    }
                }
            </script>
            <script type="text/javascript">
                var checker = document.getElementById('checkme');
                var sendbtn = document.getElementById('proceed');
                // when unchecked or checked, run the function
                checker.onchange = function(){
                    if(this.checked){
                        sendbtn.disabled = false;
                    } else {
                        sendbtn.disabled = true;
                    }
                }
            </script>
            %{--<input class="inputFiles" type="file" name="fileupload" multiple="multiple" accept="image/*" />



            <table border="0" style="width: 70%">
                <tr>
                    <td style="width: 40%">
                        <p>Select an Image</p>
                    </td>
                    <td style="width: 60%">
                        <input type="file" name="campaignimage" accept="image/*" style="width: 65%">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Select a Video</p>
                    </td>
                    <td>
                        <input type="file" name="campaignvideo" accept="video/*" style="width: 65%">
                    </td>

                </tr>
            </table>
            <textarea cols="39" rows="2" placeholder="Write here..." name="campaignmessage"></textarea>--}%

            <br>
            <br>
        </div>
    </div>
</div>
</body>
</html>




<!-- Modal -->
<div class="modal fade" id="linkmodal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header" align="center">
                <button type="button" class="close" data-dismiss="modal" style="width: 4%">&times;</button>
                <h2 class="modal-title">Campaign Data</h2>
            </div>
            <div class="modal-body" align="center">
                <g:form name="campaignform" url="[controller: 'post',action:'linkpost']">
                    <input type="text" placeholder="Campaign Name" required name="campaignname">
                    <input type="text" placeholder="Campaign Title" required name="campaigntitle">
                    <textarea cols="39" rows="2" placeholder="Write here..." name="campaignmessage"></textarea>
                    <input type="text" placeholder="Link..." required name="campaignlink">

                    <input type="submit" class="btn" value="Post">
                </g:form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 10%;padding: 2px">Close</button>
            </div>
        </div>

    </div>
</div>

</div>

    <!-- Modal -->
<div class="modal fade" id="textmodal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header" align="center">
                <button type="button" class="close" data-dismiss="modal" style="width: 4%">&times;</button>
                <h2 class="modal-title">Campaign Data</h2>
            </div>
            <div class="modal-body" align="center">
                <g:form name="campaignform" url="[controller: 'post',action:'textpost']">
                    <input type="text" placeholder="Campaign Name" required name="campaignname">
                    <input type="text" placeholder="Campaign Title" required name="campaigntitle">
                    <textarea cols="39" rows="2" placeholder="Write here..." required name="campaignmessage"></textarea>

                    <input type="submit" class="btn" value="Post">
                </g:form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 10%;padding: 2px">Close</button>
            </div>
        </div>

    </div>
</div>

</div>

    <!-- Modal -->
<div class="modal fade" id="imagemodal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header" align="center">
                <button type="button" class="close" data-dismiss="modal" style="width: 4%">&times;</button>
                <h2 class="modal-title">Campaign Data</h2>
            </div>
            <div class="modal-body" align="center">
                <g:form name="campaignform" url="[controller: 'post',action:'imagepost']" enctype='multipart/form-data'>
                    <input type="text" placeholder="Campaign Name" required name="campaignname">
                    <input type="text" placeholder="Campaign Title" required name="campaigntitle">
                    <textarea cols="39" rows="2" placeholder="Write here..." name="campaignmessage"></textarea>
                    <input class="inputFiles" type="file" name="fileupload" required multiple="multiple" accept="image/*" />


                    <input type="submit" class="btn" value="Post">
                </g:form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 10%;padding: 2px">Close</button>
            </div>
        </div>

    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="videomodal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header" align="center">
                <button type="button" class="close" data-dismiss="modal" style="width: 4%">&times;</button>
                <h2 class="modal-title">Campaign Data</h2>
            </div>
            <div class="modal-body" align="center">
                <g:form name="campaignform" url="[controller: 'post',action:'videopost']" enctype='multipart/form-data'>
                    <input type="text" placeholder="Campaign Name" required name="campaignname">
                    <input type="text" placeholder="Campaign Title" required name="campaigntitle">
                    <textarea cols="39" rows="2" placeholder="Write here..." name="campaignmessage"></textarea>
                    <input class="inputFiles" type="file" name="fileupload" required multiple="multiple" accept="video/*" />
                    <input type="submit" class="btn" value="Post">
                </g:form>
            </div>
            <div class="modal-footer">

                <button type="button" data-dismiss="modal" style="width: 10%;padding: 2px">Close</button>
            </div>
        </div>

    </div>
</div>