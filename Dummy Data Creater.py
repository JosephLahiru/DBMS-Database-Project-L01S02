#!/usr/bin/env python
# coding: utf-8

# In[10]:


import random as r


# In[11]:


COUNT = 10
LECS = ["ICT1113", "ICT1123", "ICT1133", "ICT1143", "ICT1213", "ICT1232"]


# In[12]:


# for l in LECS:
#     for i in range(COUNT):
#         print(f'("TG/2019/{400+i}", "{l}", {round(r.uniform(30.0, 100.0), 2)}, {round(r.uniform(20.0, 85.0), 2)}),', end="")


# In[13]:


for l in LECS:
    for i in range(COUNT):
        print(f'("TG/2019/{400+i}", "{l}", T, 2020-06-0{2+i}, {r.randint(0,1)}),', end="")


# In[ ]:




