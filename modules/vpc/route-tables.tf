resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    {
      Name        = "PublicRouteTable",
      Project     = var.project,
      Environment = var.environment
    },
    var.tags
  )
}

resource "aws_route" "public" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}


resource "aws_route_table_association" "public" {
  count          = length(var.public_subnet_cidr_blocks)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "app" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    {
      Name        = "AppRouteTable",
      Project     = var.project,
      Environment = var.environment
    },
    var.tags
  )
}

resource "aws_route" "app" {
  route_table_id         = aws_route_table.app.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}

#
resource "aws_route_table" "db" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    {
      Name        = "DbRouteTable",
      Project     = var.project,
      Environment = var.environment
    },
    var.tags
  )
}

resource "aws_route" "db" {
  route_table_id         = aws_route_table.db.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}

resource "aws_route_table" "management" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    {
      Name        = "ManagementRouteTable",
      Project     = var.project,
      Environment = var.environment
    },
    var.tags
  )
}

resource "aws_route_table_association" "management" {
  count          = length(var.management_subnet_cidr_blocks)
  subnet_id      = aws_subnet.management[count.index].id
  route_table_id = aws_route_table.management.id
}