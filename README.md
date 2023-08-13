## [제 17회 공개SW 개발자대회] 알약 인식 기능을 활용한 복용 약 관리 앱 - 찰칵 메디슨 💊

### 💡 Update Condition
> 0811 : 메인 화면 - 로그인 전/후 화면 만들기

<img src="https://github.com/WhatIsMethIs/WhatIsMethIs-App/assets/114139700/2c03e627-394e-4eed-932e-d68842b3faae" width="324" height="702"/>
<img src="https://github.com/WhatIsMethIs/WhatIsMethIs-App/assets/114139700/e13c66f2-ddec-46b7-aee2-13dc9e61039f" width="324" height="702"/>

- 파일 구성 
1) 로고 + 마이페이지 행 & '오늘의 복약 정보' 텍스트 + 화살표 버튼
2) 복약 정보를 띄울 위젯 
3) 사진으로 알약 찾기 / 이름으로 알약 찾기 / 비상 연락망 가로스크롤 위젯
4) 로그인 전 화면에 나타날 '로그인 후에 ~~' 텍스트
- '오늘의 복약 정보' 텍스트 옆 화살표 버튼을 누르면 복약 정보 조회 페이지로 넘어갑니다. ➡️ 구현 예정
- 중앙의 '더보기' 텍스트 옆 화살표 버튼을 누르면 그 날의 모든 복약 정보가 표시되는데, ➡️ 구현 예정
- 새로운 창이 뜨는 것이 아닌 한 페이지에 모두 표시됩니다. ➡️ 구현 예정
- 사진으로 알약 찾기 / 이름으로 알약 찾기 / 비상 연락망 위젯은 가로 스크롤을 이용하였습니다.
- 가로 스크롤을 이용하여 위젯을 넘길 때, 위젯 하단에 표시되는 바는 아직 구현되지 않았습니다. ➡️ 구현 예정

> 0812 : 복약 정보 등록 화면 - 틀 짜기

<img src="https://github.com/StopSoo/WhatIsMethIs-App/assets/114139700/e59ba81b-36e1-46f1-b33f-e5e3f40e02da" width="324" height="702"/>

- To do list
1) DropdownButton 해결하기
2) margin, padding 깔끔하게 정리하기
3) time picker 선택 창 코드 정리하기
4) main.dart 파일에 구현되어 있는 클래스들 각각 한 파일로 정리하기
5) 어제 구현한 가로스크롤 바 완성하기
