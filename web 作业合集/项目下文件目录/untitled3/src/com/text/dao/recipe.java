package com.text.dao;

import java.util.List;

public interface recipe {
    List<recipe> getAllRecipes();
    // 实现获取所有食谱的逻辑
    // 返回食谱列表
    recipe getRecipeById(int id);
    // 实现通过ID获取食谱的逻辑
    // 返回对应ID的食谱对象
}
