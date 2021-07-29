## Ruby concurrency benchmark

This projects run a benchmark using different concurrency strategies in Ruby.

### Global results

Fib(30) - 300 iterations
```bash
root@e08a065b4a11:/app# ruby test/benchmark.rb

            user        system    total     real
synchronous 19.862301   0.094784  19.957085 (19.994295)
fork        0.000000    0.069206  21.893182 (11.011452)
thread      20.645219   0.222535  20.867754 (20.929861)
ractor      21.933443   0.230315  22.163758 (11.142093)
```

#### Synchronous

Fib(30) - 300 iterations
```bash
root@e08a065b4a11:/app# ruby test/synchronous.rb
            user        system    total     real
synchronous 19.862301   0.094784  19.957085 (19.994295)
```

Memory usage
```
from 3.4MiB to 11.2MiB
```

#### Async using Process forking

Fib(30) - 300 iterations
```bash
root@e08a065b4a11:/app# ruby test/async_fork.rb

       user        system    total     real
fork   0.000000    0.069206  21.893182 (11.011452)
```

Memory usage
```
from 3.4MiB to 135MiB
```

#### Async using Threads

Fib(30) - 300 iterations
```bash
root@e08a065b4a11:/app# ruby test/async_threads.rb

         user        system    total     real
thread   20.645219   0.222535  20.867754 (20.929861)
```

Memory usage
```
from 3.4MiB to 25MiB
```

#### Async using Ractors

Fib(30) - 300 iterations
```bash
root@e08a065b4a11:/app# ruby test/async_ractors.rb

        user        system    total     real
ractor  21.933443   0.230315  22.163758 (11.142093)
```

Memory usage
```
from 3.4MiB to 27MiB
```
