use GD::Graph::lines;
require 'save.pl';

@data = ( 
    ["1st","2nd","3rd","4th","5th","6th","7th", "8th", "9th"],
    [   35,   32,   34,   33,   39,   38,   36,    35,    31],
    [    1,    2,    5,    6,    3,  1.5,    1,   1.3,     2]
);

my $name = 'sample';

my $graph = GD::Graph::lines->new;

print STDERR "Processing $name\n";

$graph->set( 
	two_axes => 1,
	zero_axis => 1,

	transparent => 0,
);

$graph->set(rotate_chart => 1) if $name =~ /-h$/;

$graph->set_legend( 'left axis', 'right axis' );
$graph->plot(\@data);
save_chart($graph, $name);
