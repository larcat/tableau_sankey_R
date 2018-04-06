### Takes a data frame
# Returns the same data frame munged for use as a Sankey diagramm in R
# Assumes you dont have variables @ID, @path, @min_max, @T
  # @ID is an arbitrary ID for viz usse
  # @path is used for polygon pathing in Tableau
  # @min_max denotes if it is the upper or lower bound of the poly
  # @T gives the X axis ordering

sankey_munge <- function(sank_data_lim){

  sank_data_lim$ID <- 1:nrow(sank_data_lim)
  sank_sankey <- sank_data_lim[rep(seq_len(nrow(sank_data_lim)), each=98),]
  sank_sankey$path <- c(0:48, 97:49)
  minmax <- c(rep("min", 49), rep("max", 49))
  sank_sankey$min_max <- minmax
  time <- c(rep(seq(-6, 6, .25), 2))
  sank_sankey$T <- time
  
  return(sank_sankey)

}
