```zsh
% tree
.
├── README.md
├── challenges_with_large_infrastructure
│   └── README.md
├── conditional_expressions
│   ├── 1_conditionals_with_count.tf
│   ├── 2_conditional_with_bool_count.tf
│   └── README.md
├── data_sources
│   ├── README.md
│   ├── create_ec2_from_ami.tf
│   ├── create_ec2_using_existing_key.tf
│   ├── create_subnet_from_existing_vpc.tf
│   ├── output_existing_key_pair.tf
│   └── output_of_existing_aws_vpc.tf
├── data_types
│   ├── README.md
│   ├── access_complex_data_types
│   │   ├── README.md
│   │   ├── main.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   ├── main.tf
│   ├── terraform.tfvars
│   └── variables.tf
├── dynamic_block
│   ├── 1_dynamic.tf
│   ├── 2_dynamic.tf
│   ├── README.md
│   ├── dynamic_block_with_iterator.tf
│   └── nested_block.tf
├── inbuilt_functions
│   ├── README.md
│   ├── collection
│   │   └── README.md
│   ├── date_and_time
│   │   └── README.md
│   ├── filesystem
│   │   └── README.md
│   ├── functions.tf
│   ├── numeric
│   │   └── README.md
│   ├── string
│   │   └── README.md
│   └── type_conversion
│       ├── README.md
│       └── try.tf
├── loading_order_and_semantics_for_prod
│   ├── README.md
│   ├── after
│   │   ├── aws_vpc.tf
│   │   ├── ec2_instances.tf
│   │   ├── locals.tf
│   │   ├── provider.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   └── before
│       └── main.tf
├── login_methods
│   └── provider_aws_config.md
├── meta_arguments
│   ├── README.md
│   ├── count
│   │   ├── 1_count_index_simple.tf
│   │   ├── 2_count_index_with_list.tf
│   │   ├── 3_count_index.tf
│   │   ├── README.md
│   │   └── count_aws-instances.tf
│   ├── for_each
│   │   ├── README.md
│   │   ├── with_map.tf
│   │   └── with_set.tf
│   └── lifecycle
│       ├── README.md
│       ├── create_before_destroy.tf
│       ├── ignore_changes.tf
│       ├── precondition.tf
│       ├── prevent_destroy.tf
│       └── replace_triggered_by.tf
├── modules
│   ├── A
│   │   └── my_ec2.tf
│   ├── B
│   │   └── my_sg.tf
│   ├── C
│   │   └── my_sg_with_ec2.tf
│   ├── README.md
│   ├── locals_module
│   │   └── sg
│   │       ├── locals.tf
│   │       └── main.tf
│   ├── output_module
│   │   └── main.tf
│   └── variables_module
│       └── ec2
│           ├── main.tf
│           └── variables.tf
├── provisioners
│   ├── README.md
│   ├── destroy_and_creation_time_provisioner.tf
│   ├── file.tf
│   ├── local_exec.tf
│   ├── on_failure.tf
│   └── remote_exec.tf
├── remote_state_management
│   ├── README.md
│   ├── import_command
│   │   ├── README.md
│   │   ├── ec2_instance_import.tf
│   │   └── sec_grp_import.tf
│   ├── state_locking
│   │   └── README.md
│   ├── terraform_backends
│   │   ├── README.md
│   │   └── s3_backend.tf
│   └── terraform_remote_state
│       ├── network
│       │   ├── eip.tf
│       │   ├── outputs.tf
│       │   ├── provider.tf
│       │   └── s3_network_backend.tf
│       └── security
│           ├── provider.tf
│           ├── s3_sec_backend.tf
│           ├── sec_grp.tf
│           └── terraform_remote_state_datasource.tf
├── resources
│   ├── README.md
│   ├── aws_key_pair.tf
│   ├── aws_required_providers.tf
│   ├── ec2_instance.tf
│   ├── elastic_load_balancer.tf
│   ├── github_repo.tf
│   ├── security_group_and_cross_reference_attribute.tf
│   ├── subnet.tf
│   └── vpc.tf
├── security_primer
│   ├── README.md
│   ├── aws_sts
│   │   ├── README.md
│   │   ├── eip.tf
│   │   └── provider.tf
│   ├── hashicorp_vault
│   │   └── README.md
│   ├── multiple_aws_accounts
│   │   ├── providers.tf
│   │   └── resources.tf
│   ├── multiple_regions
│   │   ├── provider.tf
│   │   └── resources.tf
│   └── sensitive_parameter.tf
├── splat_expression
│   ├── README.md
│   └── main.tf
├── terraform_cloud
│   └── README.md
├── terraform_graph
│   ├── README.md
│   └── main.tf
├── terraform_output
│   └── README.md
├── terraform_registry
│   └── README.md
├── terraform_settings
│   ├── README.md
│   ├── required_providers.tf
│   └── required_version.tf
├── terraform_workspace
│   ├── README.md
│   ├── main.tf
│   ├── terraform.tfvars
│   └── variables.var
├── variable_definition_files
│   ├── README.md
│   ├── main.tf
│   ├── terraform.tfvars
│   └── variable.tf
├── variables
│   ├── README.md
│   ├── input
│   │   ├── input_var.tf
│   │   └── use_input_var.tf
│   ├── local
│   │   ├── 1_local_variable.tf
│   │   ├── 2_local_variable.tf
│   │   └── README.md
│   └── output
│       └── output_variables.tf
└── zipmap
    ├── README.md
    └── zipmap.tf

58 directories, 133 files
```
