package entity;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.domain
 * @version: 1.0
 * Copyright(c)2020-2025 All rights reserved.
 */
public class CategoryBlogCount {
    public String name;
    public int count;

    public CategoryBlogCount() {
    }

    public CategoryBlogCount(String name, int count) {
        this.name = name;
        this.count = count;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "CategoryBlogCount{" +
                "name='" + name + '\'' +
                ", count=" + count +
                '}';
    }
}
