# NIRX.jl

[![Build Status](https://travis-ci.com/rob-luke/NIRX.jl.svg?branch=master)](https://travis-ci.com/rob-luke/NIRX.jl)

Read NIRX files in Julia


## Installation

Until this package is registered use...
```julia
Pkg.add("https://github.com/rob-luke/NIRX.jl.git")
```


## Usage

Read a NIRX folder using ...
```julia
triggers, header_info, info, wl1, wl2, config = read_NIRX("path/to/your/data")
```

## Tests

Tests are automatically run on continuous integration servers, the icon above indicates if they are passing. To run the tests locally run...
```julia
Pkg.test("NIRX")
```
