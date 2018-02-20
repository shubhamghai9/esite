<%-- 
    Document   : addproduct
    Created on : Feb 22, 2017, 11:57:37 AM
    Author     : shruti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="head.jsp" %>
        
    <script>
        
         $(document).ready(function(){
      $("#type").click(function(){
         var v= $(this).val();
        
         if(v=='Others')
         {
             $("#txttype").val("");
              $("#t1").css("display","");
         }  
         else
         {
             $("#t1").css("display","none");
         }
             
      });
  });
        
        $(document).ready(function(){
 
        $.get("GetProductid",function(data, status){
       
        $("#txtpcode").val(data);
    });
        
   
});

        $(document).ready(function(){
            $("#txtpic").click(function(event){
                
                $("#img1").removeAttr("src");
                $("#img2").removeAttr("src");
                $("#img3").removeAttr("src");
            });
         });


function call()
        {
            if(parseInt($("#txtpic").get(0).files.length)==0)
            {
                
                return false;
            }
            else
                {
                    return true;
                }
        }

        $(document).ready(function() {
    $('#frmaddproduct').formValidation({
       
        framework: 'bootstrap',
        
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        
        live:'disabled',
        fields: {
            
            txtpname: {
                validators: {
                    notEmpty:{
                         message: 'Value is required'
                    }
                }
            },
            
            txtdesc: {
                validators: {
                    notEmpty:{
                         message: 'Value is required'
                    }
                }
            },
             txttype: {
                validators: {
                    notEmpty:{
                         message: 'Value is required'
                    },
                  callback: {
                        //message: 'type already present',
                        callback: function(value, validator, $field) {
                                              
                         if($("#type option[value='"+value+"']").length > 0) {
                                return {
                                    valid: false,
                                    message: 'Product type already present in the list. Please select from list'
                                }
                            }
                            return true;
                   
                    
                    
                }
            }



                }
                
            },
	   
	     txtprice: {
                validators: {
                    notEmpty: {
                        message: 'Value is required'
                        
                    },
		    digits:{},
		    greaterThan: {
                        value: 1,
                        message: 'The value must be greater than or equal to 1'
                    }
                 }
            },
            
            txtpic: {
                validators: {
                    callback: {
                  
                        callback: function(value, validator, $field) {
                                                
                            
                                return {
                                    valid: call(),
                                    message:'Please select atleast 1 file'
                                }
                            
                           
                   
                    
                    
                }
            }
                 }

            
           
            
        }
        }
          
    });
});
        $(document).ready(function() {
            ${msg}
        });
        
        
        $(document).ready(function(){
            $("#txtpic").change(function(event){
                  
               
                    var tmppath1 = URL.createObjectURL($(this).get(0).files[0]);
                   // var tmppath2 = URL.createObjectURL($(this).get(0).files[1]);
                    //var tmppath3 = URL.createObjectURL($(this).get(0).files[2]);
                    
                    $("#img1").fadeIn("fast").attr('src',tmppath1 )
                    //$("#img2").fadeIn("fast").attr('src',tmppath2 )
                    //$("#img3").fadeIn("fast").attr('src',tmppath3 )
               
                  //alert($(this).val());
            });
        });
       $(document).ready(function(){
               
                $("a[href='addproduct.jsp']").css('background-color', 'blue');
 });
    </script>
    </head>
    <body>
        
       

        <div class="container-fluid">
        <div class="row">
            <div class="col-md-offset-4 col-md-4">
       <div class="panel panel-info">
  <div class="panel-heading" ><i class="fa fa-plus-square"></i>&nbsp Add Product</div>
  <div class="panel-body">
      <form id="frmaddproduct"  action="AddProduct" method="post" enctype="multipart/form-data">
          
          <div class="form-group">
                <label  for="txtpcode">Product Code:</label>
               <input type="text"  class="form-control" id="txtpcode" name="txtpcode" readonly="true" >
          </div>
          
          <div class="form-group">
                <label  for="txtpname">Product Name:</label>
                <input type="text" class="form-control" id="txtpname" name="txtpname">
                    
           </div>
 
          <div class="form-group">
            <label  for="txtdesc">Product Description:</label>
            <textarea class="form-control" rows="3" id="txtdesc" name="txtdesc"></textarea>
                
          </div>
          <div class="form-group">
                <label  for="type">Type:</label>
                
                     <select class="form-control" id="type" name="type">
                         <option value="Fan">Fan</option>
                         <option value="Cables">Cables</option>
                         <option value="Others">Others</option>
                     </select>
                
          </div>
          <div class="form-group" id="t1" style="display:none ">
               <input type="text" class="form-control" id="txttype" name="txttype" placeholder="Please specify type" >
          </div>
                
          <div class="form-group">
                <label  for="txtprice">Price:</label>
                
                     <div class="input-group">
                         <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                        <input type="text" class="form-control" id="txtprice" name="txtprice">
                    
                    </div>
                 
          </div>
          <div class="form-group">
                <label  for="txtpic">Select pic:</label>
                
                       <label class="btn btn-default" style="width:100%;height:35px">
                           Browse <input type="file" style="opacity:0;"  id="txtpic" name="txtpic"></input>
                        </label>
                     <img id="img1" class="zoom" style="width:75px;height: 75px;">
                    
                       
                
          </div>
          <div class="form-group"> 
            <div class="col-md-offset-4 col-md-6">
              <button type="submit" class="btn btn-info btn-block" ><i class="fa fa-plus-circle"></i> Add Product</button>
            </div>
          </div>
          
          
      </form>
  </div>
</div>
            </div>
        </div>
        </div>

<div id="modal-msg" class="modal fade" role="dialog" style="padding-top: 200px">
  <div class="modal-dialog modal-sm">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" >Success</h4>
      </div>
      <div class="modal-body">
        <p>Product added successfully.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
    </body>
    <div id="div1">
        
    </div>
</html>
