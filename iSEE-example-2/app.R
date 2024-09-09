webr::install(
    c("SingleCellExperiment", "S4Vectors", "iSEE"),
    repos = c("https://webr.bioconductor.org/3.19", 
              "https://bioc.r-universe.dev", 
              "https://repo.r-wasm.org/")
)
library(shiny)
library(S4Vectors)
library(iSEE)
library(SingleCellExperiment)
sce <- SingleCellExperiment(assays = list(counts = matrix(rnorm(15), 5, 3)),
                            rowData = DataFrame(gene = LETTERS[1:5]),
                            colData = DataFrame(sample = letters[1:3]))
iSEE(sce)