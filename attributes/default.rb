# dbdisk mount being on a separate disk
# example useage in role ['workflow_support']['docroot']['disk'] = '/dev/sdb'
normal['workflow_support']['docroot']['disk'] = nil
# dbpath_mount_point normals to workflowbase cookbook attribute thats set in the workflowbase dbpath
normal['workflow_support']['docroot']['mount_point'] = '/htdocs'
normal['workflow_support']['docroot']['mount_options'] = 'noatime,nofail,nodiratime'
normal['workflow_support']['docroot']['filesystem_type'] = 'ext4'

normal['workflowbase']['logrotate']['frequency'] = 'daily'
normal['workflowbase']['logrotate']['rotate'] = '10'
