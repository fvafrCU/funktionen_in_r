dat1 <- structure(list(pjahr = structure(c(2012L, 2012L, 2012L, 2012L,
2012L, 2012L), label = "PJahr", class = c("labelled", "integer"
)), tnr = structure(c(11L, 11L, 11L, 11L, 11L, 11L), label = "Tnr", class = c("labelled",
"integer")), enr = structure(c(2L, 2L, 2L, 2L, 2L, 2L), label = "Enr", class = c("labelled",
"integer")), bnr = structure(c(1L, 5L, 6L, 3L, 4L, 2L), label = "Bnr", class = c("labelled",
"integer"))), .Names = c("pjahr", "tnr", "enr", "bnr"), row.names = c(NA,
6L), class = "data.frame")

dat2 <- structure(list(pjahr = structure(c(2012L, 2012L, 2012L, 2012L,
2012L, 2012L), label = "PJahr", class = c("labelled", "integer"
)), tnr = structure(c(11L, 11L, 11L, 11L, 11L, 11L), label = "Tnr", class = c("labelled",
"integer")), enr = structure(c(2L, 2L, 2L, 2L, 2L, 2L), class = c("integer")), bnr = structure(c(1L, 5L, 6L, 7L, 4L, 2L), class = c("integer"))), .Names = c("pjahr", "tnr", "enr", "bnr"), row.names = c(NA,
6L), class = "data.frame")

identical(dat1, dat2)
all.equal(dat1, dat2)

remove_attributes <- function(df) {
    for (var in names(df)) {
        attributes(df[[var]]) <- NULL
    }
    return(df)
}

all.equal(remove_attributes(dat1), remove_attributes(dat2))

str(dat1)
remove_attributes_se <- function(df) {
    for (var in names(df)) {
        attributes(df[[var]]) <- NULL
    }
    name <- deparse(substitute(df))

    return(name)
}

