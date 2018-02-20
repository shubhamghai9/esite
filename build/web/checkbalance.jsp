<%-- 
    Document   : displaytrucks
    Created on : Mar 11, 2017, 6:15:17 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="head.jsp" %>
        
       
        <script>
            $(document).ready(function() {
          
              var e="pratikshavbajpai@gmail.com"
               $("#d1").load("CheckBalance?emailid="+e);
               
					
          
         });
         
         

        $(document).ready(function(){
               
                $("a[href='viewgoldproduct.jsp']").css('background-color', 'blue');
                
            });
        </script>
    </head>
    <body>
      

        <div class="container">
           
                    
                   
                        <div id="d1" class="text-primary">
                
                        </div>
                  
        </div>
           
       
    </body>
</html>
