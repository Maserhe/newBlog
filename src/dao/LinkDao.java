package dao;

import entity.Link;

import java.sql.SQLException;
import java.util.List;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.impl
 * @version: 1.0
 * Copyright(c)2020-2025 All rights reserved.
 */
public interface LinkDao {
    /**
     * 查询友情链接总数
     * @return
     */
    public int selAllLinkCount() throws SQLException;

    public List<Link> selAllLink() throws Exception;

    public int insLink(Link link) throws Exception;

    public int updLink(Link link) throws Exception;

    public int delLink(int id) throws Exception;

    public Link selLinkById(int id) throws Exception;


    //分页查询
    public List<Link> selLinkByPage(int currentPage, int pageCount) throws Exception;
}
