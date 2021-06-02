<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<div class="searchBox">
<form name="form1">

<select onchange="categoryChange(this)" id = "location_first" name = "location_first">
	<option selected>지역 선택</option>
	<option value='서울특별시'>서울특별시</option>
	<option value='부산광역시'>부산광역시</option>
	<option value='대구광역시'>대구광역시</option>
	<option value='인천광역시'>인천광역시</option>
	<option value='광주광역시'>광주광역시</option>
	<option value='대전광역시'>대전광역시</option>
	<option value='울산광역시'>울산광역시</option>
	<option value='강원도'>강원도</option>
	<option value='경기도'>경기도</option>
	<option value='경상남도'>경상남도</option>
	<option value='경상북도'>경상북도</option>
	<option value='전라남도'>전라남도</option>
	<option value='전라북도'>전라북도</option>
	<option value='제주특별자치도'>제주특별자치도</option>
	<option value='충청남도'>충청남도</option>
	<option value='충청북도'>충청북도</option>
	<option value='세종특별자치시'>세종특별자치시</option>
</select>
<select id="location_second" name = "location_second">
<option>선택</option>
</select>
<script>
function categoryChange(e) {
	var location_seoul = ['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구', '하남시'];
	var location_busan = ['강서구', '금정구', '기장군', '남구', '동구', '동래구', '부산진구', '북구', '사상구', '사하구', '서구', '수영구', '연제구', '영도구', '중구', '해운대구'];
	var location_daegu = ['남구', '달서구', '달성군', '동구', '북구', '서구', '수성구', '중구'];
	var location_incheon = ['강화군', '계양구', '남동구', '동구', '미추홀구', '부평구', '서구', '연수구', '옹진군', '중구'];
	var location_gwangju = ['광산구', '남구', '동구', '북구', '서구'];
	var location_daejeon = ['대덕구', '동구', '서구', '유성구', '중구'];
	var location_ulsan = ['남구', '동구', '북구', '울주군', '중구'];
	var location_gangwon = ['강릉시', '고성군', '동해시', '삼척시', '속초시', '양구군', '양양군', '영월군', '원주시', '인제군', '정선군', '철원군', '춘천시', '태백시', '평창군', '홍천군', '화천군', '횡성군'];
	var location_gyeonggi = ['가평군', '고양시 덕양구', '고양시 일산동구', '고양시 일산서구', '과천시', '광명시', '광주시', '구리시', '군포시', '김포시', '남양주시', '동두천시', '부천시', '성남시 분당구', '성남시 수정구', '성남시 중원구', '수원시 권선구', '수원시 영통구', '수원시 장안구', '수원시 팔달구', '시흥시', '안산시 단원구', '안산시 상록구', '안성시', '안양시 동안구', '안양시 만안구', '양주시', '양평군', '여주시', '연천군', '오산시', '용인시 기흥구', '용인시 수지구', '용인시 처인구', '의왕시', '의정부시', '이천시', '파주시', '평택시', '포천시', '하남시', '화성시'];
	var location_gyeongnam = ['거제시', '거창군', '고성군', '김해시', '남해군', '밀양시', '사천시', '산청군', '양산시', '의령군', '진주시', '창녕군', '창원시 마산합포구', '창원시 마산회원구', '창원시 성산구', '창원시 의창구', '창원시 진해구', '통영시', '하동군', '함안군', '함양군', '합천군'];
	var location_kyeongbuk = ['경산시', '경주시', '고령군', '구미시', '군위군', '김천시', '문경시', '봉화군', '상주시', '성주군', '안동시', '영덕군', '영양군', '영주시', '영천시', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군', '칠곡군', '포항시 남구', '포항시 북구'];
	var location_jeonman = ['강진군', '고창군', '고흥군', '곡성군', '광양시', '구례군', '나주시', '담양군', '목포시', '무안군', '보성군', '순천시', '신안군', '여수시', '영광군', '영암군', '완도군', '장성군', '장흥군', '진도군', '함평군', '해남군', '화순군'];
	var location_jeonbuk = ['고창군', '군산시', '김제시', '남원시', '무주군', '부안군', '순창군', '완주군', '익산시', '임실군', '장수군', '전주시 덕진구', '전주시 완산구', '정읍시', '진안군'];
	var location_jeju = ['서귀포시', '제주시'];
	var location_chungnam = ['계룡시', '공주시', '금산군', '논산시', '당진시', '보령시', '부여군', '서산시', '서천군', '아산시', '예산군', '천안시 동남구', '천안시 서북구', '청양군', '태안군', '홍성군'];
	var location_chungbuk = ['괴산군', '단양군', '보은군', '영동군', '옥천군', '음성군', '제천시', '증평군', '진천군', '청주시 상당구', '청주시 서원구', '청주시 청원구', '청주시 흥덕구', '충주시'];
	var location_sejong = ['세종시'];
	var target = document.getElementById("location_second");

	if(e.value == "서울특별시") var d = location_seoul;
	else if(e.value == "부산광역시") var d = location_busan;
	else if(e.value == "대구광역시") var d = location_daegu;
	else if(e.value == "인천광역시") var d = location_incheon;
	else if(e.value == "광주광역시") var d = location_gwangju;
	else if(e.value == "대전광역시") var d = location_daejeon;
	else if(e.value == "울산광역시") var d = location_ulsan;
	else if(e.value == "강원도") var d = location_gangwon;
	else if(e.value == "경기도") var d = location_gyeonggi;
	else if(e.value == "경상남도") var d = location_gyeongnam;
	else if(e.value == "경상북도") var d = location_kyeongbuk;
	else if(e.value == "전라남도") var d = location_jeonman;
	else if(e.value == "전라북도") var d = location_jeonbuk;
	else if(e.value == "제주특별자치도") var d = location_jeju;
	else if(e.value == "충청남도") var d = location_chungnam;
	else if(e.value == "충청북도") var d = location_chungbuk;
	else if(e.value == "세종특별자치시") var d = location_sejong;

	target.options.length = 0;

	for (x in d) {
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}
}
</script>
</form>
	</div>
	<script type="text/javascript">
    $('#location_second').change(function(){
		location.href="./administration_list.jsp?location_first="+$('#location_first option:selected').val()+"&location_second="+this.value;
   	});
	</script>
</html>