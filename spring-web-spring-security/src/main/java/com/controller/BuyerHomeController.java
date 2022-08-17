package com.controller;

import com.model.Buyer;
import com.model.Medicine;
import com.service.BuyerService;
import com.service.ManageMedsService;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/api")
public class BuyerHomeController {
    private final ManageMedsService manageMedsService;
    private final BuyerService buyerService;

    public BuyerHomeController(ManageMedsService manageMedsService, BuyerService buyerService) {
        this.manageMedsService = manageMedsService;

        this.buyerService = buyerService;
    }
    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);

    }


    @RequestMapping("/shop")
    public String medicineform(Model model, @RequestParam(required = false) String sortKey) {
        List<Medicine> medicines = new ArrayList<>();
        medicines = manageMedsService.getAll();
        model.addAttribute("medicines", medicines);
        return "buyer-order";
    }

    @RequestMapping("/searchmeds")
    public String delete(@RequestParam("searchforbuyer") String medsname, Model model) {
        List<Medicine> medicines = manageMedsService.getAll(medsname);
        model.addAttribute("medicines", medicines);
        return "buyer-order";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String medicineUpdateForm(@RequestParam("medsId") int id, Model model) {
        Medicine medicine = manageMedsService.get(id);

        model.addAttribute("medicine", medicine);
        System.out.println("hiii");

        return "buyer-order";
    }



    @RequestMapping(value = "/createInfo", method = RequestMethod.GET)
    public String create(Model model) {
        Buyer buyer = new Buyer();
        model.addAttribute("buyer", buyer);
        return "create-buyer-info-form";
    }

    @RequestMapping(value = "/createInfo", method = RequestMethod.POST)
    public String createInfo(@Valid @ModelAttribute("buyer") Buyer buyer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "create-buyer-info-form";
        }
        buyerService.save(buyer);
        return "redirect:/api/two";
    }

    @RequestMapping("/showpersonal")
    public String personalInfoForm(Model model, @RequestParam(required = false) String sortKey) {
        List<Buyer> buyers = new ArrayList<>();
        buyers = buyerService.();
        model.addAttribute("buyers", buyers);
        return "personal-account-info";
    }

    @RequestMapping(value = "updatepersonal", method = RequestMethod.GET)
    public String personalInfoUpdateForm(@RequestParam("buyerId") int buyerId, Model model) {
        Buyer buyer= buyerService.get(buyerId);

        model.addAttribute("buyer", buyer);

        return "update-personal-info-form";
    }

    @RequestMapping(value = "/updatepersonal", method = RequestMethod.POST)
    public String update(@ModelAttribute("buyer") Buyer buyer) {
        buyerService.update(buyer);
        return "redirect:/api/showpersonal";
    }


    @RequestMapping(value = "cart", method=RequestMethod.GET)
    public String cartForm(Model model) {
        return "cart";
    }
}
