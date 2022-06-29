package BookShop.Service.User;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import BookShop.DAO.ProductsDAO;
import BookShop.DTO.ProductsDTO;
@Service
public class ProductServiceImpl implements IProductService 
{
	
	@Autowired
	ProductsDAO productDAO = new ProductsDAO();

	public ProductsDTO GetProductByID(long id) 
	{
		List<ProductsDTO> listProducts = productDAO.GetProductByID(id);
		return listProducts.get(0);
	}

	public List<ProductsDTO> GetProductByIDCategory(int id) 
	{
		return productDAO.GetAllProductsByID(id);
	}

}