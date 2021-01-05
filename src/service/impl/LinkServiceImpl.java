package service.impl;

import dao.LinkDao;
import dao.impl.LinkDaoImpl;
import entity.Link;
import service.LinkService;

import java.sql.SQLException;
import java.util.List;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public class LinkServiceImpl implements LinkService  {
    LinkDao linkDao=new LinkDaoImpl();

    @Override
    public int selAllLinkCount() throws SQLException {
        return linkDao.selAllLinkCount();
    }

    @Override
    public List<Link> selAllLink() throws Exception {
        return linkDao.selAllLink();
    }

    @Override
    public int insLink(Link link) throws Exception {
        return linkDao.insLink(link);
    }

    @Override
    public int updLink(Link link) throws Exception {
        return linkDao.updLink(link);
    }

    @Override
    public int delLink(int id) throws Exception {
        return linkDao.delLink(id);
    }

    @Override
    public Link selLinkById(int id) throws Exception {
        return linkDao.selLinkById(id);
    }

    @Override
    public List<Link> selLinkByPage(int currentPage, int pageCount) throws Exception {
        return linkDao.selLinkByPage(currentPage,pageCount);
    }
}
