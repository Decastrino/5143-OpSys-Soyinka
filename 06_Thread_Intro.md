#Assignment 6 Thread Intro

Name: Olayinka Soyinka 

Course: 5143 Operating Sysytems 

Date: 07 April 2016

Mustang ID: M20230833

##Question 1
###Difference between Threads1.py and Threads2.py  
Threads1.py has threads that run independently without need to access the same memory space at any point during their execution,
they both have copies of their local variables. On the other hand Threads2.py uses a global variable **shared counter** that
both threads try to access together at some point during execution which therefore leads to a race condition.  

Declaration of globale variable:  
````    sharedCounter = 0 ````
    
where **Thread A** tries to access the global variable  
```  
global sharedCounter  
for k in xrange(10000000):  
    if k % 100000 == 0:    
        print 'A:', k, sharedCounter    
haredCounter += 1
```
where **Thread B** tries to access the same glbal variable  
```
global sharedCounter
for k in xrange(10000000):
    if k % 100000 == 0:
        print 'B:', k, sharedCounter
sharedCounter += 1
```
##Question 2
###After running Thread3.py does it fix the problems that occured in Threads2.py? What's the down-side?  
Yes, the code Threads3.py does fix the race condition in Threads2.py by using the lock method, I.E whenever one of the threads  
gets to the area where they are to access the global variable, they thread locks this access therefore no other thread has access  
to the variable till the process is done and unlocks the variable.

``` 
self.lock.acquire() #line of code that locks access
if k % 100000 == 0:
    print 'A:', k, sharedCounter
sharedCounter += 1
self.lock.release() #line of code that unlocks access after computation is done
``` 
