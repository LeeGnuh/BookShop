package BookShop.Service.User;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import BookShop.DAO.BillsDAO;
import BookShop.DTO.CartDTO;
import BookShop.Entity.BillDetail;
import BookShop.Entity.Bills;

@Service
public class BillsServiceImpl implements IBillsService
{
	@Autowired
	private BillsDAO billsDAO;
	
	@Override
	public int AddBills(Bills bill) 
	{
		return billsDAO.AddBills(bill);
	}

	@Override
	public void AddBillsDetail(HashMap<Long, CartDTO> carts) 
	{
		long idBills = billsDAO.GetIdLastBills();
		
		for (Map.Entry<Long, CartDTO> itemCart : carts.entrySet())
		{
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDAO.AddBillsDetail(billDetail);	
		}
	}
	
}
