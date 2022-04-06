path <- "C:/Users/laura/OneDrive/Desktop/Laura's computer/Documents/My Own Documents/Research/Empty Digital Wallets/"

countries <- c("ph", "sn", "tz", "np")
dhs.path <-paste0(path, c("Data/PHGE71FL/PHGE71FL.shp", "Data/SNGE7IFL/SNGE7IFL.shp", "Data/TZGE7AFL/TZGE7AFL.shp", "Data/NPGE7AFL/NPGE7AFL.shp"))
dhs.indiv.path <- paste0(path, c("Data/PHIR70DT/PHIR70FL.DTA", "Data/SNIR7ZFL/SNIR7ZFL.DTA", "Data/TZIR7BDT/TZIR7BFL.DTA", "Data/NPIR7HDT/NPIR7HFL.DTA"))

cell.path <- paste0(path,c("Data/515.csv/515.csv", "Data/608.csv/608.csv", "Data/640.csv/640.csv", "Data/429.csv/429.csv"))
cell_buffer.path <- paste0(path,c("Data/515.csv/515_buffered.shp", "Data/608.csv/608_buffered.shp", "Data/640.csv/640_buffered.shp", "Data/429.csv/429_buffered.shp"))

borders.path <- paste0(path, c("Data/gadm36_PHL_shp/gadm36_PHL_1.shp", "Data/gadm36_SEN_shp/gadm36_SEN_1.shp", "Data/gadm36_TZA_shp/gadm36_TZA_1.shp", "Data/gadm36_NPL_shp/gadm36_NPL_1.shp"))

banks.path <- paste0(path, c("Data/banks_philippines.kml", "Data/banks_senegal.kml", "Data/banks_tanzania.kml", "Data/banks_nepal.kml"))


for (i in seq(1,length(countries))) {
  countries.i <- countries[i]
  dhs.path.i <- dhs.path[i]
  dhs.indiv.path.i <- dhs.indiv.path[i]
  cell.path.i <- cell.path[i]
  cell_buffer.path.i <- cell_buffer.path[i]
  borders.path.i <- borders.path[i]
  banks.path.i <- banks.path[i]
  
  rmarkdown::render(paste0(path,'Caron_EmptyDigitalWallets_TechnicalAppendix_Dec2021.Rmd'), 
                    output_format = "html_document",
                    output_file =  paste("appendix", countries[i], ".html", sep=''), 
                    output_dir = paste0(path,"/Output/Dec21"))
  
#rm(banks.sf, borders.sf, cell.sf, cell.sf2, cells_range.sf, dhs_cell_phone.sf, dhs_indiv_sum, dhs_merged.sf, dhs_range.df, dhs_range.sf, dhs.indiv,ntl.raster,popden.raster,t.lm)  
}