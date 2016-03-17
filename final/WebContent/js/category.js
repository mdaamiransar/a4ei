freqObj=null;
function varify(){
    document.getElementById("res").innerHTML="Checking";
    if(window.XMLHttpRequest){
        reqObj=new XMLHttpRequest();
    }else {
        reqObj=new ActiveXObject("Microsoft.XMLHTTP");
    }
    
    reqObj.onreadystatechange=process;
    reqObj.open("POST","Check_Category.jsp?category_name="+document.getElementById("category_name").value,true);
    reqObj.send(null);
}
function process(){
    if(reqObj.readyState==4){
        document.getElementById("res").innerHTML=reqObj.responseText;
    }
}
function show_Date()
{
	
	document.getElementById("CATEGORY_DATE").value=new Date();
	
	
}