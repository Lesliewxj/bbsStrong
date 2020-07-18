<%@ page language="java"  pageEncoding="UTF-8"%>

<jsp:directive.page import="cn.jsprun.utils.BeanFactory"/>
<jsp:directive.page import="cn.jsprun.utils.Cache"/>
<%@page import="java.util.Map"%>
<%@page import="cn.jsprun.dao.CronsDao"%>
<%@page import="java.sql.Connection"%>
<%! 
	private String tablepre = "jrun_"; 
	private CronsDao cronsDao = ((CronsDao)BeanFactory.getBean("cronsSetDao"));
%>
<%
	int timestamp=(Integer)request.getAttribute("timestamp");
	Connection connection = (Connection)request.getAttribute("connection");
	Cache.updateCache("index");
	cronsDao.execute(connection,"DELETE FROM "+tablepre+"tags WHERE total=0");

	RequestDispatcher dispatcher = request.getRequestDispatcher("/include/crons/setNextrun.jsp");
	try {
		dispatcher.include(request, response);
	} catch (Exception e) {
		e.printStackTrace();
	} 
	Map<String,String> crons = (Map<String,String>)request.getAttribute("crons");
	if("0".equals(crons.get("available"))){
		cronsDao.execute(connection,"UPDATE "+tablepre+"crons SET available='0' WHERE cronid="+crons.get("cronid"));
	}else{
		cronsDao.execute(connection,"UPDATE "+tablepre+"crons SET lastrun='"+timestamp+"',nextrun='"+crons.get("nextrun")+"' WHERE cronid="+crons.get("cronid"));
	}
%>

