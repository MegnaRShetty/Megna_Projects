<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal Information</title>
<script type="text/javascript">
	function validate(form) {

		if (form.name.value == "") {
			alert("Enter your name");
			return false;
		}
		if (form.address.value == "") {
			alert("Enter address");
			return false;
		} 		
		if (form.pan.value == "") {
			alert("Enter PAN");
			return false;
		} 
		if (form.dob.value == "") {
			alert("Enter Date of Birth");
			return false;
		} 
		if (form.year.value == "") {
			alert("Enter year");
			return false;
		} 
		if (form.income.value == "") {
			alert("Enter Income");
			return false;
		} 
		if (form.tds.value == "") {
			alert("Enter TDS");
			return false;
		} 
		if (form.tax.value == "") {
			alert("Enter Tax");
			return false;
		} 
			return true;
	}
	
	function isNumberKey(evt)
    {
       var charCode = (evt.which) ? evt.which : event.keyCode
       if (charCode > 31 && (charCode < 48 || charCode > 57))
          return false;

       return true;
    }
	
	
</script>

</head>
<body>

	<h1>Personal Information</h1>

	<s:form action="taxpayer" onsubmit="return validate(this)">
		<s:textfield name="name" id="name" label="Name" />
		<s:textarea name="address" id="address" label="Address" />
		<s:textfield name="pan" id="pan" label="PAN" maxLength="10" />
		<s:textfield name="dob" id="dob" label="DOB" />
		<s:textfield name="year" id="year" label="Year"
			onblur="return checkIsValid()" />
		<s:textfield name="income" id="income" label="Income"
			onkeypress="return isNumberKey(event)" />
		<s:textfield name="tds" id="tds" label="TDS"
			onkeypress="return isNumberKey(event)" />
		<s:textfield name="tax" id="tax" label="Tax deducted"
			onkeypress="return isNumberKey(event)" />
		<s:submit value="Save" align="center" />
		<s:reset value="Cancel" align="center" />
	</s:form>

</body>
</html>

