use Mojolicious::Lite;

#get '/' => sub {
#	my $c = shift;
#	$c->render(text=>'Hello World!');
#};

get '/:name' => {name=> ' world!'} => sub {
	my $c = shift;
	#my $name = $c->stash('name');
	$c->render('hello'); #stash(text => "Hello $name" );
};

app->start;

__DATA__

@@ hello.html.ep
hello <%= $name %>
