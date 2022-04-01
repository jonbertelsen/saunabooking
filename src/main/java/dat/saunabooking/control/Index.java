package dat.saunabooking.control;

import dat.saunabooking.model.config.ApplicationStart;
import dat.saunabooking.model.dtos.EventDTO;
import dat.saunabooking.model.exceptions.DatabaseException;
import dat.saunabooking.model.persistence.ConnectionPool;
import dat.saunabooking.model.persistence.SaunaMapper;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "IIndex", value = "")
public class Index extends HttpServlet
{
    private SaunaMapper saunaMapper;

    @Override
    public void init() throws ServletException
    {
        ConnectionPool connectionPool = ApplicationStart.getConnectionPool();
        saunaMapper = new SaunaMapper(connectionPool);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            List<EventDTO> eventDTOList = saunaMapper.getEvents();
            request.setAttribute("events", eventDTOList);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        catch (DatabaseException e)
        {
            Logger.getLogger("web").log(Level.SEVERE, e.getMessage());
            request.setAttribute("fejlbesked", e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }
}
