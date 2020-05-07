<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/layui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>

<script type="text/javascript">
$(document).ready(function(e) {

	$(".select3").uedSelect({
		width : 152
	});
});
</script>
</head>
<body class="sarchbody">
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><label>首页</label></li>
    <li><label>库存盘点</label></li>
    <li><label>商品库存 </label></li>
    </ul>
    </div>
   
    <div class="formbody">  
    
    <div id="usual1" class="usual"> 
   
    <script language="javascript">
	$(document).ready(function() 
{ 
    $(".scbtn1").click(function() 
    {      
        if( $(".seachform2").hasClass("hideclass") ) 
        { 
            $(".seachform2").removeClass("hideClass"); 
        } 
        else 
        { 
            $(".seachform2").addClass("hideClass"); 
        }    
    }); 
}); 
		
	</script>
      
    <script type="text/javascript">
$(document).ready(function(){
  $(".scbtn1").click(function(){
  $(".seachform2").fadeIn(200);
  }); 


});
</script>   
    
    <div class="formtitle"><span>货物列表</span></div>
        
	    <ul class="seachform1">
	    <form id="search_form" action="find_countByProduct" method="post">
		  	<li><label>商品编号：</label><input name="productid" type="text" class="scinput1" /></li>
		    <li><label>商品名称：</label><input name="productname" type="text" class="scinput1" /></li>
		     <input name="" type="submit" class="scbtn2" value="搜索" />
	    </form>

	    </ul>
	    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>库存</th>
        <th>仓库编号</th>
        <th>仓库名称</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
    
	<div id="page"></div>

	</div>    
    
    </div>
     
</body>

</html>
<script type="text/javascript" src="js/layui.js"></script>
<script>
$(function(){
	var count;
	layui.use('laypage', function(){
		  var laypage = layui.laypage;
		  //执行一个laypage实例
		  laypage.render({
			  elem: 'page'
			  ,count:  <%=session.getAttribute("count")%> //数据总数，从服务端得到
			  ,theme: '#FFE4B5'
			  ,limit: 5
			  ,limits: [5,10]
			  ,layout: ['prev', 'page', 'next', 'limit', 'skip']
			  ,jump: function(obj, first){
			    //obj包含了当前分页的所有参数，比如：
			    //alert(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
			    //alert(obj.limit); //得到每页显示的条数	        
   			    $.post("find_contentByProduct",{"pageSize":obj.limit,"pageNumber":obj.curr},function(data){
					var result = "";
					for(var i = 0;i < data.length;++ i){
						result += "<tr>";
						result += "<td id=\"id\" style=\"display:none\">" + data[i].id +"</td>";
						result += "<td>" + data[i].productid +"</td>";
						result += "<td>" + data[i].productname +"</td>";
						result += "<td>" + data[i].quantity +"</td>";	
						result += "<td>" + data[i].shopid +"</td>";
						result += "<td>" + data[i].shopname +"</td>";		 
						result += "</tr>";
					}
					$("tbody").html(result);
				}); 
			    //首次不执行
			    if(!first){
			      //do something
			    }
			  }
			});
		});
})

</script>
