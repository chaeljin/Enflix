#Enflix📽️

### [곽형림](https://github.com/gudfla1815)👨🏻‍💻 [정은진](https://github.com/chaeljin)(B)👩🏻‍💻 [최해림](https://github.com/choihaerim)👩🏻‍💻

[GitHub - chaeljin/Enflix](https://github.com/chaeljin/Enflix.git)

### 1. 프로젝트 소개

---

> 플레이데이터 최고의 즐거움 엔플릭스! 🎞️

엔플릭스는 각종 수상 경력에 빛나는 영화, 애니메이션, 다큐멘터리 등 다양한 컨텐츠들을 인터넷 연결이 가능한 디바이스에서 시청할 수 있는 스트리밍 서비스 입니다.  저렴한 월 요금으로 일체의 광고 없이 원하는 시간에 원하는 만큼 즐길 수 있습니다. 무궁무진한 콘텐츠를 사랑하는 사람과 즐겨보세요! 💏

### 2. 프로젝트 Timeline🗓️

[DB구축 DTO/ENTITY 구성](https://www.notion.so/DB-DTO-ENTITY-08513e76468b4556a33ee2929863895b)

[메인 홈페이지 구축 및 로그인 기능 구축](https://www.notion.so/fdcad5019a884ea688ba6777338da961)

[검색 엔진 및 로그아웃 기능 구축](https://www.notion.so/20985a3169124a108e9b9be0c36e3d84)

---

### 3. 모델링

![스크린샷(20).png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ff1fb04c-dc4a-49fd-9734-3a0d4a009efc/스크린샷(20).png)

---

---

### 4. FUNCTION 🛠

![스크린샷(22).png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/52e73c34-e669-4140-a558-8b8010cc85d1/스크린샷(22).png)

---

### 5. Trouble Shooting 🤦🏻

- 😨구조상 문제가 없으나 두 번 출력되어 null exception 발생
    - HTML의 "submit"과 onclick이 겹쳐져서 null exception 발생
- 😨 Entity와 테이블 이름 다르게 설정해서 에러 다수 발생

    명확한 테이블 이름 설정 필요 통감

- 😨 video(mp4) 실행이 안 될때
    - html이나 jsp에서 video를 실행하고자 할 때 mp4파일이 실행이 되지 않을 때가 있음
    - 그럴 경우 해당 파일의 코덱이 달라서 그러므로 h264로 코덱을 변환해주면 실행이 됨

---

### 6. 아쉬운 점 😥

- 실제 넷플릭스처럼 주제가 같은 영상들을 슬라이드 형식으로 마우스로 클릭하면 옆으로 넘어가게 하고 싶었지만 구현을 하지 못함
- 메인 화면에 영상이 있을 때 연령 제한이나 등급 제한을 표현하고 싶었으나 실력 관계 상 구현하지 못함
- 가장 인기있는 영상, 시청했던 영상, 영상 찜 등의 기능을 구상은 했으나 시간 관계상 구현하지 못함
- 영상 이미지에 마우스를 갖다 대면 미리보기로 gif가 실행이 되는데 마우스를 뗐다가 다시 갖다 댈 경우 gif가 초기화된 상태로 새로 실행이 되는 것이 아닌 중단된 상태에서 다시 실행이 됨. 이를 해결하기 위해서는 css파일이 아닌 js파일을 이용해야 했음
- CSS에 미숙해서 사용하던 pc 화면에 맞춰서는 ui를 원하는 대로 구현할 수 있었으나, 화면 크기가 바뀌면 일그러져 버림
- 깃을 사용하려고 했지만, 초반에 업로드가 안 되는 문제가 발생하여 빠르게 포기함.
- CSS 파일을 만들어서 코드들을 합쳤어야 했는데 각자 만들다가 결국 돌이킬 수 없게 됨.
- 로그아웃 시에 세션을 비워도 뒤로가기 하면 이전 창으로 돌아가짐. 세션 검증 코드를 넣었는데도 새로고침을 해야 로그인 안내가 나옴.

---

### 7. 배운 점 😏

- 페이지 전환을 이해할 수 있게 됨
- html → servlet → jsp 로 데이터를 주고 받는 것을 이해하는 데에 많은 도움
- 색상이나 크기를 바꾸는 것과 같은 ui 구현의 이해
- 깃허브의 중요성

