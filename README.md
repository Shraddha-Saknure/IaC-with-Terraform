# Terraform Docker Demo

Elev Labs DevOps Internship - Task 3

This project uses Terraform to manage a Docker image and container on Windows.
The Docker provider connects to Docker Desktop through its Windows named pipe.

## What it creates

- Pulls the `ubuntu:latest` image.
- Creates a container named `notle_12` with standard input and a TTY enabled.
- Does not publish any container ports.

## Prerequisites

- Terraform installed and available on `PATH`.
- Docker Desktop installed and running.

## Run

Open PowerShell in this directory and run:

```powershell
terraform init
terraform validate
terraform plan
terraform apply
```

Review the plan and enter `yes` when prompted to apply it. To remove the
container and image managed by this configuration, run:

```powershell
terraform destroy
```

## Project files

- `main.tf` - Terraform configuration for the Docker provider, image, and container.
- `.terraform.lock.hcl` - locked Docker provider version and checksums.
- `execution_logs.txt` - example output from Terraform commands.

Terraform state files (`terraform.tfstate*`) are local execution artifacts and
may contain sensitive infrastructure details. Do not commit state files from
real or shared environments.

## Author

Shraddha Saknure
