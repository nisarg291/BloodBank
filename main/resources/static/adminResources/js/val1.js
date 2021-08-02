$(function(){
	$("#areaName_error_msg").hide();
	$("#pinCode_error_msg").hide();
	var error_areaName=false;
	var error_pinCode=false;

$("#areaName").focusout(function(){
	check_areaName();
});
$("#pinCode").focusout(function(){
	check_pinCode();
	
});

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
	var pinCode_length=$("#pinCode").val().length;
	var pinCode_value=$("pincode").val();
	var isNum=/^\d+$/.test(pinCode_value);
	 if(pinCode_length==0)
	{
		$("#pinCode_error_msg").html("pincode should not empty");
		$("#pinCode_error_msg").show();
		error_pinCode=true;
	}
	 else if(pinCode_length!=6)
	{
		$("#pinCode_error_msg").html("pincode is only have 6 digits");
		$("#pinCode_error_msg").show();
		error_pinCode=true;
	}
	
	else{
		$("#pinCode_error_msg").hide();
		error_pinCode=false;
	}
}

$("#signupForm1").submit(function(){
	error_areaName=false;
	error_pinCode=false;
	check_areaName();
	check_pinCode();
	if(error_areaName==false && error_pinCode==false)
	{
		return true;
	}
	else{
		return false;
	}
});
});