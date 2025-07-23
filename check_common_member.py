list1=[10,20,30]
set1=set(list1)
list2=[40,50,60]
set2=set(list2)
result=set1&set2
if (result==set()):
    print("False")
else:
    print("True")
