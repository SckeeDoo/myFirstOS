# Laboratoy Work 1 at Operation Systems

###This is a short tutotial for creating very first operation system.

##1. Getting some stuff installed.

First we need to install some tools:
- Flat Assembly. This one helps us to compile and run .asm files.
- Oracle Virtual Box. Using Virtual Box we can create on our computer a virtual machine that eventually will run our operation system.
- Also I used Windows 10 operation system.

##2. Lets write some code in assembly.

~~~
mov ax, 9ch
mov ss, ax
mov sp, 4096d
mov ax, 7c0h
mov ds, ax

mov  dx, msg
mov al, 37h
int 10h
jmp $

times 510-($-$$) db 0
dw 0xAA55
~~~

3. Lets move deeper.
After compile this code in the same directory where you saved you .asm file, automatically will be created a .bin file. One important thing is to convert this .bin file into Image so we can boot it to our machine. To do this write this command in cmd:
~~~
copy bootLoader.bin /b bootLoader.img
~~~
After this in the same directory will be created a image file.

##3. Creating Virtual Machine and boot the image.

![GitHub Logo](http://imgur.com/wkTv1cy)
Format: ![Alt Text](url)


