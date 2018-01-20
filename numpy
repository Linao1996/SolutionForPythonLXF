import numpy as np

vector = np.array([10, 20, 30])
matrix = np.array([[5, 10, 15], [20, 25, 30], [35, 40, 45]])
print(vector.shape)
print(matrix.shape)

world_alcohol = np.genfromtxt("world_alcohol.csv", delimiter=",")
print(type(world_alcohol))

world_alcohol = np.genfromtxt('world_alcohol.csv', delimiter=',')
world_alcohol_dtype = world_alcohol.dtype
print(world_alcohol_dtype)

world_alcohol = np.genfromtxt('world_alcohol.csv', delimiter=',', dtype='U75', skip_header=1)
print(world_alcohol)

world_alcohol = np.genfromtxt('world_alcohol.csv', delimiter=',', skip_header=1, dtype='U75')
uruguay_other_1986 = world_alcohol[1][4]
third_country = world_alcohol[2][2]




world_alcohol = np.genfromtxt('world_alcohol.csv',delimiter = ',',skip_header = 1,dtype = 'U75')
countries_canada = (world_alcohol[:,2] == 'Canada')
years_1984 =(world_alcohol[:,0] == '1984')





world_alcohol = np.genfromtxt('world_alcohol.csv',delimiter = ',',skip_header = 1,dtype = 'U75')
is_algeria_and_1986 = (world_alcohol[:,0] == '1986')&(world_alcohol[:,2]=='Algeria')
rows_with_algeria_and_1986 = world_alcohol[is_algeria_and_1986,:]
print(rows_with_algeria_and_1986)





worldalcohol = np.genfromtxt('world_alcohol.csv',delimiter = ',',skip_header = 1,dtype = 'U75')
is_1986 = (world_alcohol[:,0] == '1986')
world_alcohol[is_1986,0] = '2014'
is_wine = (world_alcohol[:,3] == 'Wine')
world_alcohol[is_wine,3] = 'Grog'




import numpy as np
world_alcohol = np.genfromtxt('world_alcohol.csv',delimiter = ',',skip_header = 1,dtype = 'U75')
is_value_empty = world_alcohol[:,4] == ''
world_alcohol[is_value_empty,4] = '0'




import numpy as np
world_alcohol = np.genfromtxt('world_alcohol.csv',delimiter = ',',skip_header = 1,dtype = 'U75')
alcohol_consumption = world_alcohol[:,4]
is_empty = alcohol_consumption == ''
alcohol_consumption[is_empty] = '0'
alcohol_comsumption = alcohol_consumption.astype(float)




world_alcohol = np.genfromtxt('world_alcohol.csv',delimiter = ',',skip_header = 1,dtype = 'U75')
alcohol_consumption = world_alcohol[:,4]
is_empty = alcohol_consumption == ''
alcohol_consumption[is_empty] = '0'
alcohol_consumption = alcohol_consumption.astype(float)
total_alcohol = alcohol_consumption.sum()
average_alcohol = alcohol_consumption.mean()
print(total_alcohol)
print(average_alcohol)



world_alcohol = np.genfromtxt('world_alcohol.csv',delimiter = ',',skip_header = 1,dtype = 'U75')

is_canada_1986 = (world_alcohol[:,0] == '1986') & (world_alcohol[:,2] == 'Canada')
canada_1986 = world_alcohol[is_canada_1986,:]
is_empty = canada_1986[:,4] == ''
canada_1986[is_empty,4] = '0'
canada_alcohol = canada_1986[:,4].astype(float)
total_canadian_drinking = canada_alcohol.sum()
