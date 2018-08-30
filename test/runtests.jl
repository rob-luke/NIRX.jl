using Test
using NIRX
using DataDeps

register(DataDep("NIRX.jl single test file 1", "Single fNIRS experiment recording",
    ["https://s3.amazonaws.com/test.robertluke.net/fNIRS-test-data.zip"];
    post_fetch_method = [file->run(`unzip $file`)]
))

triggers, header_info, info, wl1, wl2, config = read_NIRX(string(datadep"NIRX.jl single test file 1", "/fNIRS-test-data"))

@test size(triggers) == (62, 2)
@test length(header_info) == 22
@test length(info) == 7
@test size(wl1) == (7008, 256)
@test size(wl2) == (7008, 256)
@test length(config) == 10
