<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>

<script>
function sortTable() {
  var table, rows, switching, i, x, y, shouldSwitch;
  table = document.getElementById("details");
  switching = true;
  while (switching) {
    switching = false;
    rows = table.getElementsByTagName("tr");
    
    for (i = 1; i < (rows.length - 1); i++) {
     
      shouldSwitch = false;
     
      x = rows[i].getElementsByTagName("td")[0];
      y = rows[i + 1].getElementsByTagName("td")[0];
      
      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
       
        shouldSwitch= true;
        break;
      }
    }
    if (shouldSwitch) {
      
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
}

function sortTable1() {
	  var table, rows, switching, i, x, y, shouldSwitch;
	  table = document.getElementById("details");
	  switching = true;
	  while (switching) {
	    switching = false;
	    rows = table.getElementsByTagName("tr");
	    for (i = 1; i < (rows.length - 1); i++) {
	      shouldSwitch = false;
	      x = rows[i].getElementsByTagName("td")[1];
	      y = rows[i + 1].getElementsByTagName("td")[1];
	      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
	        shouldSwitch= true;
	        break;
	      }
	    }
	    if (shouldSwitch) {
	      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
	      switching = true;
	    }
	  }
	}

</script>

<style>
table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th {
	height: 50px;
}
.round2 {
    border: 1px solid black;
    border-radius: 8px;
}
#details {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    bordew-radius : 5px;
    width: 100%;
}

#details td, #details th {
    border: 1px solid #ddd;
    padding: 8px;
}

#details tr:nth-child(even){background-color: #f2f2f2;}

#details tr:hover {background-color: #ddd;}

#details th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}

input[type=button] {
	background-color: #e7e7e7;
	color: black;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
input[type=button]:hover {
    background-color: #ddd;
}

</style>
</head>
<body style="text-align: center;">
<div class="round2">
<h3>
REGISTERED DETAILS
</h3>
</div>
<hr>
<div>
			<table id="details">
				<thead>
					<tr style="background-color: #E0E0E1;">
						<th> NAME <a href="#" id="sortimg" onclick = "sortTable()"> <img src="img/sort.png" alt="sort" width="20" height="20"></a> </th>
						<th>EMAIL  <a href="#" id="sortimg" onclick = "sortTable1()"> <img src="img/sort.png" alt="sort" width="20" height="20"></a></th>
						<th>PHONE</th>
						<th>ORGANISATION</th>
						<th>CITY</th>
					</tr>
				</thead>
				<s:iterator value="dataList">
					<tr>
						<td><s:property value="name" /></td>
						<td><s:property value="mail_Id" /></td>
						<td><s:property value="phone" /></td>
						<td><s:property value="organisation" /></td>
						<td><s:property value="city" /></td>
					</tr>
				</s:iterator>
			</table>
</div>
<br>
<input type="button" onclick="location.href = 'index.jsp';" id="myButton" class="float-left submit-button" value="Home">
</body>
</html>