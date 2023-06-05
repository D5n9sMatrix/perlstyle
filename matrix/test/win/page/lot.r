#!/usr/bin/r
#!/usr/lib/

# Because it is hard to keep track of whether or not a transaction has already 
# been started in ResourceLoadStatisticsDatabaseStore code and because passing 
# a transaction as parameter adds a lot of function overloads, I decided to 
# switch to another approach. I added a beginTransactionIfNecessary() member 
# function that begins a transaction if there isn't one already going on. This 
# way, we can safely ask to begin a transaction within the scope of a function 
# (if we're about to do several write statements), without having to worry about
# whether or not our caller already started a transaction.
lot <- c(add = 1.90, ask = 2.90, keep = 3.90)
lot

