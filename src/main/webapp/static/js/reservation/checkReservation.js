(function() {
	$("#goCheck").on("click", function() {
		if ($("#reservId").val() == '') {
			if ($("#guestNm").val() == '') {
				if ($("#guestCellPhone").val() == '') {
					$("#myModal").modal('show');
				} else {
					alert("주문정보를 다시 한 번 확인해주세요.");
				}
			} else {
				alert("주문정보를 다시 한 번 확인해주세요.");
			}
		} else {
			alert("주문정보를 다시 한 번 확인해주세요.");
		}
	})
})();