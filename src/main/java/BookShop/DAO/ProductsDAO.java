package BookShop.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import BookShop.DTO.ProductsDTOMapper;
import BookShop.DTO.ProductsDTO;

@Repository
public class ProductsDAO extends BaseDAO 
{
	private final boolean YES = true;
	private final boolean NO = false;

	//Tạo các câu lệnh SQL
	private StringBuffer SqlString() 
	{
		StringBuffer sql = new StringBuffer();
		
		sql.append("SELECT ");
		sql.append("p.id as id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.sizes ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.title ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.details ");
		sql.append(", c.id as id_color ");
		sql.append(", c.name as name_color ");
		sql.append(", c.code as code_color ");
		sql.append(", c.img ");
		sql.append(", p.created_at ");
		sql.append(", p.updated_at ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("colors AS c ");
		sql.append("ON p.id = c.id_product ");
		
		return sql;
	}

	private String SqlProducts(boolean newProduct, boolean highLight) 
	{
		StringBuffer sql = SqlString();
		
		sql.append("WHERE 1 = 1 ");
		if (highLight) 
		{
			sql.append("AND p.highlight = true ");
		}
		if (newProduct) 
		{
			sql.append("AND p.new_product = true ");
		}
		sql.append("GROUP BY p.id, c.id_product ");
		sql.append("ORDER BY RAND() ");
		if (highLight) 
		{
			sql.append("LIMIT 9 ");
		}
		if (newProduct) 
		{
			sql.append("LIMIT 12 ");
		}
		if (!(newProduct) && !(highLight)) 
		{
			sql.append("LIMIT 12 ");
		}
		
		return sql.toString();
	}
				//Lấy nhiều sp
	private StringBuffer SqlProductsById(int id)
	{
		StringBuffer sql = SqlString();
		
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_category = " + id + " ");
		
		return sql;
	}

	private String SqlProductsPaginate(int id, int start, int productsInPage) 
	{
		StringBuffer sql = SqlProductsById(id);
		
		sql.append("LIMIT " + start + ", " + productsInPage + " ");
		
		return sql.toString();
	}
				//Lấy 1 sp
	private String SqlProductByID(long id) 
	{
		StringBuffer sql = SqlString();
		
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id = " + id + " ");
		sql.append("LIMIT 1 ");
		
		return sql.toString();
	}

	
	//Gọi thực thi lệnh SQL
	public List<ProductsDTO> GetDataProducts() 
	{
		String sql = SqlProducts(NO, NO);
		List<ProductsDTO> listProducts = _jdbcTemplate.query(sql, new ProductsDTOMapper());
		
		return listProducts;
	}
	
	public List<ProductsDTO> GetDataNewProducts() 
	{
		String sql = SqlProducts(YES, NO);
		List<ProductsDTO> listProducts = _jdbcTemplate.query(sql, new ProductsDTOMapper());
		
		return listProducts;
	}

	public List<ProductsDTO> GetDataPopularProducts() 
	{
		String sql = SqlProducts(NO, YES);
		List<ProductsDTO> listProducts = _jdbcTemplate.query(sql, new ProductsDTOMapper());
		
		return listProducts;
	}

	public List<ProductsDTO> GetAllProductsByID(int id) 
	{
		String sql = SqlProductsById(id).toString();
		List<ProductsDTO> listProducts = _jdbcTemplate.query(sql, new ProductsDTOMapper());
		
		return listProducts;
	}

	public List<ProductsDTO> GetAllProductsPaginates(int id, int start, int productsInPage) 
	{
		StringBuffer sqlGetDataById = SqlProductsById(id); 
		List<ProductsDTO> listProductsById = _jdbcTemplate.query(sqlGetDataById.toString(), new ProductsDTOMapper());
		List<ProductsDTO> listProducts = new ArrayList<ProductsDTO>();
		
		if (listProductsById.size() > 0)
		{
			String sql = SqlProductsPaginate(id, start, productsInPage);
			listProducts = _jdbcTemplate.query(sql, new ProductsDTOMapper());
		}	
		
		return listProducts;
	}

	public List<ProductsDTO> GetProductByID(long id) 
	{
		String sql = SqlProductByID(id);
		List<ProductsDTO> listProduct = _jdbcTemplate.query(sql, new ProductsDTOMapper());
		
		return listProduct;
	}

	public ProductsDTO FindProductByID(long id) 
	{
		String sql = SqlProductByID(id);
		ProductsDTO product = _jdbcTemplate.queryForObject(sql, new ProductsDTOMapper());
		
		return product;
	}
}