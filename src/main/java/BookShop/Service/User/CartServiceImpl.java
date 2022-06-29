package BookShop.Service.User;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import BookShop.DAO.CartDAO;
import BookShop.DTO.CartDTO;

@Service
public class CartServiceImpl implements ICartService
{
	@Autowired
	private CartDAO cartDAO = new CartDAO();

	public HashMap<Long, CartDTO> AddCart(long id, HashMap<Long, CartDTO> cart) 
	{
		return cartDAO.AddCart(id, cart);
	}

	public HashMap<Long, CartDTO> EditCart(long id, int quanty, HashMap<Long, CartDTO> cart)
	{
		return cartDAO.EditCart(id, quanty, cart);
	}

	public HashMap<Long, CartDTO> DeleteCart(long id, HashMap<Long, CartDTO> cart)
	{
		return cartDAO.DeleteCart(id, cart);
	}

	public int TotalQuanty(HashMap<Long, CartDTO> cart) 
	{
		return cartDAO.TotalQuanty(cart);
	}

	public double TotalPrice(HashMap<Long, CartDTO> cart) 
	{
		return cartDAO.TotalPrice(cart);
	}

}