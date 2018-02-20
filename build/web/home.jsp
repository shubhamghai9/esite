<%-- 
    Document   : home
    Created on : Jan 1, 2017, 12:19:18 AM
    Author     : shruti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Online Electronics</title>
        

          <%@include file="head.jsp" %>
          
         
              
        <script>
        ${msg1}           
             
 

            

$(document).ready(function() {
   $('#frmlogin').formValidation({
       
       framework: 'bootstrap',
       container:'tooltip',
       icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        
        live:'disabled',
        fields: {
            
            txt_username: {
                validators: {
                    notEmpty:{
                         message: 'Userid is required'
                    },
                    emailAddress: {
                        message:'Invalid format'
                    }
                }
            },
            txt_password: {
                validators: {
                    notEmpty:{
                         message: 'Password is required'
                    }
                    
                }
            }
        }
       
        });
    });
    
        </script>
        
    </head>
    <body>
      
        <div class="container-fluid">
        <div class="row" >
             <div class="col-md-9">
                 
                 <h2>For your style and sound</h2>
                 <hr style="height:3px;background-color:grey " >
                 <div class="col-md-3 ">
                  <div class="panel panel-danger" >
        
        <div class="panel-body"><img  src="images/e3.jpg" class="img-responsive" style="width:100%;" alt="Offer 1"></div>
        <div class="panel-footer">Bluetooth Speakers<br/>Price: <i class="fa fa-rupee"> 500/-</i> <a style="padding-left: 50px;cursor: pointer"> Add to cart</a></div>
      </div>
                </div>
                 
                 <div class="col-md-3 col-md-offset-1">
                  <div class="panel panel-danger" >
        
        <div class="panel-body"><img src="images/e3.jpg" class="img-responsive" style="width:100%;" alt="Offer 1"></div>
        <div class="panel-footer">Hitachi Speakers<br/>Price: <i class="fa fa-rupee"> 300/-</i> <a style="padding-left: 50px;cursor: pointer"> Add to cart</a></div>
      </div>
                </div>
                 <div class="col-md-3 col-md-offset-1">
                  <div class="panel panel-danger" >
        
        <div class="panel-body"><img src="images/e3.jpg" class="img-responsive" style="width:100%;" alt="Offer 1"></div>
        <div class="panel-footer">Hitachi Speakers<br/>Price: <i class="fa fa-rupee"> 600/-</i> <a style="padding-left: 50px;cursor: pointer"> Add to cart</a></div>
      </div>
                </div>
                 
                 <div class="col-md-3 ">
                  <div class="panel panel-danger" >
        
        <div class="panel-body"><img src="images/e4.jpg" class="img-responsive" style="width:100%;" alt="Offer 1"></div>
        <div class="panel-footer">Hitachi Speakers<br/>Price: <i class="fa fa-rupee"> 200/-</i> <a style="padding-left: 50px;cursor: pointer"> Add to cart</a></div>
      </div>
                </div>
                  <div class="col-md-3 col-md-offset-1 ">
                  <div class="panel panel-danger" >
        
        <div class="panel-body"><img src="images/e4.jpg" class="img-responsive" style="width:100%;" alt="Offer 1"></div>
        <div class="panel-footer">Hitachi Speakers<br/>Price: <i class="fa fa-rupee"> 800/-</i> <a style="padding-left: 50px;cursor: pointer"> Add to cart</a></div>
      </div>
                </div>
                  <div class="col-md-3 col-md-offset-1 ">
                  <div class="panel panel-danger" >
        
        <div class="panel-body"><img src="images/e4.jpg" class="img-responsive" style="width:100%;" alt="Offer 1"></div>
        <div class="panel-footer">Hitachi Speakers<br/>Price: <i class="fa fa-rupee"> 500/-</i> <a style="padding-left: 50px;cursor: pointer"> Add to cart</a></div>
      </div>
                </div>
                 
           
             </div>
            
            <div class="col-md-3">
                 
      <div class="panel panel-info" >
        <div class="panel-heading" style=";font-family: cursive;font-weight: bold">SWEET SATURDAY DEAL</div>
        <div class="panel-body"><img src="images/e4.jpg" class="img-responsive" style="width:100%;" alt="Offer 1"></div>
        <div class="panel-footer">Get 10% off on purchase of 5000 and more <a style="text-align: right"> Details</a></div>
      </div>
                
                 <div class="panel panel-info">
        <div class="panel-heading" style=";font-family: cursive;font-weight: bold">THRILLING TUESDAY DEAL</div>
        <div class="panel-body"><img src="images/e4.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Get <i class="fa fa-rupee"></i>   300 gift vouchers on purchase of 10,000/- or more<a style="padding-left: 50px"> Details</a></div>
      </div>
    
            </div>
</div>
        
        </div>   
        

    </body>
</html>
