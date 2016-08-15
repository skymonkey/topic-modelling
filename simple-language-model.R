get_simple_language_model <- function(x){

   lc_corpus <- tolower(paste(readLines(x), collapse=" "))
   tokens <- unlist(strsplit(lc_corpus, " "))
   n_tokens <- length(tokens)
   frequencies <- sort(table(tokens), decreasing=T)
   language_model <- data.frame(frequencies / n_tokens)

}