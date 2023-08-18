output "instance_state" {
  description = "The state of the ec2 instance "
  value       = module.jenkins-agent.instance_state
}

output "instance_public_dns" {
  description = "The Public DNS address of the ec2 instance"
  value       = module.jenkins-agent.instance_public_dns
}

output "instance_public_ip" {
  description = "The Public Ip address of the ec2 instance"
  value       = module.jenkins-agent.instance_public_ip
}

output "eip_instance_ids" {
  description = "List of instance IDs associated with EIPs"
  value       = module.jenkins-agent.eip_instance_ids
}