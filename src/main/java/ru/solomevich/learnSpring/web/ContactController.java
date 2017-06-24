package ru.solomevich.learnSpring.web;

/**
 * Created by 15 on 14.06.2017.
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.solomevich.learnSpring.dao.EquationDaoImpl;
import ru.solomevich.learnSpring.model.Equation;
import ru.solomevich.learnSpring.service.EquationService;

import java.util.Map;

@Controller
public class ContactController {

    @Autowired
    EquationService equationService;

    EquationDaoImpl equationDao = new EquationDaoImpl();
        @RequestMapping(value = "/")
        public String home(Map<String, Object> map){
            System.out.println("Контроллер работает!!!!!!!!!!!!!!");

            System.out.println("equationDao"+equationDao.listEq().get(0).getId());
            System.out.println("equationDao"+equationService.listEquation());
            map.put("test", new Equation(1,"a+b"));
            map.put("equationList", equationService.listEquation());
            map.put("equation", equationDao.listEq());

            return "test";
        }




    }
