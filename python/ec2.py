from __future__ import absolute_import, print_function, unicode_literals
import sys
import boto3


def main(name):
    ec2 = boto3.resource('ec2')
    instances = ec2.instances.filter(Filters=[{'Name': 'instance-state-name',
                                               'Values': ['running']}])
    for instance in instances:
        if not instance.tags:
            continue
        for tag in instance.tags:
            if tag['Key'] == 'Name' and tag['Value'] == name:
                print(instance.private_ip_address)
                return 0
    print('Not found', file=sys.stderr)
    return 1

if __name__ == '__main__':
    main(sys.argv[1])
