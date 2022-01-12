<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoogleSearch</title>
<style type="text/css">
*{
 vertical-align: top;
  font-famaily: 微軟正黑體;
  position: relative;
 
  background-color: #E7D7C1;
}
html,body{
  margin:0;
  padding: 0;
  background-color: #E7D7C1;
  
}
a {
 color: #0B173B;
 font-size: 20px;
 text-decoration: none;
}
a:hover{
 text-decoration:underline;
 color:#522b29;
}
br {
 color: #7F7979;
}
.topcat2{
position: absolute;
  
 height: 50px; 
 top:15px;
 left: 10px;
}

.searchbar {
  position: absolute;
  left: 175px;
  top: 20px;
  border-radius: 50px;
  width: 450px;
  background-color: #fff;
  display: inline-block;
  background-color:#BF4342;
}
.searchbar .searchicon {
 position: relative;
  height: 30px;
  border-radius: 100%;
  margin-left: 25px;
  margin: 5px -3px 0px 10px;
  background-color:#BF4342; 
}
.searchbar #search_input {
 position: relative;
  height: 20px;
  width: 350px;
  padding:1px 5px;
  background-color: #fff;
  margin: 10px 8px;
  border-radius: 5px;
  border: none;
}
.searchbar .gosearchicon {
position: relative;
  height: 30px;
  border-radius: 100%;
  background-color: #fff;
  cursor: pointer;
  margin: 5px 0px 0px -4px;
  transition-duration: 0.3s;
}
.searchbar .gosearchicon:hover {
  background-color: #BF4342;
  border: solid #E7D7C1 1px;
}
.beecat{
  position:absolute;
  left: 800px;
  top:350px;
   height: 200px;
   animation: move 2s infinite linear;
   transition-duration: 1s;
}
.honeycat{
 position:absolute;
 left: 950px;
  top:350px;
  height: 200px;
  animation: move 2s infinite linear;
  transition-duration: 1s;
}
.buttercat{
 position:absolute;
 left: 1050px;
  top:350px;
  height: 200px;
  animation: move 2s infinite linear;
  transition-duration: 1s;
}
@keyframes move {
  0% {
    transform: translateX(0px);
  }
  25% {
    transform: translateX(-10px);
  }
  50% {
    transform: translateX(-20px);
  }
  75% {
    transform: translateX(-10px);
  }
  100% {
    transform: translateX(0px);
  }
}

</style>
</head>
<body>

<form action='${requestUri}' method='get'>

 <div style='position: absolute;margin-top:100px;margin-left:50px'>
  
<%  String[][] orderList = (String[][]) request.getAttribute("query");
  for (int i = 0; i < orderList.length; i++) {
   String s=orderList[i][1];%>
   <a href='<%=s%>'><%=orderList[i][0]%> <%s=s.substring(7);%> </a> 
  <br>————————————————————ฅ^•ﻌ•^ฅ————————————————————<br>
  <%
}
%>
 </div>
 <div>
  <input type='image' class="topcat2" src="images/Cat_search_engine1.png"/><a href ='http://localhost:8080/Web/Search.jsp?'></a>
 </div>
  <div class="searchbar"><img class="searchicon" src="images/Search_icon.png"/>
    <input type='text' id="search_input" name='keyword' placeholder="請輸入關鍵字..." value='<%=request.getParameter("keyword")%>'/><img class="gosearchicon" src="images/可愛貓掌.png"/>
  </div>
  <img class="beecat" src="images/蜜蜂貓咪貓.png"/>
  <img class="honeycat" src="images/蜂蜜貓咪貓.png"/>
  <img class="buttercat" src="images/蝴蝶貓咪貓.png"/>
</form>
</body>
</html>