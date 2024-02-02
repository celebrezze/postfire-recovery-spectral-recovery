#-------------------------------------------------------------------#
#- Function to generate X number of random points with minimum 
#-      distance within an image overlap
#-------------------------------------------------------------------#
# A Meddens - UIdaho - 9 Feb 2018
#-------------------------------------------------------------------#
sample_random_dist = function(x_index_array,y_index_array,
	num_points=num_points,seed=seed,distance=distance) {
  
  set.seed(seed)
  x_arr = x_index_array
  y_arr = y_index_array
  num_arr = length(x_index_array)

  num.samples = c(num_points) 
  too.many.samples = c(500000)
  min.dist    = distance
  index_arr_samples =  numeric(length = num.samples)
  subindex_xy = seq(1, num_arr, 1)
  count = 1

  for(i in 1:too.many.samples) {
    tmp_sample  <- sample(subindex_xy,size=1)
   # ext_same <- which(index_arr_samples == tmp_sample)
   # if (length(ext_same) == 0) {
      if (i == 1) {
        index_arr_samples[i] = tmp_sample
        count = count+1
        x.arr = c(x_arr[index_arr_samples[1:c(count)]])
        y.arr = c(y_arr[index_arr_samples[1:c(count)]])
     }
      if (i > 1) {
        index_arr_samples[i] = tmp_sample
        x.arr = c(x_arr[index_arr_samples[1:c(count)]])
        y.arr = c(y_arr[index_arr_samples[1:c(count)]])
        coord.sample = c(x_arr[tmp_sample],y_arr[tmp_sample])
        dist.arr = sqrt( (x.arr-coord.sample[1])^2+(y.arr-coord.sample[2])^2 )
        index.min.dist = which(dist.arr < min.dist)
        
        if (length(index.min.dist) == 0 ) {
          index_arr_samples[count] = tmp_sample
          count = count+1
          #message(count)
          #message(length(x.arr))
        } else { 
          #message("not getting anywhere",count)
          count = count
        }
        
     }   
   #}  

        if (length(x.arr) == num.samples) {
          message("reached max samples stopping...at:",num.samples)
          message("dims of x.arr and y.arr",length(x.arr)) 
          break 
        }   
  }
  #browser() # kicks you out of function for debugging... 
   if (count != num.samples) { 
    message("count:",count)
    message("number of samples:",num.samples)
    message("Exact number of samples not reached..") 
    message("dims of x.arr and y.arr",length(x.arr)) 
   }
  xy.arr = rbind(x.arr, y.arr)
  df = as.data.frame(t(xy.arr))
 return(df)
}
