from __future__ import absolute_import, print_function, unicode_literals
import sys
import boto3


def main(name):
    ec2 = boto3.resource('ec2')
    instances = ec2.instances.filter(Filters=[
        {'Name': 'instance-state-name', 'Values': ['running']},
        {'Name': 'tag:Name', 'Values': [name]}
    ])
    for instance in instances:
        print(instance.private_ip_address)


if __name__ == '__main__':
    main(sys.argv[1])
