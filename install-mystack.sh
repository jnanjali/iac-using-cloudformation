# Create Networking stack using IAC
aws cloudformation create-stack --stack-name my-network-stack --template-body file://network-resources.yml --parameters file://network-parameters.json

# Create Compute stack using IAC
aws cloudformation create-stack --stack-name my-compute-stack --template-body file://server-resources.yml --parameters file://server-parameters.json --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-west-2

#
aws elbv2 describe-load-balancers
{
    "LoadBalancers": [
        {
            "LoadBalancerArn": "arn:aws:elasticloadbalancing:us-west-2:130892749797:loadbalancer/app/my-co-WebAp-1AQO69QQU1LUV/15fec45d60071623",
            "DNSName": "my-co-WebAp-1AQO69QQU1LUV-191089245.us-west-2.elb.amazonaws.com",
            "CanonicalHostedZoneId": "Z1H1FL5HABSF5",
            "CreatedTime": "2020-09-14T04:00:48.540000+00:00",
            "LoadBalancerName": "my-co-WebAp-1AQO69QQU1LUV",
            "Scheme": "internet-facing",
            "VpcId": "vpc-020a16545efe974a9",
            "State": {
                "Code": "active"
            },
            "Type": "application",
            "AvailabilityZones": [
                {
                    "ZoneName": "us-west-2b",
                    "SubnetId": "subnet-0f613b6b46b0c7cc2",
                    "LoadBalancerAddresses": []
                },
                {
                    "ZoneName": "us-west-2a",
                    "SubnetId": "subnet-0fa08af2fccc62f0f",
                    "LoadBalancerAddresses": []
                }
            ],
            "SecurityGroups": [
                "sg-054d79671ffbebba1"
            ],
            "IpAddressType": "ipv4"
        }
    ]
}
curl my-co-WebAp-1AQO69QQU1LUV-191089245.us-west-2.elb.amazonaws.com
