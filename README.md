# workflow_apache_support-cookbook

This is a support cookbook for apache2 to configure extra disks for the document root, set iptables rules, etc.

## Supported Platforms

Centos

## Attributes


## Usage

### workflow_support::default

Include `workflow_support` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[workflow_support::default]"
  ]
}
```

## License and Authors

Author:: daniel washko (<dwashko@gannett.com>)
