variable "region" {
  type    = string
  default = "sa-east-1"
}

variable "project_name" {
  type    = string
  default = "oficinaconectada"
}

variable "cluster_name" {
  type    = string
  default = "oficinaconectada-eks"
}

variable "app_namespace" {
  type    = string
  default = "oficinaconectada"
}

variable "hosted_zone_arns" {
  type        = list(string)
  description = "ARNs das hosted zones que o external-dns pode gerenciar"
  default     = []
}

variable "domain_filters" {
  type        = list(string)
  description = "Dominios controlados pelo external-dns"
  default     = ["oficinaconectada.com"]
}

variable "alb_controller_policy_arn" {
  type        = string
  description = "Policy ARN para o AWS Load Balancer Controller"
  default     = ""
}
