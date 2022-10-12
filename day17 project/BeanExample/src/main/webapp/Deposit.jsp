<%@page import="com.infinite.Bankproject.BankDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <form method="get" action="Deposit.jsp">
		<center>
			Account No : 
			<input type="number" name="accountNo" /> <br/><br/>
			 DepositAmount: 
			<input type="number" name="depositAmount" /> <br/><br/> 
			
			<input type="submit" value="Deposit " />
		</center>
	</form>
	<%
		if (request.getParameter("depositAmount")!=null) {
			BankDAO dao = new BankDAO();
	%>
		<jsp:useBean id="beanBank" class="com.infinite.Bankproject.Trans" scope="page" />
		<jsp:setProperty property="*" name="beanBank"/>
	<%=dao.depositAccount(beanBank.getAccountNo(),beanBank.getDepositAmount()) %>
	<%
		}
	%>
</body>
</html>