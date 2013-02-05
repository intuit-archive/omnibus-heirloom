## omnibus-heirloom

This contains the skelton for building Omnibus Heirloom packages.

## Build

To build the Heirloom RPM on the local system:

    bundle exec rake clean
    bundle exec rake projects:heirloom

## Continuous Integration

Omnibus-heirloom leverages knife-ec2 to create an instance which is used to build the RPM during CI. Over view of CI:

* Clone omnibus-heirloom on CI instance and execute ci_setup.sh
* The ci_setup script uses knife-ec2 to create an ec2 instance
* The instance is bootstraped using the omnibus.rb bootstrap script.
* The git repo is cloned on the newly created build box.
* The necessary omnibus tools are installed.
* The RPM is built via omnibus.
* The RPM is uploaded to S3. Any RPMs with the same name, version and build iteration are replaced.
* The ci_setup script executes cleanup.rb to destroy any build boxes.
