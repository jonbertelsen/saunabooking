package dat.saunabooking.model.entities;

import java.sql.Timestamp;

public class Customer
{
    private int customerId;
    private String phone;
    private String name;
    private Timestamp created;

    public Customer(int customerId, String phone, String name, Timestamp created)
    {
        this.customerId = customerId;
        this.phone = phone;
        this.name = name;
        this.created = created;
    }

    public Customer(String phone, String name, Timestamp created)
    {
        this.phone = phone;
        this.name = name;
        this.created = created;
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

    public Timestamp getCreated()
    {
        return created;
    }

    @Override
    public String toString()
    {
        return "Customer{" +
                "customerId=" + customerId +
                ", phone='" + phone + '\'' +
                ", name='" + name + '\'' +
                ", created=" + created +
                '}';
    }
}
