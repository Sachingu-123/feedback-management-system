package in.sachin.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

System.out.println("Hello");

@WebServlet("/feedback")
public class FeedbackServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

    	String name = request.getParameter("name");

    	String email = request.getParameter("email");

    	String message = request.getParameter("message");
        if(name == null || name.trim().isEmpty()
                || name.length() < 3){

            response.sendRedirect("error.jsp");

            return;
        }

        if(email == null || !email.contains("@")){

            response.sendRedirect("error.jsp");

            return;
        }

        if(message == null || message.length() < 10){

            response.sendRedirect("error.jsp");

            return;
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con =
                    DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/feedback_db",
                    "root",
                    "Aspirant@123");

            String query =
                    "insert into feedback(name,email,message) values(?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, message);

            int count = ps.executeUpdate();

            if(count > 0){
            	HttpSession session = request.getSession();

            	session.setAttribute("username", name);

                response.sendRedirect("success.jsp");

            }else{

                response.sendRedirect("error.jsp");
            }

            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }
    }
}