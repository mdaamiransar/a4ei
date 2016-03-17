$(document).ready(function () {
    var counter = 1;

    $("#addrow").on("click", function () {
        counter++;

        var newRow = $("<tr>");
        var cols = "";
        cols += '<td><input type="text" placeholder="color" id="col" name="color' + counter + '"/></td> ';
        /* cols+='<td>&nbsp;</td>'; */
        cols += '<td><input type="text" placeholder="quantity" id="qq" name="quantity' + counter + '"/></td>';
        cols += '<td><a href="#" class="remove_field">Remove</a></div>';
        
        newRow.append(cols);
        $("table.order-list").append(newRow);
    });
    $("table.order-list").on("change", 'input[name^="quantity"]', function (event) {
        calculateRow($(this).closest("tr"));
        calculateGrandTotal();
    });
    
    $("table.order-list").on("click", "a.remove_field", function (event) {
        $(this).closest("tr").remove();
        calculateGrandTotal();
    });
});
    
function calculateRow(row) {
    var price = +row.find('input[name^="quantity"]').val();
    
}
function calculateGrandTotal() {
    var grandTotal = 0;
    $("table.order-list").find('input[name^="quantity"]').each(function () {
        grandTotal += +$(this).val();
    });
    $("#grandtotal").text(grandTotal);
}


function f()
{
	if("${param.error}")
		alert("${param.error}");
}

function show_Subcategory(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("sub_cat").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("sub_cat").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "SubCategory_list.jsp?q="+str, true);
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
	  xhttp.open("GET", "Brandlist.jsp?q="+str, true);
	  xhttp.send();
}
function product_show(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("product_cat").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("product_cat").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Product_list1.jsp?q="+str, true);
	  xhttp.send();
}
function show_color(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("color_cat").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("color_cat").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Colorlist.jsp?q="+str, true);
	  xhttp.send();
}

tday=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
tmonth=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

function GetClock(){
var d=new Date();
var nday=d.getDay(),nmonth=d.getMonth(),ndate=d.getDate(),nyear=d.getYear();
if(nyear<1000) nyear+=1900;
var nhour=d.getHours(),nmin=d.getMinutes(),nsec=d.getSeconds(),ap;

if(nhour==0){ap=" AM";nhour=12;}
else if(nhour<12){ap=" AM";}
else if(nhour==12){ap=" PM";}
else if(nhour>12){ap=" PM";nhour-=12;}

if(nmin<=9) nmin="0"+nmin;
if(nsec<=9) nsec="0"+nsec;

document.getElementById('clockbox').innerHTML=""+tday[nday]+", "+tmonth[nmonth]+" "+ndate+", "+nyear+" "+nhour+":"+nmin+":"+nsec+ap+"";
}

window.onload=function(){
GetClock();
setInterval(GetClock,1000);
}
