package BookShop.DTO;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;


public class ProductsDTOMapper implements RowMapper<ProductsDTO> 
{

	@Override
	public ProductsDTO mapRow(ResultSet rs, int rowNum) throws SQLException 
	{
		ProductsDTO productsDTO = new ProductsDTO();
		
		productsDTO.setId_product(rs.getLong("id_product"));
		productsDTO.setId_category(rs.getInt("id_category"));
		productsDTO.setSizes(rs.getString("sizes"));
		productsDTO.setName(rs.getString("name"));
		productsDTO.setPrice(rs.getDouble("price"));
		productsDTO.setSale(rs.getInt("sale"));
		productsDTO.setTitle(rs.getString("title"));
		productsDTO.setHighlight(rs.getBoolean("highlight"));
		productsDTO.setNew_product(rs.getBoolean("new_product"));
		productsDTO.setDetails(rs.getString("details"));
		productsDTO.setId_color(rs.getInt("id_color"));
		productsDTO.setName_color(rs.getString("name_color"));
		productsDTO.setCode_color(rs.getString("code_color"));
		productsDTO.setImg(rs.getString("img"));
		productsDTO.setCreated_at(rs.getDate("created_at"));
		productsDTO.setUpdated_at(rs.getDate("updated_at"));
		
		return productsDTO;
	}
	
}
