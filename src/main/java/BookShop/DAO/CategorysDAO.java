package BookShop.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import BookShop.Entity.Categorys;
import BookShop.Entity.MapperCategorys;

@Repository
public class CategorysDAO extends BaseDAO
{
	
	public List<Categorys> GetDataCategorys()
	{
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = "SELECT * FROM categorys";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	} 
}
