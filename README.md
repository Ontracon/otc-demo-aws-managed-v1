<!-- OTC-HEADER-START -->

<!-- OTC-HEADER-END -->

# Project Info

This is the Repository for ontracon GmbH for the project demo / aws-managed.

Project owners:
- `jkritzen`

Status: `active`

Clouds: `AWS`  

___

The Project `demo` is enabled for the following Blueprints:

Blueprint  | Version |Description  | Mandatory | Services
-----------|---------|-------------|-----------|----------
OTC Base | v1.0.0 | Basic OTC Setup (eg. terraform files, workflows, backends, ...).|  ✔  | `Base Repo Setup`
Hello world example | v1.0.0 | Only a Hello World example which will only outputs a hello_world String.|  ✗  | `hello_world`
___

Configured environments:
Environment | Trigger on PR | Manual Trigger | Push Branches | On release
------------|---------------|----------------|---------------|-----------
int (suspend)|✔|✗|✗|✗
prd (suspend)|✗|✗|✗|✔

<!-- OTC-FOOTER-START -->

<!-- OTC-FOOTER-END -->
