variable "region" {
  description = "The AWS region to deploy to."
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID"
  default = "ami-0f73332b0d462a239"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Subnet CIDR"
  default = "10.0.1.0/24"
}

variable "subnet_az" {
  description = "The AZ for the public subnet"
  default = "us-east-1a"
}

variable "server_instance_type" {
  description = "The AWS instance type to use for servers."
  default     = "t2.medium"
}

variable "client_instance_type" {
  description = "The AWS instance type to use for clients."
  default     = "t2.medium"
}

variable "key_name" {
  default = "bernardokey"
}

variable "private_key_data" {
  default = ""
}

variable "server_count" {
  description = "The number of servers to provision."
  default     = "1"
}

variable "client_count" {
  description = "The number of clients to provision."
  default     = "2"
}

variable "name_tag_prefix" {
  description = "prefixed to Name tag added to EC2 instances and other AWS resources"
  default     = "bernardo-microservices2"
}

variable "cluster_tag_value" {
  description = "Used by Consul to automatically form a cluster."
  default     = "bernardo-microservices-demo2"
}

variable "owner" {
  description = "Adds owner tag to EC2 instances"
  default = ""
}

variable "ttl" {
  description = "Adds TTL tag to EC2 instances for reaping purposes. Reaping is only done for instances deployed by HashiCorp SEs. In any case, -1 means no reaping."
  default = "-1"
}

variable "token_for_nomad" {
  #set as environment raviable TF_VAR_token_for_nomad
}
variable "vault_url" {
  default = "http://52.162.218.143:8200/"
}
