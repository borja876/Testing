
# coding: utf-8

# In[1]:


import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
get_ipython().magic('matplotlib inline')


# In[2]:


# Make the random function consistent and replicable.
np.random.seed(1221)

# Make a blank data frame.
df = pd.DataFrame()
df['rand'] = np.random.rand(100)  # Add a column of random numbers between 0 and 1.
df['rand_sq'] = df['rand'] ** 2
df['rand_shift'] = df['rand'] + 2

# When creating a data frame an index column of counts is created, counting from 0.
# Here we do a few transforms on that index to create some extra columns.
df['counts_sq'] = df.index ** 2 
df['counts_sqrt'] = np.sqrt(df.index)


# In[3]:


plt.figure(figsize=(10, 5))

plt.subplot(1, 2, 1)
plt.plot(df['rand'], color='purple')
plt.ylabel('Values')
plt.title('Random Series')

plt.subplot(1, 2, 2)
plt.plot(df['rand_shift'], color='green')
plt.ylabel('Shifted Values')
plt.title('Shifted Series')
plt.show()


# In[4]:


plt.figure(figsize=(10, 5))

plt.subplot(1, 2, 1)
plt.plot(df['rand'], color='purple')
plt.ylabel('Values')
plt.title('Random Series')

plt.subplot(1, 2, 2)
plt.scatter(x = df['rand_sq'], y = df['rand'], color='green')
plt.ylabel('Squared Values')
plt.title('Squared Series')

plt.tight_layout()
plt.show()


# In[5]:


np.random.seed(111) #sets the seed for random generation
x = np.random.normal(10, 5, 1000) #Generate 1000 Random Variables
plt.hist(x)


# In[6]:


x = np.random.normal(10, 5, 1000)
y = np.random.normal(15, 5, 10000)
plt.hist(x, color='red', bins=np.arange(-10, 40), alpha=.5)  # alpha just controls the opacity
plt.hist(y, color='blue', bins=np.arange(-10, 40), alpha=.5)
plt.title('Histogram Demo')
plt.xlabel('Random Values')
plt.show()


# In[7]:


x = np.random.normal(10, 5, 1000)
y = np.random.normal(15, 5, 10000)
plt.hist(x, normed=True, color='red', bins=np.arange(-10, 40), alpha=.5) #alpha just controls the opacity
plt.hist(y, normed=True, color='blue', bins=np.arange(-10, 40), alpha=.5)
plt.title('Histogram Demo')
plt.xlabel('Random Values')
plt.show()


# In[8]:


x = np.random.normal(10, 5, 1000)
plt.hist(x, bins=100, normed=True, color='red')
plt.title('Histogram Demo')
plt.xlabel('Random Values')
plt.show()


# In[9]:


np.random.seed(111)
x = np.random.normal(10, 5,1000)
plt.boxplot(x)
plt.show()


# In[ ]:




