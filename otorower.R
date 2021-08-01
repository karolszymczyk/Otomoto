library(rvest)
library(stringr)
library(progress)
link = 'https://www.centrumrowerowe.pl/rowery/elektryczne/'
download.file(link, destfile = "alle.html", quiet=TRUE)
page <- read_html('alle.html')
result <- page %>% html_nodes(xpath = "//span[@class='int-part']") %>% html_text()
result <- as.integer(str_replace(result, " ", ""))

summary(results)


