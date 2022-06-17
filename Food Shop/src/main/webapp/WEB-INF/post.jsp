<html>
<head>
<title>Post Order</title>

     <link rel="stylesheet" href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://your-site-or-cdn.com/fontawesome/v6.1.1/js/all.js" data-auto-replace-svg="nest"></script>

  
</head>
<body>

 <div id="header">
      <div>
           <div class="logo">
           <a href="index.jsp">Food Shop</a>
           </div>
           <div id="span">
             <ul id="navigation">
             <li>
             <a href="#">Locations</a>
             </li>
             
              <li>
             <a href="#">Our Chef</a>
             </li>
             
              <li>
             <a href="#">About Us</a>
             </li>
             
              <li>
             <a href="#">Contact Us</a>
             </li>
             
             </ul>
           </div>
           
 </div>
 </div>
 <div class="container col-md-100">
 <h4> Enter Your Delivery Address:</h4>
 <div class="card">
 
 <div class="card-body">
 <form action="thank.jsp" method="post">
 
 <filedset class="form-group">
    <label><i class="fa fa-user"></i>&nbsp&nbspFull Name:</label>
    <input type="text" class="form-control" name="uname" placeholder="Enter your full name" required="required">
    </filedset>
    
    <filedset class="form-group">
    <label><i class="fa fa-phone"></i>&nbsp&nbspMobile Number:</label>
    <input type="number" class="form-control" name="phone" placeholder="Enter your Phone number" required="required">
    </filedset>
    
    <filedset class="form-group">
    <label><i class="fa fa-phone"></i>&nbsp&nbspEnter Email address:</label>
    <input type="email" class="form-control" name="email" placeholder="Enter your email id" required="required">
    </filedset>
    
     
    <filedset class="form-group">
    <label><i class="fa fa-phone"></i>&nbsp&nbsp&nbspSelect your City:</label>
    <select class="form-control" name="city">
          <option value="1" selected>-------Choose City........</option>
          <option value="Banglore">MG Rode</option>
          <option value="Mysore">VV Puram</option>
          <option value="Banglore">RC Road</option>
          <option value="Banglore">K R Puram</option>
       
    </select>
    </filedset>
    
    <filedset class="form-group">
    <label><i class="fa fa-phone"></i>&nbsp&nbspAddress:</label>
    <input type="text" class="form-control" name="address" placeholder="Enter your address" required="required">
    </filedset>
    
    <filedset class="form-group">
    <label><i class="fa fa-phone"></i>&nbsp&nbspPin Code:</label>
    <input type="number" class="form-control" name="pin" placeholder="Enter Pincode" required="required">
    </filedset>
    
    
    <filedset class="form-group">
    <label><input type="checkbox" checked="checked" name="sameaddress">Shipping Address Same As Billing</label>
    </filedset>
    <button type="submit" class="btn btn-success">Continue to Checkout</button>
    
 </form>
 </div>
 
 </div>
 </div>
 <footer>
<div class="jumbotron text-center" style="margin-bottom:0">
<p class=""> Made With Love...</p>
</div>
</footer>
        </body>
        </html>