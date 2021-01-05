package service.impl;

import dao.CategoryDao;
import dao.impl.CategoryDaoImpl;
import entity.CategoryBlogCount;
import entity.Category;
import service.CategoryService;

import java.sql.SQLException;
import java.util.List;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public class CategoryServiceImpl  implements CategoryService {

    CategoryDao categoryDao = new CategoryDaoImpl();

    @Override
    public int selAllCategoryCount() throws SQLException {
        return categoryDao.selAllCategoryCount();
    }

    @Override
    public List<Category> selAllCategory() throws Exception {
        return categoryDao.selAllCategory();
    }

    @Override
    public int insCategory(Category category) throws Exception {
        return categoryDao.insCategory(category);
    }

    @Override
    public int delCategory(int id) throws Exception {
        return categoryDao.delCategory(id);
    }

    @Override
    public int updCategory(Category category) throws Exception {
        return categoryDao.updCategory(category);
    }

    @Override
    public Category selCategoryById(int id) throws Exception {
        return categoryDao.selCategoryById(id);
    }

    @Override
    public List<CategoryBlogCount> selCategoryBlogCount() throws Exception {
        return categoryDao.selCategoryBlogCount();
    }

    @Override
    public List<Category> selCategoryByPage(int currentPage, int pageCount) throws Exception {
        return categoryDao.selCategoryByPage(currentPage,pageCount);
    }
}
