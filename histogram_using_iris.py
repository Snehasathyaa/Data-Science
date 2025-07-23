from matplotlib import pyplot
import pandas
from sklearn.datasets import load_iris


iris = load_iris()
df = pandas.DataFrame(iris.data, columns=iris.feature_names)


df.rename(columns={'petal length (cm)': 'petal.length'}, inplace=True)

fig, ax = pyplot.subplots(1, 1)
df['petal.length'].plot(kind='hist', edgecolor="black", bins=49)
ax.set_title("Histogram")
ax.set_xticks([1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0, 5.5, 6.0, 6.5, 7.0])
ax.set_yticks([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19])
ax.set_xlabel('Petal Length')
pyplot.show()
