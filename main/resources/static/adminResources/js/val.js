$(function(){
	$("#cityName_error_msg").hide();
	$("#cityDescription_error_msg").hide();
	$("#areaName_error_msg").hide();
	$("#pinCode_error_msg").hide();
	var error_cityName=false;
	var error_cityDescription=false;
	var error_areaName=false;
	var error_pinCode=false;

$("#cityName").focusout(function(){
	check_cityName();
});
$("#cityDescription").focusout(function(){
	check_cityDescription();
	
});
$("#areaName").focusout(function(){
	check_areaName();
});
$("#pinCode").focusout(function(){
	check_pinCode();
	
});
function check_cityName(){
	
	var id=$("#cityName");
	//id.val(id.val().replace(/[^a-z]/g,''));
	var cityName_length=$("#cityName").val().length;
	
	if(cityName_length==0)
	{
		$("#cityName_error_msg").html("city name should not empty");
		$("#cityName_error_msg").show();
		error_cityName=true;
	}
	else if(cityName_length<3 || cityName_length>20)
	{
		$("#cityName_error_msg").html("city name is between 3-20 chars");
		$("#cityName_error_msg").show();
		error_cityName=true;
	}
	else{
		$("#cityName_error_msg").hide();
		error_cityName=false;
	}
	
}
function check_areaName(){
	
	var id=$("#areaName");
	//id.val(id.val().replace(/[^a-z]/g,''));
	var areaName_length=$("#areaName").val().length;
	
	if(areaName_length==0)
	{
		$("#areaName_error_msg").html("area name should not empty");
		$("#areaName_error_msg").show();
		error_areaName=true;
	}
	else if(areaName_length<3 || areaName_length>20)
	{
		$("#areaName_error_msg").html("area name is between 3-20 chars");
		$("#areaName_error_msg").show();
		error_areaName=true;
	}
	else{
		$("#areaName_error_msg").hide();
		error_areaName=false;
	}
	
}
function check_pinCode(){
	var pinCode_length=$("#pincode").val().length;
	
	 if(pinCode_length==0)
	{
		$("#pinCode_error_msg").html("pincode should not empty");
		$("#pinCode_error_msg").show();
		error_pinCode=true;
	}
	 else if(pinCode_length!=6)
	{
		$("#pinCode_error_msg").html("pincode is 6 digit");
		$("#pinCode_error_msg").show();
		error_pinCode=true;
	}
	
	else{
		$("#pinCode_error_msg").hide();
		error_pinCode=false;
	}
}

function check_cityDescription(){
	var cityDescription_length=$("#cityDescription").val().length;
	
	 if(cityDescription_length==0)
	{
		$("#cityDescription_error_msg").html("city Description should not empty");
		$("#cityDescription_error_msg").show();
		error_cityDescription=true;
	}
	 else if(cityDescription_length<5 || cityDescription_length>100)
	{
		$("#cityDescription_error_msg").html("city Description is between 5-100 characters");
		$("#cityDescription_error_msg").show();
		error_cityDescription=true;
	}
	
	else{
		$("#cityDescription_error_msg").hide();
		error_cityDescription=false;
	}
}
$("#signupForm").submit(function(){
	error_cityName=false;
	error_cityDescription=false;
	check_cityName();
	check_cityDescription();
	if(error_cityName==false && error_cityDescription==false)
	{
		return true;
	}
	else{
		return false;
	}
});
$("#signupForm1").submit(function(){
	error_areaName=false;
	error_pinCode=false;
	check_areaName();
	check_pinCode();
	if(error_areaName==false && error_pincode==false)
	{
		return true;
	}
	else{
		return false;
	}
});
});