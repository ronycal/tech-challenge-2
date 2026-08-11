module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.33"

  cluster_endpoint_public_access = true

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets

  enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {
    default = {
      name = "default-node-group"

      instance_types = ["t3.small"]

      ami_type = "AL2023_x86_64_STANDARD"

      min_size     = 1
      max_size     = 4
      desired_size = 1

      capacity_type = "ON_DEMAND"
    }
  }

  tags = {
    Environment = var.environment
    Project     = "tech-challenge-2"
    Terraform   = "true"
  }
}