package dao;

import entity.Blog;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.impl
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public interface BlogDao {
    /**
     * 查询博客总数
     * @return
     */
    public int selAllBlogCount() throws SQLException;


    public List<Blog> selAllBlog() throws Exception;


    public int insBlog(Blog blog) throws Exception;

    public int delBlog(int id) throws Exception;

    public int updBlog(Blog blog) throws Exception;

    public Blog selBlogById(int id)throws Exception;

    public List<Blog> selRightBlog() throws Exception;

    public List<Blog> selBlogPrevNext(Date time) throws Exception;

    public List<Blog> selBlogByTagName(String tagName) throws Exception;

    public List<Blog> selBlogByCategoryName(String Category) throws Exception;

    public List<Blog> selBlogByPage(int currentPage,int pageCount) throws Exception;


}
