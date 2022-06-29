package BookShop.Service.User;

import java.util.List;
import org.springframework.stereotype.Service;
import BookShop.DTO.ProductsDTO;

@Service
public interface IProductService 
{	
	public ProductsDTO GetProductByID(long id);
	
	public List<ProductsDTO> GetProductByIDCategory(int id);
}