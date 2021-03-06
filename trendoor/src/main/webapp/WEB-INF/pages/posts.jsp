<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html id="everything">
    <style>
    	
    	.btn {
		  background: #666666;
		  background-image: -webkit-linear-gradient(top, #888888, #666666);
		  background-image: -moz-linear-gradient(top, #888888, #666666);
		  background-image: -ms-linear-gradient(top, #888888, #666666);
		  background-image: -o-linear-gradient(top, #888888, #666666);
		  background-image: linear-gradient(to bottom, #888888, #666666);
		  -webkit-border-radius: 6 6 6 6;
		  -moz-border-radius: 6 6 6 6;
		  border-radius: 6px 6px 6px 6px;
		  font-family: Georgia;
		  color: #ffffff;
		  font-size: 12px;
		  padding-right: 10px;
		  padding-left: 10px;
		  padding-bottom:2px;
		  padding-top:2px;
		  text-decoration: none;
		  border: none;
		  cursor: pointer;
		  
		}
		
		.btn:hover {
		  background: #BBBBBB;
		  background-image: -webkit-linear-gradient(top, #BBBBBB, #888888);
		  background-image: -moz-linear-gradient(top, #BBBBBB, #888888);
		  background-image: -ms-linear-gradient(top, #BBBBBB, #888888);
		  background-image: -o-linear-gradient(top, #BBBBBB, #888888);
		  background-image: linear-gradient(to bottom, #BBBBBB, #888888);
		  text-decoration: none;
		}
		
		.postBox{
		   background: white;
		  -webkit-border-radius: 4;
		  -moz-border-radius: 4;
		  border-radius: 4px;
		  font-family: Georgia;
		  color: #000000;
		  font-size: 19px;
		  
		  font-family: Georgia;
		  font-size: 14px;
		  width: 300px;
		  margin: 15px;
		  /*border: 1px solid black;
		  box-shadow: 5px 5px 5px #888888;
		  /* 5px 5px 5px;*/
		  /*align: left;*/
		  float: left;
		  min-height: 30px;
		  margin-top: 5px;
		  margin-bottom: 5px;
		  padding-top: 5px;
		}
		
		.postImage{
		  -webkit-border-radius: 4 4 4 4;
		  -moz-border-radius: 4 4 4 4;
		  border-radius: 4px 4px 4px 4px;
		  z-index: -1;
		}
		
		#subjectField{
			font-size:16px; 
			font-weight:bold; 
			height: 30px;
			width: 200px;
			-webkit-border-radius: 3 3 3 3;
		  	-moz-border-radius: 3 3 3 3;
		  	border-radius: 3px 3px 3px 3px;
		  	border: 0px;
		  	padding-left: 8px;
		}
		
		html { 
		 	background-color: #ffffff;
		  	background-image: -webkit-linear-gradient(top, #C8DDFA, #C8DDFA);
		  	background-image: -moz-linear-gradient(top, #C8DDFA, #C8DDFA);
		  	background-image: -ms-linear-gradient(top, #C8DDFA, #C8DDFA);
		  	background-image: -o-linear-gradient(top, #C8DDFA, #C8DDFA);
		  	background-image: linear-gradient(to bottom, #C8DDFA, #C8DDFA);
		}
		
		@font-face {
		  	font-family: theLeagueOf;
		  	src: url("${pageContext.request.contextPath}/assets/fonts/theleagueof-league-gothic-64c3ede/webfonts/leaguegothic-regular-webfont.woff");
		}

		body.wait *, body.wait{
		  	cursor: progress !important;
		}

		.handCursor{
			cursor: pointer;
		} 
		
		.logoTopBar{
			font-family:theLeagueOf; 
			font-size: 30px; 
			color: white;
			cursor:pointer;
			
		}
		.logoBar{
			padding-top:10px;
			padding-bottom:2px;
			padding-left:10px;
			padding-right:10px;
			position: fixed; 
		  	top:-1px; 
		  	z-index: 1001;
			-webkit-border-radius: 4 4 4 4;
		  	-moz-border-radius: 4 4 4 4;
		  	border-radius: 0px 0px 4px 4px;
		  	background-color: black;
		  	background-image: -webkit-linear-gradient(top, #677091, #37426E);
		  	background-image: -moz-linear-gradient(top, #677091, #37426E);
		  	background-image: -ms-linear-gradient(top, #677091, #37426E);
		  	background-image: -o-linear-gradient(top, #677091, #37426E);
		  	background-image: linear-gradient(to bottom, #677091, #37426E);
		  	cursor:pointer;
		}

		img.expand { 
			width: 18em; 
		}
		
		.menuBottom{
			padding: 5px;
			position: fixed;
			bottom:0;
			left:0;
			z-index:1000;
			border: 1px solid;
			background-color: white;
			
			font-family: 'Montserrat', sans-serif;
		    color: #000000;
		    font-size: 12px;
			
		}
		
		#subjectFieldMobile{
			font-size:16px; 
			font-weight:bold; 
			height: 35px;
			-webkit-border-radius: 3 3 3 3;
		  	-moz-border-radius: 3 3 3 3;
		  	border-radius: 3px 3px 3px 3px;
		  	border: 0px;
		  	padding-left: 8px;
		}
		
		.topBar{
			font-size:16px; 
			font-weight:bold; 
			-webkit-border-radius: 4 4 4 4;
		  	-moz-border-radius: 4 4 4 4;
		  	border-radius: 0px 0px 4px 4px;
		  	background-color: black;
		  	position: fixed; 
		  	top:0px; 
		  	left: 1px;
		  	z-index: 1000;
		  	width:99%;
		  	padding-left: 10px;
		  	
		  	background-image: -webkit-linear-gradient(top, #37426E, #37426E);
		  	background-image: -moz-linear-gradient(top, #37426E, #37426E);
		  	background-image: -ms-linear-gradient(top, #37426E, #37426E);
		  	background-image: -o-linear-gradient(top, #37426E, #37426E);
		  	background-image: linear-gradient(to bottom, #37426E, #37426E);
		  	
		  	
		}
    	
    	.menuRight{
		  	position: fixed; 
		  	top:50px; 
		  	right: 10px;
		  	z-index: 1000;
		  	color: black;
		  	width: 170px;
		  	background-image: -webkit-linear-gradient(top, #EEEEEE, #DDDDDD);
		  	background-image: -moz-linear-gradient(top, #EEEEEE, #DDDDDD);
		  	background-image: -ms-linear-gradient(top, #EEEEEE, #DDDDDD);
		  	background-image: -o-linear-gradient(top, #EEEEEE, #DDDDDD);
		  	background-image: linear-gradient(to bottom, #EEEEEE, #DDDDDD);
		  	
		  	/*border: 1px solid black;*/
		  	
		  	-webkit-border-radius: 4 4 4 4;
		  	-moz-border-radius: 4 4 4 4;
		  	border-radius: 4px 4px 4px 4px;
		  	padding: 10px;
		  	padding-right: 10px;
		  	
		  	font-family: 'Montserrat', sans-serif;
		    color: #000000;
		    font-size: 12px;
		  	
		  	display: none;
		  	
		}
		
		.triangle {
		    width: 0;
		    height: 0;
		    border: solid 23px;
		    border-color: transparent transparent #EEEEEE transparent;
		    
		    top:15px; 
		  	right: 12px;
		  	z-index: 1010;
		  	position: fixed;
		  	
		  	display: none;
		}
		
		.menuButtonRight{
			position: fixed; 
		  	top:0px; 
		  	right: 5px;
		  	z-index: 2005;
		  	padding-right: 10px;
		  	padding-top: 3px;
		  	cursor:pointer;
		  	
		}
		
		#instaSwitch{
			cursor: pointer;
			background-color: #EEEEEE;
		}
		
		#twitterSwitch{
			cursor: pointer;
			background-color: #EEEEEE;
		}
    
    	.linked{
	    	color: blue;
	    	cursor: pointer;
    	}
    	
    	.linkedUnderlined{
    		color: gray;
    		cursor: pointer;
    	}
    	
    	.boldFont{
    		font-weight: bold;
    	}
    	
    </style>
    
	
	<body id="mainContent">
	<div>
		<script src="${pageContext.request.contextPath}/assets/js/masonry.pkgd.min.js"></script>
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.loader.js"></script>
		<div class="logoBar" align="center">
			<label class="logoTopBar" onclick="goToHomePage()">t r e n d o o r</label>
		</div>
		
		<div class="topBar" align="left">
			<table>
				<tr>
					<td><label class="logoTopBar">#</label></td>
					<td><td align="left"><input id="subjectField" onkeypress=" return checkKey(event)" value="${subject}" size="30" type="text" tabindex="0" autocomplete="off" maxlength="240" /></td>
				</tr>
			</table>
		</div>
		
		<div class="menuButtonRight" title="Menu">
			<img class="postImage" width="40px" height="35px" onClick="toggleMenu()" src="${pageContext.request.contextPath}/assets/images/menu.png">
		</div>	
		
		<div class="triangle" ></div>
		<div id="menu" class="menuRight" align="center">
			<table width="100%"><tr><td align="left" style="border-bottom: 1px solid black;"><label>Feed from: </label></td></tr></table>
			<table style="margin-bottom: 15px; ">
				<tr>
					<td align="right">twitter: </td><td align="left"></td>
					<td><img id="twitterSwitch" width="60px" height="20px" onClick="toggleSwitches('TW')" src="${pageContext.request.contextPath}/assets/images/on.png"></td>
				</tr>
				<tr><td></tr>
				<tr>
					<td align="right">instagram: </td><td align="left"></td>
					<td><img id="instaSwitch" width="60px" height="20px" onClick="toggleSwitches('IN')" src="${pageContext.request.contextPath}/assets/images/on.png"></td>
				</tr>
			</table>
			
			<button class="btn" onClick="toggleMenu()">close</button>
		</div>
		
		<div id="container" align="center" style="margin-left:150px; margin-top: 50px;">
	    	
	        <c:forEach  items="${results}" var="post">
	        			<div class="item" >
			        		<c:if test="${post.from == 'TW'}">
			        		<div class="postBox">
									<c:if test="${post.picture != null}">
			        					<tr><td align="center" colspan="0" width="290px" height="305px"><img class="postImage" width="290px" height="305px" src="${post.picture}"></td></tr>
									</c:if>
			        				<table cellspacing="0" >
			        				<tr valign="top"><td align="left" colspan="0" width="290px" valign="top">
			        					<table width="100%" style=" border-bottom: 1px solid gray; margin-bottom: 5px;">
			        						<tr valign="top">
			        							<td colspan="0" align="left" width="40px" style="padding-top:5px;">
			        								<img style="border: 1px sloid;" width="40px" height="40px" src="${post.postUser.profilePicture}">
			        							</td>
			        							<td colspan="0" align="left" width="255px" valign="top" >
			        								<table width="100%" height="90%" valign="top" >
						        						<tr valign="top">
						        							<td colspan="0" align="left" valign="top">
						        								<label style="font-size:14px; font-weight: bold; color: #3cb0fd;">${post.postUser.name} </label>
						        								<label style=" font-size:10px; font-weight: bold; color: gray;"> ${post.postUser.screenName}</label>
						        							</td>
						        						</tr>
						        						<tr valign="top">
						        							<td colspan="0" align="left" valign="top">
						        								<div style="float:left;"><label style="color:black; font-size: 14; font-weight: bold;"> � </label><label style=" font-weight: bold; color: black; font-size: 10px;"> ${post.time}</label></div>
						        							</td>
						        						</tr>
						        					</table>
			        							</td>
			        						</tr>
			        					</table>
			        					</td>
			        				</tr>
									<c:if test="${post.message != null}">
										<tr><td align="left" colspan="0"><div style="width:290px;"><label class="text"  style=" width: 290px; word-wrap: break-word; font-weight: normal; color: black;">${post.message}</label></div></td></tr>
									</c:if>
									<c:if test="${post.from == 'TW'}">
										<tr valign="top"><td align="left" valign="top">
										<img style="position:relative; -webkit-border-radius: 2 2 2 2; -moz-border-radius: 2 2 2 2;border-radius: 2px 2px 2px 2px; right:3%; bottom: 320%;" width="20px" height="20px" src="${pageContext.request.contextPath}/assets/images/twitter.png"></td></tr>
									</c:if>
								</table>
								</div>
								</c:if>
								
								<c:if test="${post.from == 'IG'}">
								<div class="postBox">
									<c:if test="${post.type == 'image'}">
										<c:if test="${post.picture != null}">
				        					<tr><td align="center" colspan="0" width="290px" height="305px"><img class="postImage" width="290px" height="305px" src="${post.picture}"></td></tr>
										</c:if>
									</c:if>
									<c:if test="${post.type == 'video'}">
										<c:if test="${post.videoLink != null}">
				        					<tr>
				        						<td align="center" colspan="0" width="290px" height="300px">
				        						<video width="290px" height="300px" controls>
  													<source src="${post.videoLink}" type="video/mp4">
  												</video>
  												</td>
  											</tr>
										</c:if>
									</c:if>
			        			<table cellspacing="0" >
			        				<tr valign="top"><td align="left" colspan="0" width="290px" valign="top">
			        					<table width="100%" style=" border-bottom: 1px solid gray; margin-bottom: 5px;">
			        						<tr valign="top">
			        							<td colspan="0" align="left" width="40px" style="padding-top:5px;">
			        								<img style="border: 1px sloid;" width="40px" height="40px" src="${post.postUser.profilePicture}">
			        							</td>
			        							<td colspan="0" align="left" width="255px" valign="top" >
			        								<table width="100%" height="90%" valign="top" >
						        						<tr valign="top">
						        							<td colspan="0" align="left" valign="top">
						        								<label style="font-size:14px; font-weight: bold; color: #3cb0fd;">${post.postUser.name} </label>
						        								<label style=" font-size:10px; font-weight: bold; color: gray;"> ${post.postUser.screenName}</label>
						        							</td>
						        						</tr>
						        						<tr valign="top">
						        							<td colspan="0" align="left" valign="top">
						        								<div style="float:left;"><label style="color:black; font-size: 14; font-weight: bold;"> � </label><label style=" font-weight: bold; color: black; font-size: 10px;"> ${post.time}</label></div>
						        							</td>
						        						</tr>
						        					</table>
			        							</td>
			        						</tr>
			        					</table>
			        					</td>
			        				</tr>
									<c:if test="${post.caption != null}">
										<tr><td align="left" colspan="0"><div style="width:290px;"><label  class="text"  style=" width: 290px; word-wrap: break-word; font-weight: normal; color: black;">${post.caption}</label></div></td></tr>
									</c:if>
									<tr valign="top"><td align="left" valign="top">
									<img style="position:relative; right:3%; bottom: 320%;" width="20px" height="20px" src="${pageContext.request.contextPath}/assets/images/instagram.png"></td></tr>
								</table>
								</div>
								</c:if>
	        			</div>
	       	</c:forEach>
	     </div>
	     </div>
	</body>
	<div id='waiterDiv' align='center' style=' padding-top:15px; display:none;'> <img src='/trendoor/assets/images/ajax-loader.gif'/> </div>
</html>

