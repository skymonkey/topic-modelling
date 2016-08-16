get_unigram_model <- function(x){

   lc_corpus <- tolower(paste(readLines(x), collapse=" "))
   
   tokens <- unlist(strsplit(lc_corpus, " "))
   tokens <- gsub("[\\t\\s]+", " ", tokens, perl=T)
   tokens<- gsub("[[:punct:]]", " ", tokens)
   n_tokens <- length(tokens)
   frequencies <- sort(table(tokens), decreasing=T)
   language_model <- data.frame(frequencies / n_tokens)

}