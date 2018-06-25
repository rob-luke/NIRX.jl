using Test
using NIRX

if ~isdir("data")
        @info "Downloading data"
        download("https://s3.amazonaws.com/test.robertluke.net/fNIRS-test-data.zip", "data.zip")
        run(`unzip data -d data`)
else
        @info "Data already exists"
end

triggers, header_info, info, wl1, wl2, config = read_NIRX("data/fNIRS-test-data")

@test size(triggers) == (62, 2)
