# Hush

This gem provides a command line utility called 'hush' which can
manage secret info. This was built to solve my problem of not
wanting to store email addresses and other sensitive info in my
github managed dotfiles project.

The hushs are not meant to be cryptographically secure. They are
stored in a yaml file (~/.hush.yml) and are protected by unix
file permissions. This is similar to how ssh private keys are stored in
an ~/.ssh directory.

## Examples

git config user.email ${hush my_email}

This will store the value of *my_email* in your git config. If
*my_email* is not known to hush, you will be prompted to supply it and
it will be remembered from then on.
