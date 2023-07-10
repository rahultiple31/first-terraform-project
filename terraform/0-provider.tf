terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.21.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.3.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.2.0"
    }
  }

  required_version = "~> 1.0"
}

provider "aws" {
  region = "ap-northeast-3"
  access_key = "AKIAYZGDKZ4PD7ZRFFN5"
  secret_key = "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"
}
