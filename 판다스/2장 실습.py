#!/usr/bin/env python
# coding: utf-8

# # 2 - 2

# In[1]:


import pandas


# In[16]:


df = pandas.read_csv('data/gapminder.tsv', sep = '\t')
# https://lvolz.tistory.com/16#3.%20%EB%8D%B0%EC%9D%B4%ED%84%B0%20%ED%8C%8C%EC%9D%BC%20%EB%A1%9C%EB%93%9C%ED%95%98%EA%B8%B0-1 데이터 불러오기 참고


# In[17]:


print(df)


# In[18]:


import pandas as pd


# In[19]:


df = pd.read_csv('data/gapminder.tsv', sep = '\t')


# In[20]:


print(df)


# In[21]:


print(type(df))


# In[22]:


print(df.shape)


# In[23]:


print(df.columns)


# In[24]:


print(df.dtypes)


# In[25]:


print(df.info())


# # 2 - 3

# In[26]:


print(df.head())


# In[27]:


country_df = df['country']


# In[29]:


print(country_df.head())


# In[30]:


print(country_df.tail())


# In[31]:


subser = df[['country', 'continent', 'year']]


# In[32]:


print(subser)


# In[33]:


country_df = df['country']
print(type(country_df))


# In[34]:


print(country_df)


# In[35]:


country_df_list = df[['country']]
print(type(country_df_list))


# In[36]:


country_df_list = df[['country']]
print(type(country_df_list))


# In[37]:


print(country_df_list)


# In[38]:


print(df['country'])


# In[39]:


print(df.country)


# In[40]:


print(df)


# In[41]:


print(df.loc[0])


# In[42]:


print(df.loc[99])


# In[43]:


number_of_rows = df.shape[0]
last_row_index = number_of_rows - 1
print(df.loc[last_row_index])


# In[44]:


print(df.tail(n=1))


# In[45]:


subset_loc = df.loc[0]
subset_head = df.head(n=1)


# In[46]:


print(type(subset_loc))


# In[47]:


print(type(subset_head))


# In[48]:


print(df.loc[[0, 99, 999]])


# In[49]:


print(df.iloc[1])


# In[50]:


print(df.iloc[99])


# In[51]:


print(df.iloc[-1])


# In[52]:


print(df.iloc[[0, 99, 999]])


# In[53]:


subset = df.loc[:, ['year', 'pop']]
print(subset)


# In[54]:


subset = df.iloc[:, [2, 4, -1]]
print(subset)


# In[55]:


small_range = list(range(5))
print(small_range)


# In[56]:


subset = df.iloc[:, small_range]
print(subset)


# In[57]:


small_range = list(range(3, 6))
print(small_range)


# In[58]:


subset = df.iloc[:, small_range]
print(subset)


# In[59]:


small_range = list(range(0, 6, 2))
subset = df.iloc[:, small_range]
print(subset)


# In[60]:


print(df.columns)


# In[61]:


small_range = list(range(3))
subset = df.iloc[:, small_range]
print(subset)


# In[62]:


subset = df.iloc[:, :3]
print(subset)


# In[63]:


small_range = list(range(3, 6))
subset = df.iloc[:, small_range]
print(subset)


# In[64]:


subset = df.iloc[:, 3:6]
print(subset)


# In[65]:


small_range = list(range(0, 6, 2))
subset = df.iloc[:, small_range]
print(subset)


# In[66]:


subset = df.iloc[:, 0:6:2]
print(subset)


# In[67]:


print(df.loc[42, 'country'])


# In[68]:


print(df.iloc[42, 0])


# In[70]:


print(df.iloc[[0, 99, 999], [0, 3, 5]])


# In[71]:


print(df.loc[[0, 99, 999], ['country', 'lifeExp', 'gdpPercap']])


# # 2 - 4

# In[72]:


print(df)


# In[73]:


print(df.groupby('year')['lifeExp'].mean())


# In[75]:


grouped_year_df = df.groupby('year')
print(type(grouped_year_df))


# In[77]:


print(grouped_year_df)


# In[78]:


grouped_year_df_lifeExp = grouped_year_df['lifeExp']
print(type(grouped_year_df_lifeExp))


# In[79]:


print(grouped_year_df_lifeExp)


# In[80]:


mean_lifeExp_by_year = grouped_year_df_lifeExp.mean()
print(mean_lifeExp_by_year)


# In[81]:


multi_group_var = df.groupby(['year', 'continent'])[['lifeExp', 'gdpPercap']].mean()


# In[82]:


print(multi_group_var)


# In[83]:


flat = multi_group_var.reset_index()
print(flat)


# In[84]:


multi_group_var = df\
    .groupby(['year', 'continent'])[['lifeExp', 'gdpPercap']]\
    .mean()


# In[85]:


multi_group_var = (df
    .groupby(['year', 'continent'])[['lifeExp', 'gdpPercap']]
    .mean()
    .reset_index()
)


# In[86]:


print(df.groupby('continent')['country'].nunique())


# In[88]:


print(df.groupby('continent')['country'].value_counts())


# In[89]:


global_yearly_life_expectancy = df.groupby('year')['lifeExp'].mean()
print(global_yearly_life_expectancy)


# In[90]:


global_yearly_life_expectancy.plot()

