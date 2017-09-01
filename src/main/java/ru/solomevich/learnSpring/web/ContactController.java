package ru.solomevich.learnSpring.web;

/**
 * Created by 15 on 14.06.2017.
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.solomevich.learnSpring.model.Equation;
import ru.solomevich.learnSpring.service.ElementsService;
import ru.solomevich.learnSpring.service.EquationService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class ContactController {

        private EquationService equationService;
        private ElementsService elementsService;


    @Autowired(required = true)
    @Qualifier(value = "equationService")
    public void setEquationService(EquationService equationService) {
        this.equationService = equationService;
    }

    @Autowired(required = true)
    @Qualifier(value = "elementsService")
    public void setElementsService(ElementsService elementsService) {
        this.elementsService = elementsService;
    }

        @RequestMapping(value = "/",  method = RequestMethod.GET)
        public String home(Map<String, Object> map){
//            System.out.println("Контроллер работает!!!!!!!!!!!!!!");

//            System.out.println("equationDao"+equationDao.listEq().get(0).getId());
//            System.out.println("equationDao"+equationService.listEquation());
//            map.put("test", new Equation(1,"a+b"));
//            map.put("equationList", equationService.listEquation());
//            map.put("equation", equationDao.listEq());
//            map.put("lastEquation", equationService.listEquation().get(equationService.listEquation().size()-1));

            return "test";
        }

    @RequestMapping(value = "/equalizeHome")
    public String equalizeHome (Map<String, Object> map) {
        map.put("equationList", equationService.listEquation());
//        if (equationService.listEquation().size()>0){

        map.put("lastEquation", equationService.listEquation().get(equationService.listEquation().size()-1));
//        }
//        else {
//            map.put("lastEquation", null);
//        }
        return "equalizeReady";
    }



    @RequestMapping(value = "/add")
    public String addEquation(@ModelAttribute("equation") Equation equation) {

       this.equationService.addEquation(equation);

        return "redirect:/equalizeHome";
    }

    @RequestMapping("/remove/{id}")
    public String deleteUser(@PathVariable("id") int id)
    {
        this.equationService.deleteEquation(id);
        return "redirect:/list";
    }

    @RequestMapping(value = "/equalize")
    public String equalize(@ModelAttribute("equation") Equation equation) {

        equationService.addEquation(equationService.equalizeEquation(equation));
//        equationService.addEquation(new Equation(1, equationService.equalizeEquation(str)));
//        map.put("equalize", );
        return "redirect:/equalizeHome";
    }

    @RequestMapping(value = "/list")
    public String listEquation(Map<String, Object> map) {

        map.put("equationList2", equationService.listEquation());

        return "list";
    }


    @RequestMapping(value = "/equalize1")
    public String equalizeReady(Map<String, Object> map) {



        return "equalize";
    }

    @RequestMapping(value = "/tableMendeleev")
    public String tableMendeleev() {

        return "tableMendeleev/tableMendeleev";
    }

    @RequestMapping(value = "/elementDescription")
    public String elementDescription(Map<String, Object> map2, @ModelAttribute("atomicN") Integer atomicNumber) {



            map2.put("element", elementsService.listElements().get(atomicNumber-1));




        return "tableMendeleev/elementDescription";
    }








    @RequestMapping(value = "/calculation1")
    public String calculation1(  ) {


        return "calcMolWeight/calculation";
    }

    @RequestMapping(value = "/calc")
    public String calculation(@ModelAttribute("equation") Equation equation,  Map<String, Object> map, Model model) {
        equationService.addEquation(equation);

        return "redirect:calculationH";
    }

    @RequestMapping(value = "/calculationH")
    public String calculationReady (Map<String, Integer> map2) {
        Equation equation = equationService.listEquation().get(equationService.listEquation().size()-1);

        map2.put("cR", equationService.calculation(equation, elementsService.listElements()));

        return "calcMolWeight/calculationReady";
    }

    }
