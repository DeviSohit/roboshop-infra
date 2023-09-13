variable "cidr_block" {
    default = "10.0.0.0/16"
}

variable "common_tags" {
    default = {
        Project = "roboshop"
        Environment = "DEV"
        Terraform = "true" 
    }
}

variable "vpc_tags" {
    default = {
        Name = "roboshop" 
    }
}

variable "internet_gateway_tags" {
  default = {
    Name = "roboshop"
  }
}

#public servers start with 10.0.1.1, 10.0.1.2 etc in roboshop-public-1a az and 10.0.2.1, 10.0.2.2 etc in roboshop-public-1b
variable "public_subnet_cidr" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_names" {
    default = ["roboshop-public-1a", "roboshop-public-1b"]
}

variable "azs" {
    default = ["us-east-1a", "us-east-1b"]
}

#private servers start with 10.0.11.1, 10.0.11.2 etc in roboshop-private-1a az and 10.0.12.1, 10.0.12.2 etc in roboshop-private-1b
variable "private_subnet_cidr" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "private_subnet_names" {
    default = ["roboshop-private-1a", "roboshop-private-1b"]
}

#database servers start with 10.0.21.1, 10.0.21.2 etc in roboshop-database-1a az and 10.0.22.1, 10.0.22.2 etc in roboshop-database-1b
variable "database_subnet_cidr" {
    default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "database_subnet_names" {
    default = ["roboshop-database-1a", "roboshop-database-1b"]
}

variable "public_route_table_tags" {
    default = {
        Name = "roboshop-public"
    }
}

variable "private_route_table_tags" {
    default = {
        Name = "roboshop-private"
    }
}

variable "database_route_table_tags" {
    default = {
        Name = "roboshop-database"
    }
}