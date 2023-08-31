# On this example the order of loading matters
# as the example1_2.db will redefine the record MYRECORD
# already define on example1_1.db

dbLoadRecords("example1_1.db")
dbLoadRecords("example1_2.db")
