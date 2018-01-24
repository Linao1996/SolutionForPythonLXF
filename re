import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from basemap import Basemap
import re

test = '010-12345'
s = r'^\d{3}\-\d{3,8}$'

if re.match(s, test):
    print('OK')
else:
    print('Failed')

test2 = 'a b  c,;d , e'
results = re.split(r'[\s\,\;]+', test2)
print(results)

s2 = r'^(\d{3})-(\d{3,8})$'
m = re.match(s2, test)
print(m.group(0))
print(m.group(1))
print(m.group(2))

m = re.match(r'^(\d+)(0*)$', '102300').groups()
print(m)  # greed match ('102300','')
m = re.match(r'^(\d+?)(0*)$','102300').groups()
print(m)

re_tel = re.compile(r'^(\d{3})-(\d{3,8})$')
print(re_tel.match(test).groups())
# print(re_tel.match(test2).groups())
print(type(re_tel.match(test).groups())) #return a tuple
