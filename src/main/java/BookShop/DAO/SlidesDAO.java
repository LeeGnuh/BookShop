package BookShop.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import BookShop.Entity.MapperSlides;
import BookShop.Entity.Slides;

@Repository
public class SlidesDAO extends BaseDAO
{
	
	public List<Slides> GetDataSlides() 
	{
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM slides";
		list = _jdbcTemplate.query(sql, new MapperSlides());	
		return list;
	}	
}
