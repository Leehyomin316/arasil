(function() {
	$("#goCheck").on("click", function() {
		if ($("#reservSeq").val() != $(vo.reservSeq)) {
			alert("주문번호를 확인해주세요.");
			return;
		}
		if ($("#guestNm").val() != '홍길동') {
			alert("이름을 확인해주세요.");
			return;
		}
		if ($("#guestCellPhone").val() != '01012345678') {
			alert("연락처를 확인해주세요.");
			return;
		}
		$.ajax({
			type: "GET",
			url: `./checkReservation`,
			dataType: "text",
			data: { reservSeq: $("#reservSeq").val(), guestNm: $("#guestNm").val(), guestCellPhone: $("#guestCellPhone").val() },
			contentType: "application/x-www-form-urlencoded;charset=UTF-8",
			error: function() {
				console.log('통신실패!!');
			},
			success: function(data) {
				const result = JSON.parse(data);
				$("#guestNm").text(result.guestNm);
			}
		});
		$("#myModal").modal('show');
	});
})();