#PartB
library (dplyr)
library (stringr)

InputFunction<- function(Filename){
  useFile<- paste(sep="", Filename, ".seq")
  return(useFile)
  #to open the file
  Path1<-file.path("C:/Users/ColauttiLab/Documents")
  Dir1<- file.path("/Data")
  DNAseq<-(file.path(Path1, Dir1, useFile))
  return(readLine(dataFile= (DNAseq) , datatype = 'DNA', debug=FALSE))
} %>%

#sort out the sequence from the FASTA file  
  SeqOnly<- DNAseq[grep("[AGCT]", DNAseq)] %>%

#count number of each base in sequence: I converted the sequence into a data frame so it's easier to apply regex
  SeqData<-data.frame(table(SeqOnly)) %>%
  A<-length(grep("A",SeqData)) %>%
  G<-length(grep("G",SeqData)) %>%
  C<-length(grep("c",SeqData)) %>%
  Thymine<-length(grep("T",SeqData)) %>%

#Final output  
  print(c(A,G,C,Thymine))%>%
  output<-write.table(baseCount, file= (paste (sep="", Filename, ".count")))
  
  