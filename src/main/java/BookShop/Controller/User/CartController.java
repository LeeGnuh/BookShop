package BookShop.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.objenesis.instantiator.basic.NewInstanceInstantiator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import BookShop.DTO.CartDTO;
import BookShop.Entity.Bills;
import BookShop.Entity.Users;
import BookShop.Service.User.BillsServiceImpl;
import BookShop.Service.User.CartServiceImpl;

@Controller
public class CartController extends BaseController{
	
	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
	
	@Autowired
	private BillsServiceImpl billsService = new BillsServiceImpl();
	
	@RequestMapping(value = "ListCart")
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeService.GetDataSlides());
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("user/cart/list_cart");
		return _mvShare;
	}
	
	@RequestMapping(value = "AddCart/{id}")
	public String AddCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "EditCart/{id}/{quanty}")
	public String EditCart(HttpServletRequest request ,HttpSession session, @PathVariable long id, @PathVariable int quanty) 
	{
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Cart");
		if(cart == null) 
		{
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.EditCart(id, quanty, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	@RequestMapping(value = "DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) 
	{
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("Cart");
		if(cart == null) 
		{
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "Checkout", method = RequestMethod.GET)
	public ModelAndView CheckOut(HttpServletRequest request ,HttpSession session) 
	{
		_mvShare.setViewName("user/bills/checkout");
		
		Bills bills = new Bills();
		Users loginInfo = (Users)session.getAttribute("LoginInfo");
		
		if( loginInfo != null)
		{
			bills.setAddress(loginInfo.getAddress());
			bills.setDisplay_name(loginInfo.getDisplay_name());
			bills.setUser(loginInfo.getUser());
		}
		
		_mvShare.addObject("bills", bills);
		return _mvShare;
	}
	
	@RequestMapping(value = "Checkout", method = RequestMethod.POST)
	public String CheckOutBill(HttpServletRequest request ,HttpSession session, @ModelAttribute("bills") Bills bills) 
	{
		bills.setQuanty(Integer.parseInt((String) session.getAttribute("TotalQuantyCart").toString()));
		bills.setTotal(Double.parseDouble((String) session.getAttribute("TotalPriceCart").toString()));
		if (billsService.AddBills(bills) > 0)
		{
			HashMap<Long, CartDTO> carts = (HashMap<Long, CartDTO>) session.getAttribute("Cart");
			billsService.AddBillsDetail(carts);
		}
		session.removeAttribute("Cart");
		return "redirect:ListCart";
	}
}