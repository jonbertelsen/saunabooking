package dat.saunabooking.model.entities;

import java.sql.Timestamp;

public class Booking
{
    private int bookingId;
    private int customerId;
    private int eventId;
    private boolean confirmation;
    private int quantity;
    private Timestamp created;

    public Booking(int bookingId, int customerId, int eventId, boolean confirmation, int quantity, Timestamp created)
    {
        this.bookingId = bookingId;
        this.customerId = customerId;
        this.eventId = eventId;
        this.confirmation = confirmation;
        this.quantity = quantity;
        this.created = created;
    }

    public Booking(int customerId, int eventId, boolean confirmation, int quantity, Timestamp created)
    {
        this.customerId = customerId;
        this.eventId = eventId;
        this.confirmation = confirmation;
        this.quantity = quantity;
        this.created = created;
    }

    public int getBookingId()
    {
        return bookingId;
    }

    public int getCustomerId()
    {
        return customerId;
    }

    public int getEventId()
    {
        return eventId;
    }

    public boolean isConfirmation()
    {
        return confirmation;
    }

    public int getQuantity()
    {
        return quantity;
    }

    public Timestamp getCreated()
    {
        return created;
    }

    @Override
    public String toString()
    {
        return "Booking{" +
                "bookingId=" + bookingId +
                ", customerId=" + customerId +
                ", eventId=" + eventId +
                ", confirmation=" + confirmation +
                ", quantity=" + quantity +
                ", created=" + created +
                '}';
    }
}
