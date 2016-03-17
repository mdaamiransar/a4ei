function f()
{
	if("${param.msg}")
		alert("${param.msg}");
}
function product_show(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("product").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("product").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Product_list.jsp?category_id="+str, true);
	  xhttp.send();
}

function show_brand(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("brand_cat").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("brand_cat").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Brand_details.jsp?category_id="+str, true);
	  xhttp.send();
}



function show_productdetails(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("product").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("product").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Categorywise_product_show.jsp?category_id="+str, true);
	  xhttp.send();
}



function change_image(product_id,image_id,cnt)
{
	var xhttp; 
	var url="Image_ajax1.jsp?product_id="+product_id+"&image_id="+image_id;
	 
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("image"+cnt).innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET",url, true);
	  xhttp.send();
}
