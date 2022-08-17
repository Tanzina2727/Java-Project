package com.controller;

import com.model.Medicine;
import com.model.User;
import com.service.ManageMedsService;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.beans.PropertyEditorSupport;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/api")
public class AdminMedicineController {

    private final ManageMedsService manageMedsService;


    public AdminMedicineController(ManageMedsService manageMedsService) {
        this.manageMedsService = manageMedsService;

    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);

    }
    @RequestMapping("/manage")
    public String medicineform(Model model, @RequestParam(required = false) String sortKey) {
        List<Medicine> medicines = new ArrayList<>();
        medicines = manageMedsService.getAll();
        model.addAttribute("medicines", medicines);
        return "medicine_list";
    }



    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String medicineCreateForm(Model model) {
        Medicine medicine = new Medicine();
        model.addAttribute("medicine", medicine);
        return "create_medicine_form";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@Valid @ModelAttribute("medicine") Medicine medicine, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "create_medicine_form";
        }
        manageMedsService.save(medicine);
        return "redirect:/api/one";
    }

    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String medicineUpdateForm(@RequestParam("medsId") int id, Model model) {
        Medicine medicine = manageMedsService.get(id);

        model.addAttribute("medicine", medicine);

        return "update-medicine-form";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@ModelAttribute("medicine") Medicine medicine) {
        manageMedsService.update(medicine);
        return "redirect:/api/list";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam("medsId") int id) {
        manageMedsService.delete(id);
        return "redirect:/api/list";
    }

    @RequestMapping("/search")
    public String delete(@RequestParam("searchValue") String medsname, Model model) {
        List<Medicine> medicines = manageMedsService.getAll(medsname);
        model.addAttribute("medicines", medicines);
        return "medicine-list";
    }

}
