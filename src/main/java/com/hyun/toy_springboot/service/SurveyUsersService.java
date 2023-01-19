package com.hyun.toy_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyun.toy_springboot.dao.SurveyUsersDao;

@Service
public class SurveyUsersService {
    @Autowired
    SurveyUsersDao surveyUsersDao;

    public Object getList(Object dataMap) {
        String sqlMapId = "SurveyUsers.selectListByUsers";
        Object result = surveyUsersDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object deleteOne(Object dataMap) {
        String sqlMapId = "SurveyUsers.deleteByUsers";
        Object result = surveyUsersDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteAndGetList(Object dataMap) {
        Object result = this.deleteOne(dataMap);
        result = this.getList(dataMap);
        return result;
    }

    public Object insertOne(Object dataMap) {
        String sqlMapId = "SurveyUsers.insertWithUID";
        Object result = surveyUsersDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object updateOne(Object dataMap) {
        String sqlMapId = "SurveyUsers.updateByUID";
        Object result = surveyUsersDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object updateAndGetList(Object dataMap) {
        Object result = this.updateOne(dataMap);
        result = this.getList(dataMap);
        return result;
    }

    public Object getOne(Object dataMap) {
        String sqlMapId = "SurveyUsers.selectByUID";
        Object result = surveyUsersDao.getOne(sqlMapId, dataMap);
        return result;
    }

}