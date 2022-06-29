package BookShop.Service.User;

import java.util.HashMap;
import org.springframework.stereotype.Service;
import BookShop.DTO.CartDTO;
import BookShop.Entity.Bills;

@Service
public interface IBillsService 
{
	public int AddBills(Bills bills);
	public void AddBillsDetail(HashMap<Long, CartDTO> carts);
}
