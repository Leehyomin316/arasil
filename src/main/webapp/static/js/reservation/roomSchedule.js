$(function() {
	initCalendar();
	fillRoomSchedules();
});
/*
  달력 렌더링 할 때 필요한 정보 목록 

  현재 월(초기값 : 현재 시간)
  금월 마지막일 날짜와 요일
  전월 마지막일 날짜와 요일
*/
(function(global) {
	function calendarInit() {

		// 날짜 정보 가져오기
		var date = new Date(); // 현재 날짜(로컬 기준) 가져오기
		var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000); // uct 표준시 도출
		var kstGap = 9 * 60 * 60 * 1000; // 한국 kst 기준시간 더하기
		var today = new Date(utc + kstGap); // 한국 시간으로 date 객체 만들기(오늘)

		var thisMonth = new Date(today.getFullYear(), today.getMonth(), today.getDate());
		// 달력에서 표기하는 날짜 객체


		var currentYear = thisMonth.getFullYear(); // 달력에서 표기하는 연
		var currentMonth = thisMonth.getMonth(); // 달력에서 표기하는 월
		var currentDate = thisMonth.getDate(); // 달력에서 표기하는 일

		// kst 기준 현재시간
		// console.log(thisMonth);

		// 캘린더 렌더링
		renderCalender(thisMonth);

		function renderCalender(thisMonth) {

			// 렌더링을 위한 데이터 정리
			currentYear = thisMonth.getFullYear();
			currentMonth = thisMonth.getMonth();
			currentDate = thisMonth.getDate();

			// 이전 달의 마지막 날 날짜와 요일 구하기
			var startDay = new Date(currentYear, currentMonth, 0);
			var prevDate = startDay.getDate();
			var prevDay = startDay.getDay();

			// 이번 달의 마지막날 날짜와 요일 구하기
			var endDay = new Date(currentYear, currentMonth + 1, 0);
			var nextDate = endDay.getDate();
			var nextDay = endDay.getDay();

			// console.log(prevDate, prevDay, nextDate, nextDay);

			// 현재 월 표기
			$('.year-month').text(currentYear + '.' + (currentMonth + 1));

			// 렌더링 html 요소 생성
			var calendar = document.querySelector('.dates')
			calendar.innerHTML = '';

			// 지난달
			for (var i = prevDate - prevDay; i <= prevDate; i++) {
				calendar.innerHTML = calendar.innerHTML + '<div class="day prev disable">' + i + '</div>'
			}
			// 이번달
			for (var i = 1; i <= nextDate; i++) {
				calendar.innerHTML = calendar.innerHTML + 
				`<div class="day current ${i}">
					<span>${i}</span>
					<ul class="schedule"></ul>
				</div>`;
			}
			// 다음달
			for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 6 - nextDay); i++) {
				calendar.innerHTML = calendar.innerHTML + '<div class="day next disable">' + i + '</div>'
			}

			// 오늘 날짜 표기
			if (today.getMonth() == currentMonth) {
				todayDate = today.getDate();
				var currentMonthDate = document.querySelectorAll('.dates .current');
				currentMonthDate[todayDate - 1].classList.add('today');
			}
			
			// 달력 날짜 클릭 시 이벤트 헨들러 
			calendar.addEventListener("click", (e) => {
				let target = e.target;
				console.log(target);
			});

		}

		// 이전달로 이동
		$('.go-prev').on('click', function() {
			thisMonth = new Date(currentYear, currentMonth - 1, 1);
			renderCalender(thisMonth);
			fillRoomSchedules();
		});

		// 다음달로 이동
		$('.go-next').on('click', function() {
			thisMonth = new Date(currentYear, currentMonth + 1, 1);
			renderCalender(thisMonth);
			fillRoomSchedules();
		});
		
	}
	
	function fillRoomSchedules(){
		const [year, month] = document.querySelector(".year-month").innerText.split(".");
		console.log(year, month);
		const startDt = `${year}${month.padStart(2, '0')}01`;
		const lastDay = new Date(year, parseInt(month)-1, 0).getDate();
		const endDt = `${year}${month.padStart(2, '0')}${lastDay}`;
		console.log(startDt, lastDay, endDt);
		$.ajax({
			type: "GET",
			url: `./getRoomSchedules`,
			dataType: "text",
			data: {startDt, endDt},
			contentType: "application/x-www-form-urlencoded;charset=UTF-8",
			error: function() {
				console.log('통신실패!!');
			},
			success: function(data) {
				const result = JSON.parse(data);
				console.log(result);
				fillCalendarWithSchedule(result);
			}
		});		
	}
	
	function fillCalendarWithSchedule(data){
		var schedules = data.scheduleInfos;
		const roomGroup = groupBy(schedules, 'room_id');
		console.log(roomGroup);
		for(let groupKey in roomGroup){
			const group = roomGroup[groupKey];
			group.forEach((item)=>{
				let startDt = new Date(item.start_dt).getDate();
				console.log(`111111111111111 ${startDt}`);
				let days = item.days;
				let $scheduleUl = $(`.day.current.${startDt} .schedule`);
				$scheduleUl.append(`<li>${item.room_nm}(${item.guest_nm})</li>`);
				if ( days > 0 ){
					for(let i=0; i<days; i++){
						let $ul =  $(`.day.current.${startDt+(i+1)} .schedule`);
						$ul.append(`<li>${item.room_nm}(${item.guest_nm})</li>`);								
					}
				}
			});			
		}
	}
	// 배열의 원소들을 그룹키 별로 그룹화 시켜 주는 함수
	// {1:Array, 2:Array}
	function groupBy (data, key) {
	    return data.reduce(function (carry, el) {
	        var group = el[key];
	
	        if (carry[group] === undefined) {
	            carry[group] = []
	        }
	
	        carry[group].push(el)
	        return carry
	    }, {})
	}
	
	global.initCalendar = calendarInit;
	global.fillRoomSchedules = fillRoomSchedules;
})(window || this);
