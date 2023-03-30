<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="${conPath }/css/style.css" rel="stylesheet">
	<style>
	
	</style>
	<script type="text/javascript" 
    src="https://www.gstatic.com/charts/loader.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
	<script>
		var members =  JSON.parse('${members}');
	
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawChart);

		function drawChart() {
			var data = new google.visualization.DataTable();
		      data.addColumn('string', 'birth');
		      data.addColumn('number', 'weight');
			members.forEach(function(member, i) {
				data.addRows([
					[member.birth, member.weight]
				]);
			});
		  var options = {
				  title: 'Member weight',
			      curveType: 'function',
			      legend: { position: 'bottom' }
		  };

		  var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
	    chart.draw(data, options);
  	}
	</script>
</head>
<body>
	<h1>1st Project(GIT TEST)</h1>
	<table>
		<c:forEach items="${members }" var="member">
			<tr>
				<td>${member.id }</td>
				<td>${member.pw }</td>
				<td>${member.name }</td>
				<td>${member.birth }</td>
				<td>${member.weight }</td>
			</tr>
		</c:forEach>
	</table>
	<div id="curve_chart" style="width: 900px; height: 500px"></div>
</body>
</html>