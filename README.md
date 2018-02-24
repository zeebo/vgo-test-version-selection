# vgo version selection

we have the dependency list:

	a1.0 => b1.0, c1.0
	b1.0 => c1.1
	c1.0 => d1.0
	c1.1 => e1.0

the question is, does the build list for a1.0 include d1.0?

# answers

```
$ vgo list -m
MODULE              VERSION
github.com/zeebo/a  -
github.com/zeebo/b  v1.0.0
 => ../b
github.com/zeebo/c  v1.1.0
 => ../c1.1
github.com/zeebo/e  v1.0.0
 => ../e

$ vgo build -v
github.com/zeebo/e
github.com/zeebo/c
github.com/zeebo/b
github.com/zeebo/a

$ ./a
e
c1.1
b
a
```

c1.0 is never even looked at as far as i can tell. even if the go.mod is
invalid. so yep d isn't even possibly considered.