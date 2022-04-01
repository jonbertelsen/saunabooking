package dat.saunabooking.model.persistence;

import dat.saunabooking.model.entities.User;
import dat.saunabooking.model.exceptions.DatabaseException;

public interface IUserMapper
{
    public User login(String email, String kodeord) throws DatabaseException;
    public User createUser(String username, String password, String role) throws DatabaseException;
}
