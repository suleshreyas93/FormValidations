package controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.Offers;
import dao.OffersDao;

@Controller
public class OffersController {
	
	@Autowired
	private OffersDao offersDao;
	
	@RequestMapping("/alloffers")
	public String showOffers(Model model)
	{
		List<Offers> allOffers = offersDao.getAllOffers();
		model.addAttribute("offers", allOffers);
		return "alloffers";
	}
	
	@RequestMapping("/createoffer")
	public String createOffer(Model model)
	{
		model.addAttribute("offers", new Offers());
		return "createoffer";
	}

	@RequestMapping(value="/newoffer",method=RequestMethod.POST)
	public String newOffer(Model model, @Valid Offers offers, BindingResult result)
	{
		boolean flag = false;
		if(result.hasErrors())
		{
			flag = true;
			model.addAttribute("flag", flag);
			return "createoffer";
		}
		return "newoffer";
	}
}
