*[absabswpch04p01](abswpch04p01)/[absabswpch04p01.ipynb](abswpch04p01.ipynb):*  
**Comma Code**
Say you have a list value like this:  
```python
spam = ['apples', 'bananas', 'tofu', 'cats']
```
Write a function that takes a list value as an argument and returns a string with all the items separated by a comma and a space, with and inserted before the last item. For example, passing the previous spam list to the function would return 'apples, bananas, tofu, and cats'. But your function should be able to work with any list value passed to it.


```python
#------------------------------------------------------------------------------
print('*'*80)
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------

#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
def fun1(ls1):
	return ', '.join(ls1[:-1]) + ' and ' + ls1[-1]
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
spam = ['apples', 'bananas', 'tofu', 'cats', 'Dogs']
print('Returned from function:', fun1(spam))
#ls1 = input('Enter a list of string items: ')
#print('Returned from function:', fun1(ls1))
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------

#------------------------------------------------------------------------------

#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
print('*'*80)
#------------------------------------------------------------------------------
```

    ********************************************************************************
    Returned from function: apples, bananas, tofu, cats and Dogs
    ********************************************************************************
    


```python

```
