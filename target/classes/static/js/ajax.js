$(document).ready(function () {
	// 			$('.groupType').select2();
	$.ajax({
		type: "GET",
		url: "/a",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function (msg) {
			/* console.log('Success') */
			for (var i = 0; i < msg.length; i++) {
				$('#a').append('<option value="' + msg[i].id + '">' + msg[i].typeName + '</option>');
			}
		}
	});

	$('#a').change(function () {
		$('#b').empty();
		var testAjexBean = { "zz": $('#a').val() };
		$.ajax({
			type: "POST",
			url: "/b",
			data: JSON.stringify(testAjexBean),
			contentType: "application/json; charset=utf-8",
			dataType: "json",
			success: function (msg) {
				/* console.log('Success') */
				$('#b').append('<option>' + "== กรุณาเลือก ==" + '</option>');
				for (var i = 0; i < msg.length; i++) {
					$('#b').append('<option value="' + msg[i].id + '">' + msg[i].product + '</option>');
				}
			}
		});
	});
});