package dat.saunabooking.model.persistence;

import dat.saunabooking.model.dtos.BookingDTO;
import dat.saunabooking.model.dtos.EventDTO;
import dat.saunabooking.model.entities.Booking;
import dat.saunabooking.model.entities.Customer;
import dat.saunabooking.model.entities.Event;
import dat.saunabooking.model.entities.Location;
import dat.saunabooking.model.exceptions.DatabaseException;

import java.util.List;

public interface ISaunaMapper
{
    public Event getEventById(int eventId) throws DatabaseException;
    public Location getLocationById(int locationId) throws DatabaseException;
    public List<EventDTO> getEvents() throws DatabaseException;
    public Booking createBooking(Booking booking) throws DatabaseException;
    public List<BookingDTO> getBookingsByEventId(int eventId) throws DatabaseException;
}
