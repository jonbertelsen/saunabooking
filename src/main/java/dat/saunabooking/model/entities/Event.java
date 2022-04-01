package dat.saunabooking.model.entities;

import java.time.LocalDateTime;
import java.time.format.TextStyle;
import java.util.Locale;

public class Event
{
    private int eventId;
    private String name;
    private int duration;
    private int price;
    private int limit;
    private LocalDateTime time;
    private int locationId;

    public Event(String name, int duration, int price, int limit, LocalDateTime time, int locationId)
    {
        this.name = name;
        this.duration = duration;
        this.price = price;
        this.limit = limit;
        this.time = time;
        this.locationId = locationId;
    }

    public Event(int eventId, String name, int duration, int price, int limit, LocalDateTime time, int locationId)
    {
        this.eventId = eventId;
        this.name = name;
        this.duration = duration;
        this.price = price;
        this.limit = limit;
        this.time = time;
        this.locationId = locationId;
    }

    public int getEventId()
    {
        return eventId;
    }

    public String getName()
    {
        return name;
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

    public int getLocationId()
    {
        return locationId;
    }



    @Override
    public String toString()
    {
        return "Event{" +
                "eventId=" + eventId +
                ", name='" + name + '\'' +
                ", duration=" + duration +
                ", price=" + price +
                ", limit=" + limit +
                ", time=" + time +
                ", locationId=" + locationId +
                '}';
    }
}
