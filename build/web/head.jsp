<%-- 
    Document   : head
    Created on : Jan 9, 2017, 4:35:41 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Online Electronics</title>
       
    
        
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css"/>
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/formValidation.css"/> <%--used for validation--%>
        <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css"/> 
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/breadcrumbs.css"/>
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap-datetimepicker.css"/>
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap-magnify.css">
        <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/magnify.css">
        
         <script src="bootstrap-3.3.7-dist/js/jquery-3.1.1.js"></script>
         <script src="bootstrap-3.3.7-dist/js/jquery-1.12.0.js"></script>
         <script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
         <script src="bootstrap-3.3.7-dist/js/moment.js"></script>
         <script src="bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.js"></script>
         <script src="bootstrap-3.3.7-dist/js/formValidation.js"></script> <%--used for validation--%>
         <script src="bootstrap-3.3.7-dist/js/bootstrap_1.js"></script>  <%--used for validation--%>
         <script src="bootstrap-3.3.7-dist/js/bootstrap-magnify.js"></script>

         
         
        
       <script>
            function call1()
             {
                 $("#a1").hide();
             }

             
$(document).ready(function(){
    $("#login").click(function(){
        $("#modal_login").modal();
    });
});
</script>
<style>
    .row {
        height: 100px;
       
      }
    @media screen and (max-width: 1200px) {
      .row {
        height: auto;
     
      }
      
    }
</style>


    </head>
    
    <body>
       
       
             <div class="container-fluid">
                 <div class="row" style="background-color: #269abc;color :white  ;padding-top: 20px">
                <div class="col-md-3">
            <p style="font-size: 40px;font-weight: bolder;font-style: oblique;font-family:cursive;padding-left: 1%"><a href="home.jsp" style="text-decoration: none;color:white">E-Electronics</a></p>
            <p style="font-size: 15px;font-family:monospace;margin-top: -10px;margin-left: 10px">the electronic way to shop </p>
           </div>
                
                <div class="col-md-3 col-md-offset-2">
            <p style="font-size: 20px;font-weight: normal"><i class="fa fa-phone-square"></i> 1800-156-624</p>
            <p style=";font-size: 20px;font-weight: normal"><i class="fa fa-envelope-square"></i> feedback@eelectronics.com</p>
                </div>
                
                <div class="col-md-2 col-md-offset-2">
            <a href="newuser.jsp"><p style="text-align: center;cursor: pointer;color:white"><i class="fa fa-2x fa-user"></i></p>
            <p style="text-align: center;font-size: 15px;font-weight: bolder;cursor: pointer;color:white">Sign in/Sign up</p></a>
                </div>
            </div>
</div>
        
      
    </body>
    
      
</html>
