variable "namespace" {
  description = "Namespace, which could be your organization name, e.g. 'eg' or 'cp'"
  type        = "string"
}

variable "stage" {
  description = "Stage, e.g. 'prod', 'staging', 'dev', or 'test'"
  type        = "string"
}

variable "name" {
  description = "EB name, e.g. 'app' or 'jenkins'"
  default     = "app"
}

variable "description" {
  description = "Short description of the Environment"
  default     = "priceflow web app"
}

variable "remote_bucket" {
  description = "s3 bucket for remote state"
  type        = "string"
  default     = ""
}

variable "eb_bucket" {
  description = "s3 eb bucket"
  type        = "string"
  default     = ""
}

variable "image_tag" {
  description = "Priceflow app image"
  type        = "string"
  default     = "priceflow/priceflow"
}

variable "config_document" {
  description = "A JSON document describing the environment and instance metrics to publish to CloudWatch."
  default     = "{ \"CloudWatchMetrics\": {}, \"Version\": 1}"
}

variable "health_streaming_enabled" {
  description = "For environments with enhanced health reporting enabled, whether to create a group in CloudWatch Logs for environment health and archive Elastic Beanstalk environment health data. For information about enabling enhanced health, see aws:elasticbeanstalk:healthreporting:system."
  default     = false
}

variable "health_streaming_delete_on_terminate" {
  description = "Whether to delete the log group when the environment is terminated. If false, the health data is kept RetentionInDays days."
  default     = false
}

variable "health_streaming_retention_in_days" {
  description = "The number of days to keep the archived health data before it expires."
  default     = "7"
}

variable "healthcheck_url" {
  description = "Application Health Check URL. Elastic Beanstalk will call this URL to check the health of the application running on EC2 instances"
  default     = "/healthcheck"
}

variable "notification_protocol" {
  description = "Notification protocol"
  default     = "email"
}

variable "notification_endpoint" {
  description = "Notification endpoint"
  default     = ""
}

variable "notification_topic_arn" {
  description = "Notification topic arn"
  default     = ""
}

variable "notification_topic_name" {
  description = "Notification topic name"
  default     = ""
}

variable "enable_log_publication_control" {
  description = "Copy the log files for your application's Amazon EC2 instances to the Amazon S3 bucket associated with your application."
  default     = false
}

variable "enable_stream_logs" {
  description = "Whether to create groups in CloudWatch Logs for proxy and deployment logs, and stream logs from each instance in your environment."
  default     = false
}

variable "logs_delete_on_terminate" {
  description = "Whether to delete the log groups when the environment is terminated. If false, the logs are kept RetentionInDays days."
  default     = true
}

variable "logs_retention_in_days" {
  description = "The number of days to keep log events before they expire."
  default     = "7"
}

variable "loadbalancer_type" {
  description = "Load Balancer type, e.g. 'application' or 'classic'"
  default     = "classic"
}

variable "loadbalancer_certificate_arn" {
  description = "Load Balancer SSL certificate ARN. The certificate must be present in AWS Certificate Manager"
  default     = ""
}

variable "loadbalancer_ssl_policy" {
  description = "Specify a security policy to apply to the listener. This option is only applicable to environments with an application load balancer."
  default     = ""
}

variable "loadbalancer_security_groups" {
  description = "Load balancer security groups"
  type        = "list"
  default     = []
}

variable "loadbalancer_managed_security_group" {
  description = "Load balancer managed security group"
  type        = "string"
  default     = ""
}

variable "http_listener_enabled" {
  description = "Enable port 80 (http)"
  default     = "false"
}

variable "ssh_listener_enabled" {
  description = "Enable ssh port"
  default     = "false"
}

variable "ssh_listener_port" {
  description = "SSH port"
  default     = "22"
}

variable "zone_id" {
  description = "Route53 parent zone ID. The module will create sub-domain DNS records in the parent zone for the EB environment"
  default     = ""
}

variable "config_source" {
  description = "S3 source for config"
  default     = ""
}

variable "enable_managed_actions" {
  description = "Enable managed platform updates. When you set this to true, you must also specify a `PreferredStartTime` and `UpdateLevel`"
  default     = true
}

variable "preferred_start_time" {
  description = "Configure a maintenance window for managed actions in UTC"
  default     = "Sun:10:00"
}

variable "update_level" {
  description = "The highest level of update to apply with managed platform updates"
  default     = "minor"
}

variable "instance_refresh_enabled" {
  description = "Enable weekly instance replacement."
  default     = "true"
}

variable "key_name" {
  description = "Name of SSH key that will be deployed on Elastic Beanstalk and DataPipeline instance. The key should be present in AWS"
}

