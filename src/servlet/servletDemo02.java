package servlet;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "servlet1")
public class servletDemo02 extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        System.out.println("check db success");
//        outputChinese(response);
//        request.getAttribute("zhoumianrui");
//        response.getWriter().println("Servlet");
        if(checkDB(request)) {
            System.out.println("check db success");
//            response.sendRedirect("/webProject01_war_exploded/welcome.jsp");
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        } else {
           response.sendRedirect("/webProject01_war_exploded/login_failed.jsp");
        }
    }

    public boolean checkDB(HttpServletRequest request) {

        return true;
    }


//    public void outputChinese(HttpServletResponse response) throws IOException {
//        String data = "中国";
//        System.out.println("Hello world");
//        OutputStream outputStream = response.getOutputStream();
//        response.setHeader("content-type", "text/html;charset=UTF-8");
//
//        byte[] dataByteArr = data.getBytes("UTF-8");
//        outputStream.write(dataByteArr);
//    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        doGet(request, response);
    }
}
