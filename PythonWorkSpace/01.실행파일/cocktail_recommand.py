# -*- coding: utf-8 -*-
import numpy as np
import pandas as pd
import csv
from sklearn.feature_extraction.text import CountVectorizer  # 피체 벡터화
from sklearn.metrics.pairwise import cosine_similarity  # 코사인 유사도
#################################################################건드리지 마세요#####################################################
#############################3학년 졸업작품 입니다.##############################################################
cocktail_recipe = pd.read_csv('C:/PythonWorkSpace/cocktail_recipe.csv')

cocktail_recipe = cocktail_recipe[['cocktailName', 'cocktailMaterials','cocktailCategory','cocktailAbv','cocktailLevel','cocktailMbti']]
#print(cocktail_recipe.head())

test = pd.read_csv("C:/PythonWorkSpace/csv_test.csv")
test = test[['ctest']]

#숫자 -> 문자
cocktail_recipe['cocktailAbv'] = cocktail_recipe['cocktailAbv'].astype('str')

#칵테일 이름
count_vect_Name = CountVectorizer(min_df=0, ngram_range=(1,2))
cocktail_Name = count_vect_Name.fit_transform(cocktail_recipe['cocktailName'])
#텍스트 간의 코사인 유사도 따지기
cocktail_simi_Name = cosine_similarity(cocktail_Name, cocktail_Name) 
cocktail_simi_Name_sorted_ind = cocktail_simi_Name.argsort()[:, ::-1]
#칵테일 재료
count_vect_materials = CountVectorizer(min_df=0, ngram_range=(1,2))
cocktail_materials = count_vect_materials.fit_transform(cocktail_recipe['cocktailMaterials'])
cocktail_simi_materials = cosine_similarity(cocktail_materials, cocktail_materials) 
cocktail_simi_materials_sorted_ind = cocktail_simi_materials.argsort()[:, ::-1]
#칵테일 카테고리
count_vect_category = CountVectorizer(min_df=0, ngram_range=(1,2))
cocktail_category = count_vect_category.fit_transform(cocktail_recipe['cocktailCategory'])
cocktail_simi_category = cosine_similarity(cocktail_category, cocktail_category) 
cocktail_simi_category_sorted_ind = cocktail_simi_category.argsort()[:, ::-1]
#칵테일 도수
count_vect_abv = CountVectorizer(min_df=0, ngram_range=(1,2))
cocktail_abv = count_vect_abv.fit_transform(cocktail_recipe['cocktailAbv'])
cocktail_simi_abv = cosine_similarity(cocktail_abv, cocktail_abv) 
cocktail_simi_abv_sorted_ind = cocktail_simi_abv.argsort()[:, ::-1]

#칵테일 난이도
'''
count_vect_level = CountVectorizer(min_df=0, ngram_range=(1,2))
cocktail_level = count_vect_level.fit_transform(cocktail_recipe['cocktailLevel'])
cocktail_simi_level = cosine_similarity(cocktail_level, cocktail_level) 
cocktail_simi_level_sorted_ind = cocktail_simi_level.argsort()[:, ::-1]

'''
#가중치 부여
cocktail_simi_co=(
                    +cocktail_simi_materials * 0.5
                    +cocktail_simi_category * 0.4
                    +cocktail_simi_Name * 0.3
                    +cocktail_simi_abv * 0.2
                    #np.repeat([cocktail_recipe['cocktailAbv'].values],len(cocktail_recipe['cocktailAbv']) , axis=0) * 0.002
                    #+cocktail_simi_level *0.1
                    )

cocktail_simi_co_sorted_ind = cocktail_simi_co.argsort()[:, ::-1]

def find_simi_cocktail_name(cocktail_recipe, sorted_ind, cocktail_name, top_n=10):
    
  
    cocktail_title = cocktail_recipe[cocktail_recipe['cocktailName'] == cocktail_name]
    cocktail_index = cocktail_title.index.values
    similar_indexes = sorted_ind[cocktail_index, :(top_n)]
    similar_indexes = similar_indexes.reshape(-1)
    
    return cocktail_recipe.iloc[similar_indexes]
    
#값만 가져옴
cocktail_var = test.iat[0,0]

# cocktail_var 해당 칵테일과 비슷한 칵테일 n개 추천
a = find_simi_cocktail_name(cocktail_recipe, cocktail_simi_co_sorted_ind, cocktail_var, 6) 
print(a)

a.to_csv("C:/PythonWorkSpace/weneed.csv", encoding='utf-8')


