package service.impl;

import dao.TagDao;
import dao.impl.TagDaoImpl;
import entity.Tag;
import service.TagService;

import java.sql.SQLException;
import java.util.List;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public class TagServiceImpl implements TagService {

    TagDao tagDao=new TagDaoImpl();

    @Override
    public int selAllTagCount() throws SQLException {
        return tagDao.selAllTagCount();
    }

    @Override
    public int insTag(Tag tag) throws Exception {
        return tagDao.insTag(tag);
    }

    @Override
    public int delTag(int id) throws Exception {
        return tagDao.delTag(id);
    }

    @Override
    public List<Tag> selAllTag() throws Exception {
        return tagDao.selAllTag();
    }

    @Override
    public List<Tag> selTagByPage(int currentPage, int pageCount) throws Exception {
        return tagDao.selTagByPage(currentPage,pageCount);
    }
}
