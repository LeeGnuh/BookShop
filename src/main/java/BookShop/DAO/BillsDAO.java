package BookShop.DAO;

import org.springframework.stereotype.Repository;

import BookShop.Entity.BillDetail;
import BookShop.Entity.Bills;

@Repository
public class BillsDAO extends BaseDAO 
{
	public int AddBills(Bills bills)
	{
		StringBuffer  sql = new StringBuffer();
		
		sql.append("INSERT INTO bills ");
		sql.append("( ");
		sql.append("    `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note` ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+bills.getUser()+"', ");
		sql.append("    '"+bills.getPhone()+"', ");
		sql.append("    '"+bills.getDisplay_name()+"', ");
		sql.append("    '"+bills.getAddress()+"', ");
		sql.append("    "+bills.getTotal()+", ");
		sql.append("    "+bills.getQuanty()+", ");
		sql.append("    '"+bills.getNote()+"' ");
		sql.append("); ");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public long GetIdLastBills()
	{
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills; ");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	}
	
	public int AddBillsDetail(BillDetail billsDetail)
	{
		StringBuffer  sql = new StringBuffer();
		
		sql.append("INSERT INTO billdetail ");
		sql.append("( ");
		sql.append("    `id_product`, `id_bills`, `quanty`, `total` ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+billsDetail.getId_product()+"', ");
		sql.append("    '"+billsDetail.getId_bills()+"', ");
		sql.append("    '"+billsDetail.getQuanty()+"', ");
		sql.append("    '"+billsDetail.getTotal()+"' ");
		sql.append("); ");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}
