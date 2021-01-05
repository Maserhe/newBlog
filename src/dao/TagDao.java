package dao;

import entity.Tag;

import java.sql.SQLException;
import java.util.List;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.impl
 * @version: 1.0
 * Copyright(c)2020-2025 All rights reserved.
 */
public interface TagDao {
    /**
     * 查询标签的总数
     * @return
     */
    public int selAllTagCount() throws SQLException;

    /**
     * 新增标签
     * @param tag
     * @return
     * @throws Exception
     */
    public int insTag(Tag tag) throws Exception;

    /**
     * 查询所有标签
     * @return
     * @throws Exception
     */
    public List<Tag> selAllTag() throws Exception;

    /**
     * 删除标签
     * @param id
     * @return
     * @throws Exception
     */
    public int delTag(int id) throws Exception;


    //分页查询
    public List<Tag> selTagByPage(int currentPage, int pageCount) throws Exception;



}
