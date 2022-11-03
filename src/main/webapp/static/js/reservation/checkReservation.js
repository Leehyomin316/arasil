(function() {
	$("#checkBtn").on("click", function() {
		// 3개의 입력값이 들어왔는지 검사
		if($("#reservSeq").val() == ''){
			alert("주문번호를 입력해주세요.");
			return;
		}
		if($("#guestNm").val() == ''){
			alert("이름을 입력해주세요.");
			return;
		}
		if($("#guestCellPhone").val() == ''){
			alert("연락처를 입력해주세요.");
			return;
		}
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
				console.log(list);
				if ( list.length > 0 ) {
					const revInfo = list[0];
					$("#roomNm").text(revInfo.roomNm);
					$("#reservCode").text(revInfo.reservCode);
					$("#inputGuestNm").text(revInfo.guestNm);
					$("#inputReservSeq").text(revInfo.reservSeq);
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
