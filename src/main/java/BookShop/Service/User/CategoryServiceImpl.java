package BookShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookShop.DAO.ProductsDAO;
import BookShop.DTO.ProductsDTO;
@Service
public class CategoryServiceImpl implements ICategoryService{

	@Autowired
	private ProductsDAO productsDAO;
	
	public List<ProductsDTO> GetAllProductsByID(int id) {
		return productsDAO.GetAllProductsByID(id);
	}
	
	public List<ProductsDTO> GetDataProductsPaginate(int id, int start, int productsInPage) {
		return productsDAO.GetAllProductsPaginates(id, start, productsInPage);
	}

}