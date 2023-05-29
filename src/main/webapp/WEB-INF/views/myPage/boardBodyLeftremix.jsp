<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/myPage/body-leftremix.css">
    <title>Document</title>
</head>
<body>

            <div id="body-left">
                <div id="upper-category">
                    <div>
                        <img src="resources/images/shopping-cart.png" alt="상위 카테고리 이미지">
                        <div id="upper-category-name">마이페이지</div>
                    </div>
                </div>
                <div id="sub-category" >
                    <ul class="scrollbar">
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                        <li>하위 카테고리</li>
                    </ul>
                </div>
                <div id="filter">
                    <ul class="scrollbar">
                        <li>가격</li>
                        <li><input type="number" name="minPrice"> ~ <input type="number" name="maxPrice"> </li>
                        <li>지역</li>
                        <li>
                            <select name="location" id="">
                                <option value="">지역</option>
                                <option value="">음</option>
                                <option value="">음</option>
                                <option value="">음</option>
                                <option value="">음</option>
                            </select>
                        </li>

                        <li>거래방법</li>
                        <li>
                            <input type="radio" name="tradeMethod" id="direct">
                            <label for="direct">직거래</label>
                            <input type="radio" name="tradeMethod" id="parcel">
                            <label for="parcel">택배</label>
                            <input type="radio" name="tradeMethod" id="both">
                            <label for="both">둘다</label>

                        </li>
                    </ul>

                </div>

            </div>

    
</body>
</html>