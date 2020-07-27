<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="${pageContext.request. contextPath}/myresources/boxicons-2.0.3/css/boxicons.min.css">
    <link rel="stylesheet" href="${pageContext.request. contextPath}/myresources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request. contextPath}/myresources/css/style.css">
    <title>MacFood.com</title>
  </head>
  <body class="light-color">

    <main class="container mt-5 p-5">
      <h2>Add <i class="bx bxs-plus-circle primary-color"></i></h2>
			      <form class="" action="${pageContext.request. contextPath}/addproduct" method="post" enctype="multipart/form-data">
			        <div class="form-group">
			          <label class="add_label">Name</label>
			          <input type="text" name="name" class="add_input form-control input_bg border-0">
			        </div>
			        <div class="form-group">
			          <label class="add_label">Price</label>
			          <input type="number" name="price" class="add_input form-control input_bg border-0">
			        </div>
			        <div class="form-group">
			          <label class="add_label">Quantity</label>
			          <input type="number" name="quantity" class="add_input form-control input_bg border-0">
			        </div>
			        <div class="form-group">
			          <label class="add_label">Image</label>
			          <input id="img" type="file" name="mypicture" class="add_input form-control input_bg border-0">
			          <div class="img_holder light-color d-flex flex-column align-items-center justify-content-center p-3">
			            <img id="get" width="20%">
			            <i id="add_delete" class="bx bx-trash mt-3"></i>
			          </div>
			        </div>
			
			        <div class="form-group">
			          <button class="add_btn btn green_bg green_txt" type="submit">Add Inventory</button>
			          <button class="add_btn btn orange_bg orange_txt">Reset</button>
			        </div>
			      </form>
    </main>
    <!-- Optional JavaScript -->
    <script>
        const imgo = document.querySelector("#img");
        const delbtn = document.querySelector("#add_delete");
        delbtn.addEventListener("click", function(){
          document.querySelector("#get").removeAttribute("src");
          imgo.value="";
          this.classList.remove("visible")
        })
        
        imgo.addEventListener("change", function(){
          var reader = new FileReader();

          reader.onload = function(e){
            document.querySelector("#get").setAttribute("src", e.target.result);
          }

          delbtn.classList.add("visible")
          reader.readAsDataURL(this.files[0])
        })
        
    </script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${pageContext.request. contextPath}/myresources/js/jquery-slim.min.js"></script>
    <script src="${pageContext.request. contextPath}/myresources/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request. contextPath}/myresources/js/bootstrap.min.js"></script>
  </body>
</html>
