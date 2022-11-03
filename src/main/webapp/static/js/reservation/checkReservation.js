(function() {
	$("#checkBtn").on("click", function() {
		// 3개의 입력값이 들어왔는지 검사
		$.ajax({
			type: "POST",
			url: `./checkReservation`,
			dataType: "text",
			data: { reservSeq: $("#reservSeq").val(), guestNm: $("#guestNm").val(), guestCellPhone: $("#guestCellPhone").val() },
			contentType: "application/x-www-form-urlencoded;charset=UTF-8",
			error: function() {
				console.log('통신실패!!');
			},
			success: function(data) {
				const result = JSON.parse(data);
				const list = result.list;
				if ( list.length > 0 ) {
					const revInfo = list[0];
					$("#reservCode").text(revInfo.reservCode);
					$("#inputGuestNm").text(revInfo.guestNm);
					$("#reservSeq").text(revInfo.reservSeq);
					$("#startDt").text(revInfo.startDt);
					$("#endDt").text(revInfo.endDt);
					$("#extraPerson").text(revInfo.extraPerson);
					$("#totalFee").text(revInfo.totalFee);
					$("#myModal").modal('show');
				}else {
					alert("예약 정보가 없습니다.");
				}
			}
		});
	});
})();
