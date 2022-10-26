(function(){
	const tbody = document.querySelector("#resultTbody");
	tbody.addEventListener("click", function(e){
		const target = e.target;
		if(!target.classList.contains("chooseChk")) {
			e.preventDefault();
			return;
		}
		const $select = $(target.parentElement.parentElement).find("#codeSelect");
		if(target.checked){
			$select.prop('disabled', false);
		}else{
			$select.prop('disabled', true);
		}
		
	});
	
	$('#saveBtn').on("click", function() {
		const arr = [];
		const $checked = $("input[name=chooseChk]:checked");
		$checked.each(function(idx, val) {
			const reservIdObj = val.parentElement.parentElement.querySelector('#reservId');
			const selectObj = val.parentElement.parentElement.querySelector('#codeSelect');
			arr.push({id:reservIdObj.value, code:selectObj.value});
		});
		document.querySelector('#ids').value = arr.map(ele=>`${ele.id}`).join(',');
		document.querySelector('#codes').value = arr.map(ele=>`${ele.code}`).join(',');
		
		const form = document.querySelector('#updateForm');
		form.submit();
	});
})();