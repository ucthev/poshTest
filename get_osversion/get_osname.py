DOCUMENTATION = '''
---
module: get_osname
version_added: "0.1"
short_description: gets os version
description:
- use WMI to get operating system version
'''
EXAMPLES = '''
# get os version of a windows host
ansible windows -m get_osname
# Example from an Ansible Playbook
- action: get_osname
'''

