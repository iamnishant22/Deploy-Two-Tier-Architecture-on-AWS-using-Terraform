terraform {
  backend "s3" {
    bucket         = "nishant-ex-project"
    key            = "backend/nishant.tfstate" # Key (path) within the bucket
    region         = "us-east-1"
    dynamodb_table = "remote-backend"            # Optional: for state locking
                        # Encrypt the state file using SSE
  }
}
