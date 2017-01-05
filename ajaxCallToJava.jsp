<%-- 
    Document   : ajaxCallToJava
    Created on : 5 Jan, 2017, 12:30:51 PM
    Author     : mtech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>The XMLHttpRequest Object</h1>

        <div id="demo">

            <button type="button" onclick="loadDoc()">Change Content</button>


        </div>
        <script>
            function loadDoc() {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("demo").innerHTML =
                                this.responseText;
                    }
                };
                xhttp.open("GET", "http://localhost:8080/uxproj/ajaxCallToJava?fname=name1", true);
                xhttp.send();

            }
        </script>  
    </body>
</html>
