module "this" {
    source = "../terraform-aws-vpc"
    cidr_block = var.cidr_block #as a user you can give your value
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    igw_tags = var.internet_gateway_tags

    # 2 public subnets creation
    public_subnet_cidr = var.public_subnet_cidr
    azs = var.azs
    public_subnet_names = var.public_subnet_names

    # 2 private subnets creation
    private_subnet_cidr = var.private_subnet_cidr
    private_subnet_names = var.private_subnet_names

    # 2 database subnets creation
    database_subnet_cidr = var.database_subnet_cidr
    database_subnet_names = var.database_subnet_names

    #public route table
    public_route_table_tags = var.public_route_table_tags

    #private route table
    private_route_table_tags = var.private_route_table_tags

    #database route table
    database_route_table_tags = var.database_route_table_tags
}