(function() {
	$("#goCheck").on("click", function() {
		$.ajax({
			type: "GET",
			url: `./checkReservation`,
			dataType: "text",
			data: {reservSeq: $("#reservSeq").val() , guestNm: $("#guestNm").val() , guestCellPhone: $("#guestCellPhone").val()},
			contentType: "application/x-www-form-urlencoded;charset=UTF-8",
			error: function() {
				console.log('통신실패!!');
			},
			success: function(data){
				
			}
		});

		if ($("#reservSeq").val() != "${list.reservSeq}") {
			alert("주문번호를 확인해주세요.");
			return;
		}
		if ($("#guestNm").val() != '홍길동') {
			alert("이름을 확인해주세요.");
			return;
		}
		if ($("#guestCellPhone").val() != '01') {
			alert("연락처를 확인해주세요.");
			return;
		}

		$("#inputGuestNm").val($("#guestNm").val());
		$("#myModal").modal('show');

	});
})();