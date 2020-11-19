
use Net::GitHub;
use Data::Dumper;

my $gh = Net::GitHub->new(
    version => 3,
    #login => 'fayland', pass => 'mypass',
    # or
    # access_token => $oauth_token
);

$gh->set_default_user_repo('eclipse-ee4j', 'glassfish'); # take effects for all $gh->

#print Dumper($gh->repos->list_user('borisbaldassari'));
#print Dumper($gh->repos->list);

print "Get " .  Dumper($gh->repos->get);
exit;

print "Langs " .  Dumper($gh->repos->languages);
print "Tags " .  Dumper($gh->repos->tags);
print "Contributors " .  Dumper($gh->repos->contributors);
print "Teams " .  Dumper($gh->repos->teams);

exit;

my $gh = Net::GitHub::V3->new( login => 'fayland', pass => 'secret' );
my $oauth = $gh->oauth;
my $o = $oauth->create_authorization( {
    scopes => ['user', 'public_repo', 'repo', 'gist'], # just ['public_repo']
    note   => 'test purpose',
} );
print $o->{token};

# after create the token, you can use it without your password publicly written

my $github = Net::GitHub->new(
    access_token => $token, # from above
);















