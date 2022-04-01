package dat.saunabooking.model.persistence;

import dat.saunabooking.model.dtos.BookingDTO;
import dat.saunabooking.model.dtos.EventDTO;
import dat.saunabooking.model.entities.Booking;
import dat.saunabooking.model.entities.Event;
import dat.saunabooking.model.entities.Location;
import dat.saunabooking.model.exceptions.DatabaseException;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SaunaMapper implements ISaunaMapper
{
    private ConnectionPool connectionPool;

    public SaunaMapper(ConnectionPool connectionPool)
    {
        this.connectionPool = connectionPool;
    }

    @Override
    public Event getEventById(int eventId) throws DatabaseException
    {
        return null;
    }

    @Override
    public Location getLocationById(int locationId) throws DatabaseException
    {
        return null;
    }

    @Override
    public List<EventDTO> getEvents() throws DatabaseException
    {
        Logger.getLogger("web").log(Level.INFO, "");

        List<EventDTO> eventDTOList = new ArrayList<>();

        String sql = "SELECT * FROM event_count_view order by time;";

        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ResultSet rs = ps.executeQuery();
                while (rs.next())
                {
                    int eventId = rs.getInt("event_id");
                    String eventName = rs.getString("event_name");
                    int duration = rs.getInt("duration");
                    int price = rs.getInt("price");
                    int limit = rs.getInt("limit");
                    Timestamp time = rs.getTimestamp("time");
                    //LocalDateTime ld = rs.getObject("time", LocalDateTime.class);
                    LocalDateTime localDT = time.toLocalDateTime();
                    int locationId = rs.getInt("location_id");
                    String locationName = rs.getString("location_name");
                    String address = rs.getString("address");
                    int zip = rs.getInt("zip");
                    String city = rs.getString("city");
                    String gMapLink = rs.getString("gmap_link");
                    int count = rs.getInt("count");
                    EventDTO newDTO = new EventDTO(eventId, eventName, duration,
                            price, limit, localDT, locationId, locationName, address,
                            zip, city, gMapLink, count);
                    eventDTOList.add(newDTO);
                }
            }
        } catch (SQLException ex)
        {
            throw new DatabaseException(ex, "Fejl under indlæsning af events fra databasen");
        }
        return eventDTOList;
    }

    @Override
    public Booking createBooking(Booking booking) throws DatabaseException
    {
        return null;
    }

    @Override
    public List<BookingDTO> getBookingsByEventId(int eventId) throws DatabaseException
    {
        return null;
    }
}
