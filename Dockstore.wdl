task md5 {
  File inputFile

  command {
    /bin/my_md5sum ${inputFile}
  }

 output {
    File value = "md5sum.txt"
 }
}

workflow ga4ghMd5 {
 File inputFile
 call md5 { input: inputFile=inputFile }
}
