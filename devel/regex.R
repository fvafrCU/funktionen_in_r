#    The POSIX 1003.2 standard
#    http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap09.html

string <- c("This is a (not too) long sentence, stored in a (character) string.",
            "Well, it is (actually) stored in a vector of class character.", 
            "And this is not a single sentence.")
is.vector(string)
is.character(string)
class(string)
length(string)
nchar(string)

pattern <- "\\(.*\\)"

regexpr(pattern, string) # a vector giving start and length of matches.
regexec(pattern, string) # the same, as a list.

grep(pattern, string)
grepl(pattern, string)
grep(pattern, string, value = TRUE)

substition <- "[FOO]"
print(new_string <- sub(pattern, substition, string))
nchar(string)
nchar(new_string)

pattern <- "\\(.*?\\)" ## non-greedy quantifier
print(new_string <- sub(pattern, substition, string))
nchar(string)
nchar(new_string)

pattern <- "\\<[[:alnum:]]*\\>"
substition <- "[HERE WAS THE FIRST WORD]"
regexpr(pattern, string) 
sub(pattern, substition, string)

pattern <- "(\\<a\\>)"
substition <- "\\1[INJECTED TEXT]"
regexpr(pattern, string) 
sub(pattern, substition, string)
gregexpr(pattern, string) 
gsub(pattern, substition, string)

pattern <- "^([[:punct:]]?\\<[[:alnum:]_]*\\>[[:punct:]]?[[:space:]]?)\\<[[:alnum:]_]*\\>"
substition <- "\\1[HERE WAS THE SECOND WORD]"
regexpr(pattern, string) 
sub(pattern, substition, string)


pattern <- "^((?:[[:punct:]]?\\<[[:alnum:]_]*\\>[[:punct:]]?[[:space:]]?[[:punct:]]?){3})\\<[[:alnum:]_]*\\>"
substition <- "\\1[HERE WAS THE FOURTH WORD]"
regexpr(pattern, string) 
sub(pattern, substition, string)

pattern <- "^((?:[[:punct:]]?\\<[[:alnum:]_]*\\>[[:punct:]]?[[:space:]]?[[:punct:]]?){3})\\<[[:alnum:]_]*\\>(.*)$"
substition <- "\\1[HERE WAS THE FOURTH WORD]\\2"
regexpr(pattern, string) 
sub(pattern, substition, string)

gsub("(?:\\(.*?\\)|long)[[:space:]]", "", string)
gsub("(?:\\(.*?\\)|long)\\  *", "", string)


# Anwendung mit Dateipfaden

## Dateien bereitstellen
rm(list= ls())
path <- file.path(tempdir(), "foo")
unlink(path, recursive = TRUE)
dir.create(path)
for (name in c("mtcars", "iris")) {
    file_name <- paste0(name, ".csv")
    write.csv(get(name), file = file.path(path, file_name))
}



## Dateien in lesen und wieder schreiben
print(files <- list.files(path, full.names = TRUE))

for (file in files) {
    file_name <- basename(file)
    new_file <- sub("(.*)(\\.csv)", "\\1_german\\2", file)
    write.csv2(read.csv(file), file = new_file)
}
print(list.files(path, full.names = TRUE))

## Dateien in noch nicht existente Verzeichnisse verschieben
path <- file.path(tempdir(), "bar", "foobar")
unlink(path, recursive = TRUE)
file.rename(file, file.path(path, basename(file)))
file_rename <- function(from, to) {
    root <- dirname(to)
    if (! dir.exists(root)) dir.create(root, recursive = TRUE)
    return(file.rename(from, to))
}
file_rename(file, file.path(path, basename(file)))

# Anwendung camelCase -- mit Perl regex
code_file <- file.path(tempdir(), "code.R")
code <- "fileRename <- function(from, to) {
    root <- dirname(to)
    if (! dir.exists(root)) dir.create(root, recursive = TRUE)
    return(file.rename(from, to))
}
"
cat(code, file = code_file)
print(readLines(code_file))

code <- readLines(code_file)
code <- gsub("([A-Z])", "_\\L\\1", code, perl = TRUE)
writeLines(code, code_file)
print(readLines(code_file))
