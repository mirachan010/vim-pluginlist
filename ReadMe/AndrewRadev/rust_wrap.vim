## Usage

**TODO more documentation, edge cases, fixes**

``` rust
fn example() -> u32 {
    return 42;

    if 1 > 0 {
        println!("OK");
        13
    } else {
        println!("Shocking!");
        17
    }
}
```

``` vim
:Wrap Result
```

``` rust
fn example() -> Result<u32, TODOError> {
    return Ok(42);

    if 1 > 0 {
        println!("OK");
        Ok(13)
    } else {
        println!("Shocking!");
        Ok(17)
    }
}
```

**TODO more documentation, edge cases, fixes**

## Contributing

Pull requests are welcome, but take a look at [CONTRIBUTING.md](https://github.com/AndrewRadev/rust_wrap.vim/blob/master/CONTRIBUTING.md) first for some guidelines. Be sure to abide by the [CODE_OF_CONDUCT.md](https://github.com/AndrewRadev/rust_wrap.vim/blob/master/CODE_OF_CONDUCT.md) as well.
