<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@page import="point24.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>Point24</title>
<style>
        body{
            text-align: center;
        }
        form>input{
            width: 80px;
            height: 60px;
            display: inline-block;
            border: 1px solid #ccc;
            text-align: center;
            font-size: 16px;
        }
        input[type=submit]{
            width: 100px;
            height: 60px;
            background-color: #337ab7;
            border: 1px solid #2e6da4;
            color: #fff;
            font-size: 14px;
			-webkit-box-shadow: inset 0 -4px 0 #2a6496;
            box-shadow: inset 0 -4px 0 #2a6496;
        }
        form{
            height: 60px;
            text-align: center;
            margin-top: 10px;
        }
        h2{
            text-align: center;
            color: #666;
            letter-spacing: 5px;
            margin-top: 150px;
        }
        #show{
            font-size: 18px;
            margin-top: 20px;
        }
		@media(max-width:992px){
			form>input{
            width: 17%;
            }
            input[type=submit]{
              width: 20%;
            }
		}
		input{
			 -webkit-appearance : none ; 
			 border-radius:1px;
		}
    </style>
</head>
<body>
    <h2>POINT24</h2>
	<form action="index.jsp">
		<input type="text" name="A" /> 
		<input type="text" name="B" /> 
		<input type="text" name="C" /> 
		<input type="text" name="D" /> 
		<input type="submit" value="GO" />
	</form>

    <div id="show">
    <span style="color: #333">Result:&nbsp&nbsp</span>
    <span id="rec">
	 <%
		int a, b,c,d;
		try {
			a = Integer.parseInt(request.getParameter("A"));
			b = Integer.parseInt(request.getParameter("B"));
			c = Integer.parseInt(request.getParameter("C"));
			d = Integer.parseInt(request.getParameter("D"));

			out.println(point24.Game.solve24(new int[]{a, b, c, d}));
		} catch (Exception e) {
			out.println("Something wrong~");
		}
	%>
    </span>
    </div>
</body>
</html>