<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>


<%
	/* http://localhost:8088/phonebook1/insert.jsp?name=김경아&hp=010-1111-1111&company=02-2222-2222 */
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(name,hp,company);
	
	PhoneDao phoneDao = new PhoneDao();
	
	/* 저장 */
	phoneDao.personInsert(personVo);
	
	/* 리스트 */
	//List<PersonVo> personList = phoneDao.getPersonList();
	
	/*리다이렉트*/
	response.sendRedirect("./list.jsp");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <%--
	 <%for(int i = 0; i<personList.size(); i++) {%>
	 <table border = "1">
	 <tr>
		 <td>이름(name)</td>
		 <td><%=personList.get(i).getName() %></td>
	 </tr>
	 <tr>
		 <td>핸드폰(hp)</td>
		 <td><%=personList.get(i).getHp() %></td>
	 </tr>
	 <tr>
		 <td>회사(company)</td>
		 <td><%=personList.get(i).getCompany() %></td>
	 </tr>
	 </table>
	 리다이렉트가 되면 필요없으므로 날려버린다.--%>
</body>
</html>