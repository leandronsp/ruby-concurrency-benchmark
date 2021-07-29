## Ruby concurrency benchmark

This project runs a benchmark using different concurrency strategies in Ruby.

### Global results

Considering:

- Fib(30)
- 300 iterations
- Initial memory of 3.4MiB

```bash
root@e08a065b4a11:/app# ruby test/benchmark.rb

            time        memory
synchronous 19.994295   11MiB
fork        11.011452   135MiB
thread      20.929861   25MiB
ractor      11.142093   27MiB
```
