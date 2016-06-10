console.log("Hello");

$(function() {

	$('#btn1').on('click', function() {
		$('#data1').slideToggle(500);
	});

	$('#btn2').on('click', function() {
		$('#data2').toggle(1000);
	});

	$('#btn3').on('click', function() {
		$('#data3').toggleClass('red');
	});

	$('#head').hover( function() {
		$(this).toggleClass('red');
	});


	function fade() {
		$('#fade').fadeOut(1500, function() {

			$('#fade').delay(500).fadeIn(1500);
			fade();

		});
	}
	fade();

});