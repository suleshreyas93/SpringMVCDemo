package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OffersController {
	
	@RequestMapping("/")
	public String showOffers(Model model)
	{
		model.addAttribute("offer", "Offers are as follows : ");
		return "offers";
	}

}
