<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <h2>EL 연산</h2>
 
 <h3>1. 산술 연산 </h3>
 
 <p>
    * 기존 방식 <br>
    10 + 3 = <%= (int)request.getAttribute("big")+(int)request.getAttribute("small") %>
 </p>
 
 <p>
    * EL 연산 <br>
    10 + 3 = ${big + small} <br> 
    10 + 3 = ${big} + ${small} <br> 
    10 - 3 = ${big - small } <br>
    10 * 3 = ${big * small } <br>
    10 / 3 = ${big / small } 또는 ${big div small } <br>
    10 % 3 = ${big % small } 또는 ${big mod small }<br>
 </p>
 
 <hr>
 
 <h3>2.숫자간의 대소 비교 연산 </h3>
 <p>
   * 기존 방식<br>
   10 > 3 : <%= (int)request.getAttribute("big") > (int)request.getAttribute("small") %> 
 </p>
 
 <p>
   * EL 연산 <br>
   10 > 3 : ${ big > small } 또는  ${ big gt small }<br>
   10 < 3 : ${ big < small } 또는 ${ big lt small }<br>
   10 >= 3 : ${ big >= small } 또는 ${big ge small }<br>
   10 <= 3 : ${ big <= small } 또는 ${big le small } <br>
 </p>
 
 <hr>
 
 <h3>3. 동등 비교 연산</h3>
 
  <p>
    * 기존 방식 <br>
     10과 3이 일치합니까? : <%= (int)request.getAttribute("big") == (int)request.getAttribute("small") %> <br>
     sOne 과 sTwo 가 일치합니까? (주소값비교) : 
         <%= (String)request.getAttribute("sOne") == (String)request.getAttribute("sTwo") %><br>
     sOne 과 sTwo 가 일치합니까? (내용물비교) : 
        <%= ((String)request.getAttribute("sOne")).equals((String)request.getAttribute("sTwo")) %><br>
  </p>
 
  <p>
    * EL 연산 <br>
     10과 3이 일치합니까? : ${ big == small } 또는  ${ big eq small }<br>
     big 에 담긴 값이 숫자 10과 일치합니까? : ${ big == 10 } 또는 ${big eq 10}<br>
     
     sOne과 sTwo 가 일치합니까 ?(내용물비교):  ${sOne == sTwo} 또는 ${sOne eq sTwo } <br> 
     <!-- EL에서의 == 비교는 자바에서의 equals() 메소드의 역할과 동일하다.  -->
     
     <!-- !=  -->
     sOne 과 sTwo 가 일치하지 않습니까? : ${sOne != sTwo} 또는 ${sOne ne sTwo }<br> 
     
     <!-- 문자열을 리터럴로 표현하고자 할 경우 : 쌍따옴표던 홑따옴표던 상관 없음-->
     sOne 에 담긴 값이 문자열 "안녕"과 일치합니까? : ${sOne eq "안녕" } 또는 ${sOne eq '안녕' }
      
  </p>
  
  <hr>
  
  <h3>4. 객체가 null인지 또는 리스트가 비어있는지 체크하는 연산</h3>
  
  <p>
     * EL 연산 <br>
      pOne 이 null 입니까? : ${pOne == null } 또는 ${pOne eq null } 또는 ${empty pOne} <br>
      pTwo 이 null 입니까? : ${pTwo == null } 또는 ${pTwo eq null } 또는 ${empty pTwo} <br>
      
      pOne 이 null 이 아닙니까? : ${pOne != null }또는 ${pOne ne null } 또는 ${!empty pOne} <br>
      
      <!-- 리스트 형식이 피연산자일경우 -->
       lOne이 텅 비어있습니까? ${empty lOne } <br>
       lTwo가 텅 비어있습니까? ${empty lTwo } <br>
  </p>
  
  <hr>
  
  <h3>5. 논리연산자</h3>
  
  <p>
    * EL 연산 <br>
     AND 연산 : ${true && true } 또는 ${true and true } <br>
     OR 연산 : ${true || false } 또는 ${true or false } <br>
     
  </p>
  
  <hr>
  
  <h3>연습문제</h3>
  <p>
     * EL연산에서 배운 키워드를 가지고 써볼것 <br>
     big 이 small 보다 크고 lOne이 텅 비어있습니까?  <br>
      ${(big gt small) && empty lOne } <br>
     
     big 이 small의 곱은 4의 배수입니까? <br>
      ${ (big * small mod 4) eq 0 } <br>
     
     lTwo 가 텅 비어있지 않거나 sOne에 담긴 값이 "안녕하세요"와 일치합니까? <br>
     ${(!empty lTwo ) or (sOne eq "안녕하세요")}      
  </p>

</body>
</html>



