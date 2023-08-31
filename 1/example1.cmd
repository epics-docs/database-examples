
# On this example the order of loading matters
# as the example1_2 should be loaded after example1_1
dbLoadRecords("example1_1.db")
dbLoadRecords("example1_2.db")
