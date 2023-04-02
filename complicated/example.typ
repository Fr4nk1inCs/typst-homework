#import "homework.typ": *

#show: homework.with(
    course: "课程作业",
    number: 0,
    name: "姓名",
    id: "PB2XXXXXXX",
    code_with_line_number: true,
)

#question(1)[
    #lorem(60)
    $ upright(i) planck.reduce (diff)/(diff t) Phi(arrow(r), t) = 
    [- planck.reduce/(2m) nabla^2 + V(arrow(r))] Phi(arrow(r), t) $
    ```rust
    fn main() {
        println!("Hello, world!");
    }
    ```
][
#lorem(10)
]

#lorem(300)

$ upright(i) planck.reduce (diff)/(diff t) Phi(arrow(r), t) = 
[- planck.reduce/(2m) nabla^2 + V(arrow(r))] Phi(arrow(r), t) $

```rust
fn main() {
    println!("Hello, world!");
}
```
