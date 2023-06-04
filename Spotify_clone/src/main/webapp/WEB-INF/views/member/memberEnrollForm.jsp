<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="insert.me" method="post" id="enrollForm" onsubmit="return enrollForm_check()">
		<table id="memberEnrollForm" align="center" >
			<tr>
            	<th align="left" colspan="3">아이디</th>
            </tr>
            <tr style="display: inline-block;">
                <td colspan="3">
                	<input class="form-control" type="text" placeholder="아이디를 입력해주세요" minlength="5" maxlength="20" style="width: 400px;" required name="memberId" id="memberId">
            	</td>
                <td>
                	<button type="button" class="btn btn-primary" style="width:100px" name="idCheck" id="idCheckbtn">중복확인</button>
				</td>
			<tr style="height: 20px!important;">
				<td>
            		<div id="checkResult" style="font-size:0.8em; display:none; padding-left: 6px;"></div>
            	</td>
            </tr>
            <tr>
            	<th colspan="3">비밀번호</th>
            </tr>
            <tr>
            	<td colspan="3">
					<input type="password" class="form-control" placeholder="특문,영문,숫자를 포함하여 8~20자 이하로 입력해주세요" minlength="8" maxlength="20" style="width:500px" required name="memberPwd" id="memberPwd">
    			</td>
			</tr>
			<tr>
    			<th colspan="3">비밀번호 재확인</th>
			</tr>
			<tr>
    			<td colspan="3">
        			<input type="password" class="form-control" placeholder="동일한 비밀번호를 한번 더 입력해주세요" style="width: 500px;" name="checkPwd" id="checkPwd">
					<div id="checkResult2" style="font-size:0.8em; display:none;"></div>	
    			</td>
			</tr>
			<tr>
    			<th colspan="3">이름</th>
			</tr>
			<tr>
    			<td colspan="3">
        			<input type="text" class="form-control" placeholder="이름을 입력해주세요" style="width: 500px;" required name="memberName" id="memberName">
    			</td>
			</tr>
			<tr>
    			<th colspan="3">휴대폰번호</th>
			</tr>
			<tr>
			    <td colspan="3"> 
			        <input type="tel" class="form-control" placeholder="휴대폰번호를 '-' 없이 입력해주세요" maxlength="13" style="width: 500px;" required name="phone" id="phone">
			    </td>
			</tr>
			<tr>
			    <th colspan="3">이메일</th>
			</tr>
			<tr style="display: inline-block;">
				<td colspan="3"> 
			        <input type="email" class="form-control" placeholder="이메일을 입력해주세요" maxlength="45" style="width: 500px;" required name="email" id="email">
			    </td>
            </tr>
	</table>
	<div align="center" style="padding: 15px 0px; margin-top: 30px;">
  		<button class="btn btn-secondary" id="enrollbtn" type="submit" style="width: 140px; height: 40px;">가입하기</button>
	</div>
	</form>
</body>
</html>