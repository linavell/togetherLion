/*
// 게시물 생성 시, 저장되는 위도/경도 값 가져옴
var lat=37.5566851;
var lng=126.9196569;


var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
        level: 2 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(lat, lng); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
*/

// 게시물 생성 시, 저장되는 위도/경도 값 가져옴
var lat=37.5566851;
var lng=126.9196569;


var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
	center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
	level: 2 // 지도의 확대 레벨
};

// 지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(lat, lng); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
	position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);


getAddr(lat,lng);
function getAddr(lat,lng){
    let geocoder = new kakao.maps.services.Geocoder();

    let coord = new kakao.maps.LatLng(lat, lng);
    let callback = function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
            console.log(result);
            /*
            0:
				address:
				address_name: "서울 마포구 서교동 445-7"	// 이거 buyPostArticle, insertform에 활용
				main_address_no: "445"
				mountain_yn: "N"
				region_1depth_name: "서울"
				region_2depth_name: "마포구"				// 이걸로 메인 제목에 띄울 수 있고
				region_3depth_name: "서교동"
				sub_address_no: "7"
				zip_code: "" 
            */
            document.getElementById("detailAddr").value = result[0].address.address_name;
        }
    };

    geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
}



  
