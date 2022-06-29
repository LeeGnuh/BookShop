package BookShop.Service.User;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import BookShop.DAO.CategorysDAO;
import BookShop.DAO.MenusDAO;
import BookShop.DAO.ProductsDAO;
import BookShop.DAO.SlidesDAO;
import BookShop.DTO.ProductsDTO;
import BookShop.Entity.Categorys;
import BookShop.Entity.Menus;
import BookShop.Entity.Slides;


@Service
public class HomeServiceImpl implements IHomeService
{
	@Autowired
	private SlidesDAO slidesDAO;
	@Autowired
	private CategorysDAO categorysDAO;
	@Autowired
	private MenusDAO menusDAO;
	@Autowired
	private ProductsDAO productsDAO;
	
	public List<Slides> GetDataSlides()
	{
		return slidesDAO.GetDataSlides();
	}

	public List<Categorys> GetDataCategorys() 
	{
		return categorysDAO.GetDataCategorys();
	}
	
	public List<Menus> GetDataMenus() 
	{
		return menusDAO.GetDataMenus();
	}

	@Override
	public List<ProductsDTO> GetDataNewProducts() {
		List<ProductsDTO> listProducts = productsDAO.GetDataNewProducts();
		return listProducts;
	}

	@Override
	public List<ProductsDTO> GetDataPopularProducts() {
		List<ProductsDTO> listProducts = productsDAO.GetDataPopularProducts();
		return listProducts;
	}

	@Override
	public List<ProductsDTO> GetDataProducts() {
		List<ProductsDTO> listProducts = productsDAO.GetDataProducts();
		return listProducts;
	}
	
	
}