#Chapter 2 Review Questions

Name: Olayinka Soyinka 

Course: 5143 Operating Sysytems 

Date: 16 Feb 2016 

##Question 1

The three objectives to OS Design are
- Covenience: Making the computer user friendly.
- Efficiency: Allocate and user computer resources effectively.
- Ability to evolve: Be created in such a modular way to allow improvements and maintenace without disruption to the wrokings of the system.

##Question 2

**Kernel**: This is a low level program usually a part of the entire operating system that manages input and ouput requests from applications, how processors execute and other hardware related duties. It also has a protective function prevents users from directly tampering with the hardware. The **Kernel** can be understood better in a Linux system as the kernel is loosely coupled from other aspects of the operating system as opposed to Windows system which is tightly coupled.

##Question 3

**Multi-Prograamming**: This is when several programs run on a single rocessor, said programs don't run at the same time but rather they are loaded in and out when interrupts occur or the current program executes completely. **I.E** Proram A starts runnin if an interrupt occurs, it loads in another program say B rather than wait for A, this saves precious computer time

##Question 4
**Process**: This can be defined as a program in it's execution state.

##Question 5

The execution contest of an Operating system is the internal data about a process by the Operating System to control and supervise said process. It's used by the OS to
- Predict instructions that will be executed subsequently
- Retrieve and send data from main memory
- Handle interrupts.

##Question 6
Five storage management responsibilities
- **Isolation**: Prevent processes from interfering with each other's memory.
- **Memmory allocation and management**: Dynamically give out to processes in need and retrive them when done.
- **Modular programming support**: Present programmers with the opportunity to create, modify and destroy program modules dynamically.
- **Protection and access control**: Control memory spaces currently in use by processes and allow processes to communicate when needed and block them at every other time.
- **Long term storage**:  Provide applications with the ability to save data that needs to be stored even after the computer is put off.

##Question 7

- **Real address**: This refers to the hardware address of physical memory I.e It is directly linked tto the address on RAM and when a process references this, it is going directly to the RAM.
- **Virtual address**: A virtual address is a sort of link to a physical address, it uses a page table to map itself to a location on the physical device to work.

##Question 8

**Round-Robin scheduling**:  This is a scheduling technique whereby the operating system allows all processes to run for a fixed amount of time in circles, it doesn't give priority to any process and doesn't starve any process, all processes and terminate either when the fixed time is up or it's done excuting before the time runs out.

##Question 9


