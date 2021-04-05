<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="section">     
         <form method="post">
         <img src="img/alonebook.jpg">
         <br>
         <div class="fieldset">   
           <fieldset>
            <legend>Login</legend>  
            <div id="df">
             <label  id="a">아이디</label>
             <input type="text" id="id" placeholder="아이디 입력">
             <p id="idchk"></p>
             <label  id="b">비밀번호</label>
             <input type="password" id="password" placeholder="비밀번호 입력">
             <p id="pwchk"></p>
             <input id="c" type="submit" value="로그인" >
             <a href="IDget.html" target="blank"><input class="e" type="button" value="아이디 찾기"></a>
             <a href="Pwget.html" target="blank"><input class="e" type="button" value="비밀번호 찾기"></a>
             <a href="Create_acount1.html" target="blank"><input class="e" type="button" value="회원 가입"></a>
            </div>
             </fieldset>
           </div>
         </form>
     </div>