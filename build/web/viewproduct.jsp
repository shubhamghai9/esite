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
          
              
               $("#products_table").load("ViewProducts");
               
					
          
         });
         
         $(document).ready(function(){
  $("#txtsearch").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("tbody tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

        $(document).ready(function(){
               
                $("a[href='viewgoldproduct.jsp']").css('background-color', 'blue');
                
            });
        </script>
    </head>
    <body>
      

        <div class="container">
            <div class="row">
                <div class="col-md-offset-2 col-md-8">
                    <div class="input-group"  >
    
          <input type="text" class="form-control" placeholder="Search" id="txtsearch" >
          <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                     </div>
                    <br></br>
                    <table  class='table table-striped'><thead><tr><th>Product Code</th><th>Name</th><th>Description</th><th>Type</th><th>Price</th><th>Picture</th><th>Delete Product</th></tr></thead>
                        <tbody id='products_table'>
                            
                        </tbody>
                    </table>
                    
                   
                        
                  
        </div>
            </div>
        </div>
       
    </body>
</html>
