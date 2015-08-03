# dbdisk mount being on a separate disk
# example useage in role ['workflow_support']['dbdisk']['disk'] = '/dev/sdb'
normal['workflow_support']['dbdisk']['disk'] = nil
# dbpath_mount_point normals to workflowbase cookbook attribute thats set in the workflowbase dbpath
normal['workflow_support']['dbdisk']['path_mount_point_loc'] = '/htdocs' 
normal['workflow_support']['dbdisk']['path_mount_point_opt'] = 'noatime,nofail,nodiratime'
normal['workflow_support']['dbdisk']['filesystem_type'] = 'ext4'

normal['workflowbase']['logrotate']['frequency'] = 'daily'
normal['workflowbase']['logrotate']['rotate'] = '10'
