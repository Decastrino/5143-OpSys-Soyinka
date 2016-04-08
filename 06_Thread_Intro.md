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
The potential downside to this is **Time** since each thread has to wait for the global variable to be unlocked if it is locked,
the execution time increases.

##Question 3
###Describe what happens after commenting out Join.
The main program prints **'Goodbye from the main program'** while the threads are still executing rather than after the threads
complete execution which occurs if the **Join** is present. This simply shows that the **Join** is used to wait for the complete 
execution of started threads before the calling thread in this case the main program continues execution.

##Question 4
###What happens if you try to Ctrl-C out of the program before it terminates?
The program doesn't stop running, the threads keep executing.

##Question 5
##Explain bizzare condition in Threads4.py
In the code each thread tries to assign a value to the global variable an based on this variable, it should or should not print what
is in the IF bracket. The problem here is at each point where the threads are requesting for access to global variable another thread
could be working on the variable therby changing the contents and giving the other thread a **false positive** (thinking it has changed the contents meanwhile it is using the value assigned by the other thread). Also no thread waits for the other, they try to change the content of the variable, they don't wait for confirmation they both keep running.

```
for k in xrange(10000000):
        #self.lock.acquire()
        sharedNumber = 1
        if sharedNumber != 1:
            print 'A: that was weird'
        #self.lock.release()
```
We see here that the lock lines are commented out, and the thread tries to change the content of the variable, but the same variable might curently be accessed by thread B and it unknowingly uses the value assigned by the other thread.

```
for k in xrange(10000000):
        #self.lock.acquire()
        sharedNumber = 2
        if sharedNumber != 2:
            print 'B: that was weird'
        #self.lock.release()
```
Thread B also tries to access a region that might be in use by thread A, this doesn't cause the program to stop, it just uses the current value in shared number even if it isn't what it assigned.

##Question 6
Yes when the lock section is uncommented, each thread has exclusive right to **sharedNumber** at a specific point in time and neither thread prints **hat was weird** because they both have correct values at everyy point during the execution.
