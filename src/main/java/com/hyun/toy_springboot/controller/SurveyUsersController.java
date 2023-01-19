package com.hyun.toy_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hyun.toy_springboot.service.SurveyUsersService;

@Controller
@RequestMapping(value = "/surveyUsers")
public class SurveyUsersController {

    @Autowired
    SurveyUsersService surveyUsersService;

    // list
    @RequestMapping(value = { "/list", "/", "" }, method = RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = surveyUsersService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("l4hotel/list");
        return modelAndView;
    }

    // delete
    @RequestMapping(value = { "/delete/{uniqueId}" }, method = RequestMethod.POST)
    public ModelAndView delete(@RequestParam Map<String, Object> params, @PathVariable String uniqueId,
            ModelAndView modelAndView) {
        params.put("USER_ID", uniqueId);
        Object resultMap = surveyUsersService.deleteAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("l4hotel/list");
        return modelAndView;
    }

    // INSERT

    @RequestMapping(value = { "/insert" }, method = RequestMethod.POST)
    public String insert(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        surveyUsersService.insertOne(params);
        return "redirect:/surveyUsers/list";
    }

    // UPDATE

    @RequestMapping(value = { "/update" }, method = RequestMethod.POST)
    public ModelAndView update(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = surveyUsersService.updateAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("l4hotel/list");
        return modelAndView;
    }

    // form
    @RequestMapping(value = { "/form" }, method = RequestMethod.GET)
    public ModelAndView form(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        modelAndView.setViewName("l4hotel/edit");
        return modelAndView;
    }

    // edit
    @RequestMapping(value = { "/edit/{uniqueId}" }, method = RequestMethod.GET)
    public ModelAndView edit(@RequestParam Map<String, Object> params,
            @PathVariable String uniqueId,
            ModelAndView modelAndView) {
        params.put("USER_ID", uniqueId);
        Object resultMap = surveyUsersService.getOne(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("l4hotel/edit");
        return modelAndView;
    }

}
