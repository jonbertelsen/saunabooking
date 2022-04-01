package dat.saunabooking.model.dtos;

import java.sql.Timestamp;
import java.time.LocalDateTime;

public class BookingDTO
{
    private int customerId;
    private String phone;
    private String name;
    private int bookingId;
    private int eventId;
    private boolean confirmation;
    private int quantity;
    private Timestamp bookingCreated;
    private String eventName;
    private int duration;
    private int price;
    private int limit;
    private LocalDateTime time;
    private String locationName;

    public BookingDTO(int customerId, String phone, String name, int bookingId, int eventId, boolean confirmation, int quantity, Timestamp bookingCreated, String eventName, int duration, int price, int limit, LocalDateTime time, String locationName)
    {
        this.customerId = customerId;
        this.phone = phone;
        this.name = name;
        this.bookingId = bookingId;
        this.eventId = eventId;
        this.confirmation = confirmation;
        this.quantity = quantity;
        this.bookingCreated = bookingCreated;
        this.eventName = eventName;
        this.duration = duration;
        this.price = price;
        this.limit = limit;
        this.time = time;
        this.locationName = locationName;
    }

    public int getCustomerId()
    {
        return customerId;
    }

    public String getPhone()
    {
        return phone;
    }

    public String getName()
    {
        return name;
    }

    public int getBookingId()
    {
        return bookingId;
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

    public Timestamp getBookingCreated()
    {
        return bookingCreated;
    }

    public String getEventName()
    {
        return eventName;
    }

    public int getDuration()
    {
        return duration;
    }

    public int getPrice()
    {
        return price;
    }

    public int getLimit()
    {
        return limit;
    }

    public LocalDateTime getTime()
    {
        return time;
    }

    public String getLocationName()
    {
        return locationName;
    }

    @Override
    public String toString()
    {
        return "BookingDTO{" +
                "customerId=" + customerId +
                ", phone='" + phone + '\'' +
                ", name='" + name + '\'' +
                ", bookingId=" + bookingId +
                ", eventId=" + eventId +
                ", confirmation=" + confirmation +
                ", quantity=" + quantity +
                ", bookingCreated=" + bookingCreated +
                ", eventName='" + eventName + '\'' +
                ", duration=" + duration +
                ", price=" + price +
                ", limit=" + limit +
                ", time=" + time +
                ", locationName='" + locationName + '\'' +
                '}';
    }
}
