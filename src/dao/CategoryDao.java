package dao;

import entity.CategoryBlogCount;
import entity.Category;

import java.sql.SQLException;
import java.util.List;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.impl
 * @version: 1.0
 * Copyright(c)2020-2025 All rights reserved.
 */
public interface CategoryDao {
    /**
     * 查询友情链接总数
     * @return
     */
    public int selAllCategoryCount() throws SQLException;

    public List<Category> selAllCategory() throws  Exception;

    public int insCategory(Category category) throws  Exception;

    public int delCategory(int id) throws Exception;

    public int updCategory(Category category) throws Exception;

    public Category selCategoryById(int id) throws  Exception;

    public List<CategoryBlogCount> selCategoryBlogCount() throws Exception;

    //分页查询
    public List<Category> selCategoryByPage(int currentPage, int pageCount) throws Exception;


}
