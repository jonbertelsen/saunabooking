package dat.saunabooking.model.entities;

public class Location
{
    private int locationId;
    private String name;
    private String address;
    private int zip;
    private String city;
    private String gMapLink;

    public Location(String name, String address, int zip, String city, String gMapLink)
    {
        this.name = name;
        this.address = address;
        this.zip = zip;
        this.city = city;
        this.gMapLink = gMapLink;
    }

    public int getLocationId()
    {
        return locationId;
    }

    public String getName()
    {
        return name;
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
        return "Location{" +
                "locationId=" + locationId +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", zip=" + zip +
                ", city='" + city + '\'' +
                ", gMapLink='" + gMapLink + '\'' +
                '}';
    }
}