variable "root_volume_size" {
  description = "The size of the EBS root volume"
  default     = "8"
}

variable "root_volume_type" {
  description = "The type of the EBS root volume"
  default     = "gp2"
}

variable "availability_zones" {
  description = "Choose the number of AZs for your instances"
  default     = "Any 2"
}

variable "rolling_update_type" {
  description = "Set it to Immutable to apply the configuration change to a fresh group of instances"
  default     = "Health"
}

variable "updating_min_in_service" {
  description = "Minimum count of instances up during update"
  default     = "1"
}

variable "updating_max_batch" {
  description = "Maximum count of instances up during update"
  default     = "1"
}

variable "ssh_source_restriction" {
  description = "Used to lock down SSH access to the EC2 instances."
  default     = "0.0.0.0/0"
}

variable "instance_type" {
  description = "Instances type"
  default     = "t2.micro"
}

variable "autoscale_measure_name" {
  description = "Metric used for your Auto Scaling trigger"
  default     = "CPUUtilization"
}

variable "autoscale_statistic" {
  description = "Statistic the trigger should use, such as Average"
  default     = "Average"
}

variable "autoscale_unit" {
  description = "Unit for the trigger measurement, such as Bytes"
  default     = "Percent"
}

variable "autoscale_lower_bound" {
  description = "Minimum level of autoscale metric to remove an instance"
  default     = "20"
}

variable "autoscale_lower_increment" {
  description = "How many Amazon EC2 instances to remove when performing a scaling activity."
  default     = "-1"
}

variable "autoscale_upper_bound" {
  description = "Maximum level of autoscale metric to add an instance"
  default     = "80"
}

variable "autoscale_upper_increment" {
  description = "How many Amazon EC2 instances to add when performing a scaling activity"
  default     = "1"
}

variable "autoscale_min" {
  description = "Minumum instances in charge"
  default     = "1"
}

variable "autoscale_max" {
  description = "Maximum instances in charge"
  default     = "3"
}

variable "wait_for_ready_timeout" {
  default = "20m"
}

# From: http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region
# Via: https://github.com/hashicorp/terraform/issues/7071
variable "alb_zone_id" {
  type = "map"

  default = {
    ap-northeast-1 = "Z1R25G3KIG2GBW"
    ap-northeast-2 = "Z3JE5OI70TWKCP"
    ap-south-1     = "Z18NTBI3Y7N9TZ"
    ap-southeast-1 = "Z16FZ9L249IFLT"
    ap-southeast-2 = "Z2PCDNR3VC2G1N"
    ca-central-1   = "ZJFCZL7SSZB5I"
    eu-central-1   = "Z1FRNW7UH4DEZJ"
    eu-west-1      = "Z2NYPWQ7DFZAZH"
    eu-west-2      = "Z1GKAAAUGATPF1"
    sa-east-1      = "Z10X7K2B4QSOFV"
    us-east-1      = "Z117KPS5GTRQ2G"
    us-east-2      = "Z14LCN19Q5QHIC"
    us-west-1      = "Z1LQECGX5PH1X"
    us-west-2      = "Z38NKT9BP95V3O"
    eu-west-3      = "ZCMLWB8V5SYIT"
  }

  description = "ALB zone id"
}

variable "tags" {
  description = "Additional tags (e.g. `map('BusinessUnit`,`XYZ`)"
  type        = "map"
  default     = {}
}

variable "env_default_key" {
  description = "Default ENV variable key for Elastic Beanstalk `aws:elasticbeanstalk:application:environment` setting"
  default     = "DEFAULT_ENV_%d"
}

variable "env_default_value" {
  description = "Default ENV variable value for Elastic Beanstalk `aws:elasticbeanstalk:application:environment` setting"
  default     = "UNSET"
}

variable "env_vars" {
  description = "Map of custom ENV variables to be provided to the Jenkins application running on Elastic Beanstalk, e.g. `env_vars = { JENKINS_USER = 'admin' JENKINS_PASS = 'xxxxxx' }`"
  default     = {}
  type        = "map"
}

variable "tier" {
  description = "Elastic Beanstalk Environment tier, e.g. ('WebServer', 'Worker')"
  default     = "WebServer"
}

variable "version_label" {
  description = "Elastic Beanstalk Application version to deploy"
  default     = ""
}

variable "nodejs_version" {
  description = "Elastic Beanstalk NodeJS version to deploy"
  default     = ""
}

variable "force_destroy" {
  description = "Destroy S3 bucket for load balancer logs"
  default     = true
}

variable "domain_name" {
  description = "Top level domain name"
  default     = ""
}

variable "subject_alternative_names" {
  description = "A list of domains that should be SANs in the issued certificate"
  type        = "list"
  default     = []
}
