# NIRX.jl

[![Tests](https://github.com/rob-luke/NIRX.jl/actions/workflows/Tests.yml/badge.svg)](https://github.com/rob-luke/NIRX.jl/actions/workflows/Tests.yml)
[![codecov](https://codecov.io/gh/rob-luke/NIRX.jl/branch/master/graph/badge.svg?token=PaQqxNHQjK)](https://codecov.io/gh/rob-luke/NIRX.jl)



Read [NIRX](https://nirx.net/) functional near-infrared spectroscopy files in Julia.


## Installation

```julia
] add NIRX
```


## Usage

Read NIRX data:
```julia
triggers, header_info, info, wl1, wl2, config = read_NIRX("path/to/your/data")
```


## Tests

Tests are automatically run on continuous integration servers. Run the tests locally:
```julia
] test NIRX
```
