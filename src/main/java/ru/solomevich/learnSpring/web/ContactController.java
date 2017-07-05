package ru.solomevich.learnSpring.web;

/**
 * Created by 15 on 14.06.2017.
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.solomevich.learnSpring.dao.EquationDaoImpl;
import ru.solomevich.learnSpring.model.Equation;
import ru.solomevich.learnSpring.service.EquationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.util.Map;

@Controller
public class ContactController {

      private EquationService equationService;

    @Autowired(required = true)
    @Qualifier(value = "equationService")
    public void setEquationService(EquationService equationService) {
        this.equationService = equationService;
    }


        @RequestMapping(value = "/",  method = RequestMethod.GET)
        public String home(Map<String, Object> map){
//            System.out.println("Контроллер работает!!!!!!!!!!!!!!");

//            System.out.println("equationDao"+equationDao.listEq().get(0).getId());
//            System.out.println("equationDao"+equationService.listEquation());
//            map.put("test", new Equation(1,"a+b"));
            map.put("equationList", equationService.listEquation());
//            map.put("equation", equationDao.listEq());

            return "test";
        }

//    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @RequestMapping(value = "/add")
    public String addEquation(@ModelAttribute("equation") Equation equation) {

       equationService.addEquation(equation);

        return "redirect:/";
    }

    @RequestMapping("/remove/{id}")
    public String deleteUser(@PathVariable("id") int id)
    {
        this.equationService.deleteEquation(id);
        return "redirect:/";
    }

    @RequestMapping(value = "/equalize")
    public String equalize(@ModelAttribute("equation") Equation equation) {

        equationService.addEquation(equationService.equalizeEquation(equation));
//        equationService.addEquation(new Equation(1, equationService.equalizeEquation(str)));
//        map.put("equalize", );
        return "redirect:/";
    }

    }
