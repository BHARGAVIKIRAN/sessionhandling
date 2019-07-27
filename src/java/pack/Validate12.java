package pack;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bhat Sir
 */
@WebServlet(urlPatterns = {"/Validate12"})
public class Validate12 extends HttpServlet {
String username,password;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   username=request.getParameter("user");
   password=request.getParameter("pass");
   if(username.equals("Kiran@sms.com") && password.equals("@sms"))
   {
       request.getSession().invalidate();
       HttpSession nw=request.getSession(true);
       nw.setMaxInactiveInterval(180);
       request.setAttribute("name", username);
      request.getRequestDispatcher("sessionbe.jsp").forward(request, response);
     
   }
   else
   {
   response.getWriter().print("Username and Password missmatch");
   }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
