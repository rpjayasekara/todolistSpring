package springmvc.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes("firstname")
@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginservice;
	
	@RequestMapping(value = "/login", method= RequestMethod.GET)
	public String sayHello() {
		return "first";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String handlePost(ModelMap model, @RequestParam String firstname,
			@RequestParam String lastname, @RequestParam String password) {
		if(loginservice.validateUser(firstname, password)) {
			model.put("firstname", firstname);
			model.put("secondname", lastname);
			return "home";
		}else {
			model.put("error", "Wrong password!");
			return "first";
		}
		
	}
	
}