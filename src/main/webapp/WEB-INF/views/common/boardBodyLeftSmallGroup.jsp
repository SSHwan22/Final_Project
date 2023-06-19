<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/thrifty/resources/css/common/body-left-small.css">
    <title>Document</title>
</head>
<body>

            <div id="body-left">
                <div id="upper-category">
                    <div>
                        <img src="/thrifty/resources/images/small/hobbies.png" alt="상위 카테고리 이미지">
                         <div id="upper-category-name">소모임</div>
            
                    </div>
                </div>
                <div id="sub-category" >
                    <ul class="scrollbar">
                   
                    
                        <li>소모임</li>
                        <li>소모임</li>
                        <li>소모임</li>
                        <li>소모임</li>
                        <li>소모임</li>
        
                       
                   
                    </ul>
                </div>
                <div id="upAdv">
                    <ul class="scrollbar">
                        <div class="advall">
                            <span id="num">20</span>초 후에 없어짐
                            <p>광고</p>
                            <p>광고</p>
                            <p>광고</p>
                            <p>광고</p>
                            <p>광고</p>
                            <p>광고</p>
                            <p>광고</p>

                        </div>

                    </ul>
                    
                </div>

            </div>
          
           
    
</body>

<script>
    var count = 20;

    setInterval(function(){
     count -= 1;
     if(count>=0){
         document.querySelector('#num').innerHTML = count;
         
     }else if(count== -1){
         $('.alert').hide();
     }
     
    },1000);


    
    
 </script>
 
 <script>
 adAjax();
	function adAjax(){
		$.ajax({
			url : "/thrifty/smallGroup/advUp",
			dataType : 'json',
			success : function(result){
				console.log(result);
				console.log('ajax');
				abc = "";
				abc += `
					<ul class="scrollbar">
                 <div class="alert alert-warning">
                     <span id="num">20</span>초 후에 없어짐
                     <p>제목 :\${result.title}</p>
                     <img src="/thrifty/\${result.thumbNail}"onerror="this.src='/thrifty/resources/images/common/noImage.png'" width="200px" height="120px">
                     <p>상품 가격 :\${result.price}</p>
                     <p>거래 지역 :\${result.locationName}</p>
                     <p>거래 방법 :\${result.tradeMethod== 'D' ? '직거래': '택배'}</p>
                     <p>가격 :\${result.price}</p>
                     

                 </div>
                 

             </ul>`
			$('#upAdv').html(abc);
			}
		})
		
	} 
 
 </script>

</html>