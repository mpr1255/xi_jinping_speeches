library(curl)
library(jsonlite)
library(readr)
url <- "http://jhsjk.people.cn/testnew/result?keywords=&isFuzzy=0&searchArea=0&year=0&form=0&type=0&page=1&origin=%E5%85%A8%E9%83%A8&source=2"


response <- curl_fetch_memory(url)
fromJSON(rawToChar(response$content))

