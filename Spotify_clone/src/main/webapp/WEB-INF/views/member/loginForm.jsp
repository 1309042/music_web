<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <div class="wrap">
      <form action="login.me" method="post">
        <table id="loginFrom" align="center">
          <tr>
            <th>아이디</th>
            <td>
              <input
                class="form-control"
                type="text"
                placeholder="아이디를 입력해주세요"
                maxlength="20"
                id="memberId"
                name="memberId"
                autofocus
              />
            </td>
          </tr>
          <tr>
            <th>비밀번호</th>
            <td>
              <input
                type="password"
                class="form-control"
                placeholder="비밀번호를 입력해주세요"
                maxlength="20"
                id="memberPwd"
                name="memberPwd"
              />
            </td>
          </tr>
        </table>
        <div align="center">
          <button class="btn btn-secondary" style="width: 400px; height: 45px">
            로그인
          </button>
        </div>
      </form>
    </div>
  </body>
</html>
