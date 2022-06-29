package BookShop.Service.User;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import BookShop.DAO.UsersDAO;
import BookShop.Entity.Users;

@Service
public class AccountServiceImpl implements IAccountService
{
	@Autowired
	UsersDAO usersDAO = new UsersDAO();

	@Override
	public int AddAccount(Users user) 
	{
		//Mã hóa mật khẩu
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		
		return usersDAO.AddAccount(user);
	}

	@Override
	public Users CheckAccount(Users user) 
	{
		String passBefore = user.getPassword();
		
		user = usersDAO.GetUserByAccount(user);
		if (user != null)
		{
			String passAfter = user.getPassword();
			if (BCrypt.checkpw(passBefore, passAfter)) 
				return user;
		}
		return null;
	}

}
