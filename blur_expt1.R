blur_words <- function(word_list, sigma=NULL, degree=NULL) { 
  
  if (degree=="HB") { 
    
    for (i in 1:length(word_list)) {
      
      im <- imager::load.image(word_list[i])
      word_blur <- isoblur(im,sigma, gaussian = TRUE)
      word_list[i] <- gsub(".png","", word_list[i])
      imager::save.image(word_blur,file=paste(word_list[i],"HB",".png", sep=""))
      
    }
  } 
  else  {
    
    for (i in 1:length(word_list)) {
      
      im <- imager::load.image(word_list[i])
      word_blur <- isoblur(im,sigma, gaussian = TRUE)
      word_list[i] <- gsub(".png","", word_list[i])
      imager::save.image(word_blur,file=paste(word_list[i],"LB",".png", sep=""))
    }
  }
  
}