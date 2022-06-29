package BookShop.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import BookShop.Entity.Users;
import BookShop.Service.User.AccountServiceImpl;

@Controller
public class UserController extends BaseController{

	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	
	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	public ModelAndView userRegister()
	{
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	
	@RequestMapping(value = "/Register", method = RequestMethod.POST)
	public ModelAndView createAccount(@ModelAttribute("user") Users user)
	{
		int count = accountService.AddAccount(user);
		if (count > 0)
		{
			_mvShare.addObject("registerStatus", "Đăng ký thành công!");
		}
		else
		{
			_mvShare.addObject("registertatus", "Có lỗi trong quá trình đăng kí!");
		}

		_mvShare.setViewName("user/account/register");

		return _mvShare;
	}
	
	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public ModelAndView loginAccount(HttpSession session, @ModelAttribute("user") Users user)
	{
		Users validAccount = accountService.CheckAccount(user);
		
		if (validAccount != null)
		{
			_mvShare.setViewName("redirect:Homepage");
			session.setAttribute("LoginInfo", validAccount);
		}
		else
		{
			_mvShare.addObject("loginStatus", "Đăng nhập không thành công!");
		}		
		
		return _mvShare;
	}
	
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String logoutAccount(HttpSession session, HttpServletRequest request)
	{
		session.removeAttribute("LoginInfo");
		return "redirect:"+request.getHeader("Referer");
	}
	
}
