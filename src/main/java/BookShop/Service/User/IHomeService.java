package BookShop.Service.User;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import BookShop.DTO.ProductsDTO;
import BookShop.Entity.Categorys;
import BookShop.Entity.Menus;
import BookShop.Entity.Slides;

@Service
public interface IHomeService 
{
	@Autowired
	public List<Slides> GetDataSlides();
	public List<Categorys> GetDataCategorys();
	public List<Menus> GetDataMenus();
	public List<ProductsDTO> GetDataNewProducts();
	public List<ProductsDTO> GetDataPopularProducts();
	public List<ProductsDTO> GetDataProducts();	
}