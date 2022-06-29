package BookShop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{
	
	@RequestMapping(value = { "/", "/Homepage" })
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeService.GetDataSlides());
		_mvShare.addObject("newProducts", _homeService.GetDataNewProducts());
		_mvShare.addObject("popularProducts", _homeService.GetDataPopularProducts());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
}
