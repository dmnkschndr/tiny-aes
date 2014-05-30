### Tiny AES128 in C

This is a small portable implementation of AES128 in C. The module is self-hosting and intented to be portable. I've successfully tested on Intel 64bit, 32bit ARM Cortex-M3 and 8 bit Atmel Mega16.

AES128 ECB is symmetric, so you use the same function for encrypting and decrypting.

The module uses just a bit more than 200 bytes of RAM and 1K ROM when compiled for ARM.
YMMV depending on target platform and optimization skills of your compiler.


GCC size output when compiled for ARM:


    $ arm-none-eabi-gcc -Os -c aes.c -o aes.o
    $ size aes.o
       text    data     bss     dec     hex filename
       1079       0     204    1283     503 aes.o
    $ arm-none-eabi-gcc -O2 -c aes.c -o aes.o
    $ size aes.o
       text    data     bss     dec     hex filename
       1024       0     204    1228     4cc aes.o


Somehow, -O2 is a bit smaller than -Os with this compiler. I am using Mentor Graphics ARM toolchain:

    $ arm-none-eabi-gcc --version
    arm-none-eabi-gcc (GNU Tools for ARM Embedded Processors) 4.8.3 20131129 (release) [ARM/embedded-4_8-branch revision 205641]
    Copyright (C) 2013 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


The implementation is verified against the data in:

**[National Institute of Standards and Technology Special Publication 800-38A 2001 ED](http://csrc.nist.gov/publications/nistpubs/800-38a/sp800-38a.pdf) Appendix F: Example Vectors for Modes of Operation of the AES.**
