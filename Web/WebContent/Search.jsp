<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoogleSearch</title>

<style type="text/css">
.button{
	position:absolute;
	width:45px;
	height:25px;
	font-size:15px;
	left:50%;
	top:50%;
}
.border-style {
	border-radius:75px/90px;
}
#padding{
	padding: 0px 0px 0px 15px;
}

.transition{
   position:absolute;
   width:50px;
   height:50px;
   transition:0.5s;
   animation-name:transition;
   opacity:0.3;
}
.transition:hover{
   opacity:1;
}
.transition:hover{
   animation:swing 1s 1;
}
@keyframes swing{
   15%{
   transform: translateX(7px)
   }
   40%{
   transform: translateX(-7px)
   }
   65%{
   transform: translateX(4px)
   }
   85%{
   transform: translateX-4px)
   }
   100%{
   transform: translateX(0px)
   }
   

}

.note{
	position:absolute;
	width:50px;
	height:50px;
	animation-timing-function: ease-in-out;
	animation-direction: alternate;
	animation-name:note;
	animation-duration:15s;
	animation-iteration-count:infinite;
}
@keyframes note{
	0%{
		left:0px;		
		top:-150px;
	}
	100%{
		left:1050px;
		top:-150px;
	}
}

.note2{
	position:absolute;
	width:50px;
	height:50px;
	animation-direction: alternate;
	animation-timing-function: ease-in-out;
	animation-name:note2;
	animation-duration:15s;
	animation-iteration-count:infinite;
}
@keyframes note2{
	0%{
		left:25px;		
		top:-150px;
	}
	100%{
		left:10px;
		top:-150px;
	}
}


.box{
  position:relative;
}
.box:before{
  content:'';
  position:absolute;
  z-index:2;
  top:60px;
  left:50px;
  width:50px;
  height:50px;
  
  border-radius:2px;
  transform: rotate(45deg);
  -webkit-animation:box 1.25s infinite ; 
}
@-webkit-keyframes box{
  0%{
    top:50px;
  }
  20%{
    border-radius:2px;  
  }
  50%{
    top:80px; 
    border-bottom-right-radius:25px;
  }
  80%{
    border-radius:2px; 
  }
  100%{
    top:50px;
  }
}
.box:after{
  content:'';
  position:absolute;
  z-index:1;
  top:128px;
  left:52px;
  width:44px;
  height:3px;
  background:#eaeaea;
  border-radius:100%;
  -webkit-animation:shadow 1.25s infinite ; 
}
@-webkit-keyframes shadow{
  0%,100%{
    left:54px;
    width:40px;
    background:#eaeaea;
  }
  50%{
    top:126px;
    left:50px;   
    width:50px;
    height:7px;
    background:#eee;
  }
}
</style>


<script type="text/javascript">
function click10() {
	document.getElementsByName("searchNum")[0].value = 10;
	document.getElementsByName("searchNum")[0].style.color = '#0489B1';
}
function click20() {
	document.getElementsByName("searchNum")[0].value = 20;
	document.getElementsByName("searchNum")[0].style.color = '#0489B1';
}
function click40() {
	document.getElementsByName("searchNum")[0].value = 40;
	document.getElementsByName("searchNum")[0].style.color = '#0489B1';
}
function click80() {
	document.getElementsByName("searchNum")[0].value = 80;
	document.getElementsByName("searchNum")[0].style.color = '#0489B1';
}


</script>


</head>
<body style='background-color:#ffffe8'>
<form action='${requestUri}' method='get'>



<div class = 'box'style = 'position:absolute;margin-top:530px;margin-left:635px;'></div>


<div class='transition'>
<img src="images/貓咪呼拉圈11.png" style = 'position:absolute;width:200px;height:200px;margin-top:350px;margin-left:0px' >
</div>
<div class='transition'>
<img src="images/貓咪呼拉圈33.png" style = 'position:absolute;width:200px;height:200px;margin-top:350px;margin-left:350px' >
</div>
<div class='transition'>
<img src="images/貓咪呼拉圈22.png" style = 'position:absolute;width:200px;height:200px;margin-top:350px;margin-left:700px' >
</div>
<div class='transition'>
<img src="images/貓咪呼拉圈44.png" style = 'position:absolute;width:200px;height:200px;margin-top:350px;margin-left:1050px' >
</div>
 




<div>
<input type='text' class="border-style" id="padding"  
style='font-size:120%;position:absolute;left:50%;top:48%;
margin-top:10px;margin-left:-400px;width:800px;height:45px' name='keyword' placeholder='Please input keyword'
onfocus="placeholder= '' " onblur="placeholder='Please input keyword'" />
</div>


<div>
<input type='image' src="images/貓掌.png" 
style='position:absolute;width:32px;height:32px;left:50%;top:49%;margin-top:10px;
margin-left:368px '/>
</div>
<div>
<a href ='http://localhost:8080/Final_Project/TestProject'><img src="images/貓咪電腦1.png" style='position:relative;width:420px;height:300px;left:48%;top:50%;margin-top:10px;
margin-left:-175px '></a>
</div>



</form>
</body>
</html>