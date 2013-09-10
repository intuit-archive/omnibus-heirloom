## omnibus-heirloom

This contains the skeleton for building Omnibus heirloom package.

## Build

To build the heirloom RPM on the local system:

	yum install -y --quiet intu-ruby git s3cmd rpm-build  python-setuptools
	gem install bundler -v 1.2.2 --no-ri --no-rdoc --quiet
	git clone --quiet https://github.com/intuit/omnibus-heirloom.git /var/tmp/omnibus-heirloom
	cd /var/tmp/omnibus-heirloom
	bundle install --quiet --binstubs
	bin/omnibus build project heirloom

## Continuous Integration

omnibus-heirloom leverages knife-ec2 to create an instance which is used to build the RPM during CI. Over view of CI:

* Clone omnibus-heirloom on CI instance and execute ./scripts/ci_setup
* The ci_setup script uses knife-ec2 to create an ec2 instance
* The instance is bootstraped using the omnibus.rb bootstrap script.
* The git repo is cloned on the newly created build box.
* The necessary omnibus tools are installed.
* The RPM is built via omnibus.
* The RPM is uploaded to S3. Any RPMs with the same name, version and build iteration are replaced.
* The ci_setup script executes cleanup.rb to destroy any build boxes.

## Requirements

* AWS account with access to upload to S3 bucket and manage EC2 instances.
* Credentials set as AWS_SECRET_ACCESS_KEY and AWS_ACCESS_KEY_ID
* Ruby version 1.9.2 or higher
* Access to the AMI listed in the file `script/knife/config/knife.rb`
