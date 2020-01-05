# stk - Spencer's Tool Kit

stk is a collection of implementation agnostic, single-file R5RS Scheme libraries covering a wide range of use cases. These currently include:
- Basic list operations
- Colored terminal output
- File I/O
- Linear algebra
- Statistics

## FAQ

### Why Scheme?

Why not Scheme?

### No, really, why Scheme?

Scheme is a simple, yet powerful language with a clearly defined standard. Scheme does not have the constant churn that plague more popular languages (Javascript, Python, etc.). The main issue, in my opinion, is the lack of portability between implementations due to ecosystem fragmentation. I have decided to implement libraries that I would like to use in such a way that I am not tied down to any particular implementation.

### Which Scheme implementations are supported?

While I have primarily tested with Chicken Scheme and MIT Scheme these libraries are intended to be compatible with any implementation supporting the R5RS standard.

### Why should I use these libraries?

Honestly, you probably should not use these libraries at this time. Many features remain unimplemented and this project cannot take advantage of the C FFI present in some Scheme implementations. If you are using Scheme in production you will be better served learning the intricacies of your implementation of choice. 

### How are versions determined?

This project does not have formal releases. Each library is assigned a version based on the date (mmddyyy) that it was last updated. The version can be viewed at the top of each file. 

### What are the licensing restrictions?

All code (except for the read-file function in stk-io) is released under the BSD-3 license. stk-io's read-file function is currently borrowed from Stack Overflow and is thus made available under the Creative Commons Attribution-Share Alike license, based on the licensing terms provided by Stack Overflow at the time of copying. 
