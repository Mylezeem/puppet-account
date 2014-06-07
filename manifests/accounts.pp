# == Class: Accounts
#
# A class that allows one to define multiple
# user account in one call
#
class account::accounts {
  $accounts = hiera_hash('account::accounts', undef)

  if $accounts {
    create_resources('::account', $accounts)
  }
}
