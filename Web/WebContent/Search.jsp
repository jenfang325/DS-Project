<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoogleSearch</title>

<style type="text/css">
* {
  vertical-align: top;
  font-famaily: 微軟正黑體;
  position: relative;
  background-color: #E7D7C1;
  
  }

html, body {
  margin: 0;
  padding: 0;
}

.container {
  
  margin-left: auto;
  margin-right: auto;
  display: flex;
  flex-direction: column;
}

.topbar {
  height: 65px;
}
.topbar .topic {
  height: 50px; 
  
  top:15px;
 left: 10px;
}

.topimage {
  height: 200px;
  width: 100%;
}
.topimage .topcat {
  position: relative;
  
  left: 50%;
  transform: translateX(-50%);
  height: 200px;
}

.searchbar {
  margin-left: auto;
  margin-right: auto;
  border-radius: 50px;
  width: 640px;
  background-color: #fff;
  display: inline-block;
  background-color:#BF4342;
}
.searchbar .searchicon {
  height: 50px;
  border-radius: 100%;
  margin-left: 25px;
  margin: 5px 0px 5px 9px;
  background-color:#BF4342; 
}
.searchbar #search_input {
  height: 40px;
  width: 500px;
  padding:1px 5px;
  background-color: #fff;
  margin: 10px 0px;
  border-radius: 5px;
  border: none;
}
.searchbar .gosearchicon {
  height: 50px;
  border-radius: 100%;
  background-color: #fff;
  cursor: pointer;
  margin: 5px 0px 5px 5px;
  transition-duration: 0.3s;
}
.searchbar .gosearchicon:hover {
  background-color: #BF4342;
  border: solid #E7D7C1 1px;
}

.bottom .bottomcat1 {
  height: 245px;
  margin-left: 50px;
  opacity: 0.5;
}
.bottom .bottomcat1:hover {
 animation:swing 0.5s;
 opacity: 1;
}
.bottom .bottomcat2 {
  height: 245px;
  margin-left: 60px;
  opacity: 0.5;
}
.bottom .bottomcat2:hover {
 animation:swing 0.5s;
 opacity: 1;
}
.bottom .bottomcat3 {
  height: 245px;
  margin-left: 60px;
  opacity: 0.5;
}
.bottom .bottomcat3:hover {
 animation:swing 0.5s ;
 opacity: 1;
}
.bottom .bottomcat4 {
  height: 245px;
  margin-left: 60px;
  opacity: 0.5;
}
.bottom .bottomcat4:hover {
 animation:swing 0.5s;
 opacity: 1;
}
@keyframes swing {
  0% {
    transform: translateX(7px);
  }
  25% {
    transform: translateX(-7px);
  }
  50% {
    transform: translateX(4px);
  }
  75% {
    transform: translateX(-4px);
  }
  100% {
    transform: translateX(0px);
  }
}
</style>


</head>
<body >
<form action='${requestUri}' method='get'>


<div class="container">
  <div class="topbar"><a href ='http://localhost:8080/Web/Search.jsp?'><img class="topic" src="images/Cat_search_engine1.png"/></a></div>
  <div class="topimage"><img class="topcat" src="images/貓咪電腦1.png"/></div>
  <div class="searchbar"><img class="searchicon" src="images/Search_icon.png"/>
    <input type='text' id="search_input" name='keyword' placeholder="請輸入關鍵字..."/><input type='image' class="gosearchicon" src="images/可愛貓掌.png"/>
  </div>
  <div class="bottom">
  <img class="bottomcat1" src="images/貓咪呼拉圈11.png"/>
  <img class="bottomcat2" src="images/貓咪呼拉圈22.png"/>
  <img class="bottomcat3" src="images/貓咪呼拉圈333.png"/>
  <img class="bottomcat4" src="images/貓咪呼拉圈444.png"/></div>
</div>


</form>
</body>
</html>