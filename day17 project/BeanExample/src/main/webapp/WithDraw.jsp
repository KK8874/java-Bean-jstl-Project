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
      <form method="get" action="WithDraw.jsp">
		<center>
			Account No : 
			<input type="number" name="accountNo" /> <br/><br/>
			 WithdrawAmount: 
			<input type="number" name="withdrawAmount" /> <br/><br/> 
			
			<input type="submit" value="WithDraw " />
		</center>
	</form>
	<%
		if (request.getParameter("withdrawAmount")!=null) {
			BankDAO dao = new BankDAO();
	%>
		<jsp:useBean id="beanBank" class="com.infinite.Bankproject.Trans" scope="page" />
		<jsp:setProperty property="*" name="beanBank"/>
	<%=dao.withdrawAccount(beanBank.getAccountNo(),beanBank.getWithdrawAmount()) %>
	<%
		}
	%>
</body>
</html>