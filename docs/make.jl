using MachineElements
using Documenter

DocMeta.setdocmeta!(MachineElements, :DocTestSetup, :(using MachineElements); recursive=true)

makedocs(;
    modules=[MachineElements],
    authors="Rojesh Man Shikhrakar",
    repo="https://github.com/rojesh-shikhrakar/MachineElements.jl/blob/{commit}{path}#{line}",
    sitename="MachineElements.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://rojesh-shikhrakar.github.io/MachineElements.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/rojesh-shikhrakar/MachineElements.jl",
    devbranch="main",
)
