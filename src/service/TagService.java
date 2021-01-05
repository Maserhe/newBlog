package service;

import entity.Tag;

import java.sql.SQLException;
import java.util.List;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public interface TagService {
    public int selAllTagCount() throws SQLException;

    public int insTag(Tag tag) throws Exception;

    public int delTag(int id) throws Exception;

    public List<Tag> selAllTag() throws Exception;

    //分页查询
    public List<Tag> selTagByPage(int currentPage, int pageCount) throws Exception;


}
