variable "aws_region" {
  description = "The AWS region to use to create resources."
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "The AWS region to use to create resources."
  default     = "AKIA5D5JWOUCU3C6BY5J"
}

variable "aws_secret_key" {
  description = "The AWS secret key to use to create resources."
  default     = "uTWrTSbV968h8/DfSqCojNG4HGDUBVYi7ekiwzNA"
}

variable "bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
    default     = "my-s3bucket-POC4"
}

variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}

variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}

variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}

