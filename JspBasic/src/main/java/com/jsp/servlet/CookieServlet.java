package com.jsp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/cookie/login")
public class CookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public CookieServlet() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id"); // id란 이름을 가진 객체의 파라미터(값)
		String pw = request.getParameter("pw");
		
		if(id.equals("kim1234")&&pw.equals("kkk1111!")) {
			
			//# 쿠키 생성 방법
			//1. 쿠키 객체를 생성 - 생성자의 매개값으로 쿠키의 이름과 저장할 데이터 입력(String) 컨트롤스페이스로 생성
			Cookie loginCoo = new Cookie("login_cookie", id); // 쿠키 이름 , 값
			
			//2. 쿠키 클래스의 setter 메서드로 쿠키의 속성을 설정.
			loginCoo.setMaxAge(15); // 15초후 소멸 (쿠키의 유효시간)
			
			//3. http 응답 시 response 객체에 생성된 쿠키를 탑재해서 클라이언트에게 전송.
			response.addCookie(loginCoo);
			
			//사용자가 아이디 기억하기 체크박스를 체크했는지 여부를 확인.
			if(request.getParameter("rememberId") != null) { // value값인 true가 옴 체크하지 않앗다면 null
				Cookie idMemory = new Cookie("rememberId",id); //rememberId라는 이름의 쿠키에 id값이 저장됨 -> idMemory는 이 서블릿에서만 쓰는 이름
				idMemory.setMaxAge(30); // 30초동안 생존
				response.addCookie(idMemory);
			}
			
			
			response.sendRedirect("/JspBasic/cookie/cookie_welcome.jsp"); //위에 addcookie로 탑재해놓은 logincoo가 보낼때 같이감
			
			
		}else {
			response.sendRedirect("/JspBasic/cookie/cookie_login.jsp");
		}
	}

}
