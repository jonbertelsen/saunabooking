package dat.saunabooking.control;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BookForm", value = "/bookform")
public class BookForm extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        int eventId = Integer.parseInt(request.getParameter("eventid"));
        request.getRequestDispatcher("WEB-INF/bookform.jsp").forward(request, response);
    }
}
