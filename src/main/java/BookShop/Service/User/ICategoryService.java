package BookShop.Service.User;

import java.util.List;
import org.springframework.stereotype.Service;
import BookShop.DTO.ProductsDTO;

@Service
public interface ICategoryService {
	
	public List<ProductsDTO> GetAllProductsByID(int id);
	public List<ProductsDTO> GetDataProductsPaginate(int id, int start, int productsInPage);
	
}