output "host" {
  description = "DNS hostname"
  value       = "${module.tld.hostname}"
}

output "id" {
  description = "ID of the Elastic Beanstalk environment."
  value       = "${aws_elastic_beanstalk_environment.default.id}"
}

output "name" {
  description = "Name"
  value       = "${aws_elastic_beanstalk_environment.default.name}"
}

output "security_group_id" {
  description = "Security group id"
  value       = "${aws_security_group.default.id}"
}

output "elb_dns_name" {
  description = "ELB technical host"
  value       = "${aws_elastic_beanstalk_environment.default.cname}"
}

output "elb_zone_id" {
  description = "ELB zone id"
  value       = "Z38NKT9BP95V3O"
}

output "ec2_instance_profile_role_name" {
  description = "Instance IAM role name"
  value       = "${aws_iam_role.ec2.name}"
}

output "tier" {
  description = "The environment tier specified."
  value       = "${aws_elastic_beanstalk_environment.default.tier}"
}

output "application" {
  description = "The Elastic Beanstalk Application specified for this environment."
  value       = "${aws_elastic_beanstalk_environment.default.application}"
}

output "setting" {
  description = "Settings specifically set for this environment."
  value       = "${aws_elastic_beanstalk_environment.default.setting}"
}

output "all_settings" {
  description = "List of all option settings configured in the environment. These are a combination of default settings and their overrides from setting in the configuration."
  value       = "${aws_elastic_beanstalk_environment.default.all_settings}"
}

output "cname" {
  description = "Fully qualified DNS name for the environment."
  value       = "${aws_elastic_beanstalk_environment.default.cname}"
}

output "autoscaling_groups" {
  description = "The autoscaling groups used by this environment."
  value       = "${aws_elastic_beanstalk_environment.default.autoscaling_groups}"
}

output "instances" {
  description = "Instances used by this environment."
  value       = "${aws_elastic_beanstalk_environment.default.instances}"
}

output "launch_configurations" {
  description = "Launch configurations in use by this environment."
  value       = "${aws_elastic_beanstalk_environment.default.launch_configurations}"
}

output "load_balancers" {
  description = "Elastic Load Balancers in use by this environment."
  value       = "${aws_elastic_beanstalk_environment.default.load_balancers}"
}

output "queues" {
  description = "SQS queues in use by this environment."
  value       = "${aws_elastic_beanstalk_environment.default.queues}"
}

output "triggers" {
  description = "Autoscaling triggers in use by this environment."
  value       = "${aws_elastic_beanstalk_environment.default.triggers}"
}
