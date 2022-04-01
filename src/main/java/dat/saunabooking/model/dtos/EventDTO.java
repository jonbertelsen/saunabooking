package dat.saunabooking.model.dtos;

import java.time.LocalDateTime;

public class EventDTO
{
    private static final String[] weekDays = {"Man","Tir", "Ons", "Tor", "Fre", "Lør", "Søn"};
    private static final String[] months = {"Januar", "Februar", "Marts", "April", "Maj", "Juni",
            "Juli", "August", "September", "Oktober", "November", "December"};

    private int eventId;
    private String eventName;
    private int duration;
    private int price;
    private int limit;
    private LocalDateTime time;
    private int locationId;
    private String locationName;
    private String address;
    private int zip;
    private String city;
    private String gMapLink;
    private int count;

    public EventDTO(int eventId, String eventName, int duration, int price, int limit, LocalDateTime time, int locationId, String locationName, String address, int zip, String city, String gMapLink, int count)
    {
        this.eventId = eventId;
        this.eventName = eventName;
        this.duration = duration;
        this.price = price;
        this.limit = limit;
        this.time = time;
        this.locationId = locationId;
        this.locationName = locationName;
        this.address = address;
        this.zip = zip;
        this.city = city;
        this.gMapLink = gMapLink;
        this.count = count;
    }

    public String getMonthName()
    {
        return months[time.getMonth().getValue() - 1];
    }

    public int getCount()
    {
        return count;
    }

    public String getWeekDay()
    {
        return weekDays[getDayOfWeek() - 1];
    }

    public int getYear()
    {
        return time.getYear();
    }

    public int getMonth()
    {
        return time.getMonthValue();
    }

    public int getDayOfMonth()
    {
        return time.getDayOfMonth();
    }

    public int getDayOfWeek()
    {
        return time.getDayOfWeek().getValue();
    }

    public int getEventId()
    {
        return eventId;
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

    public int getLocationId()
    {
        return locationId;
    }

    public String getLocationName()
    {
        return locationName;
    }

    public String getAddress()
    {
        return address;
    }

    public int getZip()
    {
        return zip;
    }

    public String getCity()
    {
        return city;
    }

    public String getgMapLink()
    {
        return gMapLink;
    }

    @Override
    public String toString()
    {
        return "EventDTO{" +
                "eventId=" + eventId +
                ", eventName='" + eventName + '\'' +
                ", duration=" + duration +
                ", price=" + price +
                ", limit=" + limit +
                ", time=" + time +
                ", locationId=" + locationId +
                ", locationName='" + locationName + '\'' +
                ", address='" + address + '\'' +
                ", zip=" + zip +
                ", city='" + city + '\'' +
                ", gMapLink='" + gMapLink + '\'' +
                '}';
    }
}
