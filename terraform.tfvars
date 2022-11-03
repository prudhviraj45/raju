ami = "ami-062df10d14676e201"
instance_type = "t2.micro"


bucket_name = "noname_raju"
db_name = "noname_rds"



engine               = "mysql"
engine_version       = "5.7"
instance_class       = "db.t3.micro"
name                 = "mydb"
username             = "user1"
password             = "password"
parameter_group_name = "default.mysql5.7"
db_subnet_group_name = "group"
publicly_accessible    = true
skip_final_snapshot    = true
