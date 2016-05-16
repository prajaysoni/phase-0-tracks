classroom = {
	'Billy Bob' => {
		'Favorite subject' => 'Math',
		'Grade' => 'A',
		'Foods' => [
			'Pizza',
			'Burgers',
			'McDonalds'
		]
	},

	'Won Reasley' => {
		'Favorite subject' => 'History',
		'Grade' => 'C',
		'Foods' => [
			'Pho',
			'Curry',
			'Apple Pie'
		]
	},

	'Ricky Bobby' => {
		'Favorite subject' => 'Cars',
		'Grade' => 'AAA',
		'Foods' => [
			'Hot Dogs',
			'French Fries',
			'Beer'
		],
		'Races' => [
			'Indiana Jones 500' => {
				'Fastest' => '2:45',
				'Slowest' => '3:05'
			},
			'Bob Saget 1000' => {
				'Fastest' => '2:35',
				'Slowest' => '2:48'
			},
			'Bob Belcher 100' => {
				'Fastest' => '4:15',
				'Slowest' => '5:03'
			}
		]
	}

}

puts "Info for Billy Bob"
p classroom['Billy Bob']['Favorite subject']

p classroom['Billy Bob']['Grade']

p classroom['Billy Bob']['Foods'][1]


puts "Info for Won Reasley"
p classroom['Won Reasley']['Favorite subject']

p classroom['Won Reasley']['Grade']

p classroom['Won Reasley']['Foods'][2]

p classroom['Won Reasley']['Foods']
