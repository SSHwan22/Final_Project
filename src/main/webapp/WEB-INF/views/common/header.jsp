<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script type="text/javascript" src="/thrifty/resources/js/common/header.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="/thrifty/resources/css/common/header.css">
    <link rel="stylesheet" href="/thrifty/resources/css/member/login.css">
    <link rel="stylesheet" href="/thrifty/resources/css/member/find.css">
    <link rel="stylesheet" href="/thrifty/resources/css/member/enroll.css">
    <title>Document</title>
    <meta name ="google-signin-client_id" content="">
    <script src="https://accounts.google.com/gsi/client" async defer></script>
</head>
<body>
    <div id="header" class="background_basic">
        <div id="header_1">
            <div id="header_1_1">
                <div id="main_logo" class="header_img_white"></div>
            </div>
            <div id="header_1_2">
                <div href="" class="content_white change_content" onclick="login();">로그인</div>
                <div href="" class="content_white change_content" onclick="enroll();">회원가입</div>
                <a href="" class="content_white change_content">내정보</a>
                <div id="header_search" class="search_img_white"></div>
            </div>
        </div>
        <div id="header_2">
            <div id="header_2_1">
                <div>
                    <a class="main_category content_white change_content">공지사항</a>
                    <div></div>
                </div>
                <div>
                    <a class="main_category content_white change_content">쉐어하우스</a>
                    <div></div>
                </div>
                <div>
                    <a class="main_category content_white change_content">카풀</a>
                    <div></div>
                </div>
                <div>
                    <a class="main_category content_white change_content">중고거래</a>
                    <div></div>
                </div>
                <div>
                    <a class="main_category content_white change_content">심부름/알바</a>
                    <div></div>
                </div>
                <div>
                    <a class="main_category content_white change_content">공동구매</a>
                    <div></div>
                </div>
                <div>
                    <a class="main_category content_white change_content">소모임</a>
                    <div></div>
                </div>
                <div>
                    <a class="main_category content_white change_content">자유게시판</a>
                    <div></div>
                </div>
            </div>
        </div>
        
        <ul>
            <li id="GgCustomLogin">
            </li>
        </ul>

    </div>
    <script>
        function login(){
            Swal.fire({html:`<div id="login-content">
                    <div id="title">
                        <img src="/thrifty/resources/images/main/icon/logo1.1.png" alt="로고이미지" width="60" height="60">
                        <div>알뜰살뜰 로그인</div>
                    </div>
                    <div id="login-form">
                        <form action="/login" method="post">
                            <div>
                                <img src="/thrifty/resources/images/login/help.png" alt="로그인 이미지" width="40" height="40">
                                <input type="text" name="userId">
                            </div>
                            <div>
                                <img src="/thrifty/resources/images/login/unlock.png" alt="비밀번호 이미지" width="40" height="40">
                                <input type="password" name="userPwd">
                            </div>
                            <button>로그인</button>
                        </form>
                    </div>
                    <div id="login-others-btns">
                        <div onclick="enroll();">회원가입</div>
                        <div onclick="findId();">아이디/비밀번호 찾기</div>
                    </div>
                    <div id="sns-login">
                        <fieldset>
                            <legend>또는</legend>    
                        </fieldset>
                        <div id="kakao-login-btn">
                            <img src="/thrifty/resources/images/login/kakao/kakao_login_large_wide.png" alt="카카오 로그인 이미지" width="310" height="60">
                        </div>
                        <div onclick="googleLogin();">
                            <div class="g_id_signin" data-type="standard" data-shape="rectangular" data-theme="outline" data-text="signin_with" data-size="large" data-logo_alignment="left" data-width="250"><div class="S9gUrf-YoZ4jf" style="position: relative;"><div><div tabindex="0" role="button" aria-labelledby="button-label" class="nsm7Bb-HzV7m-LgbsSe  hJDwNd-SxQuSe i5vt6e-Ia7Qfc uaxL4e-RbRzK" style="width:250px; max-width:400px; min-width:min-content;"><div class="nsm7Bb-HzV7m-LgbsSe-MJoBVe"></div><div class="nsm7Bb-HzV7m-LgbsSe-bN97Pc-sM5MNb "><div class="nsm7Bb-HzV7m-LgbsSe-Bz112c"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" class="LgbsSe-Bz112c"><g><path fill="#EA4335" d="M24 9.5c3.54 0 6.71 1.22 9.21 3.6l6.85-6.85C35.9 2.38 30.47 0 24 0 14.62 0 6.51 5.38 2.56 13.22l7.98 6.19C12.43 13.72 17.74 9.5 24 9.5z"></path><path fill="#4285F4" d="M46.98 24.55c0-1.57-.15-3.09-.38-4.55H24v9.02h12.94c-.58 2.96-2.26 5.48-4.78 7.18l7.73 6c4.51-4.18 7.09-10.36 7.09-17.65z"></path><path fill="#FBBC05" d="M10.53 28.59c-.48-1.45-.76-2.99-.76-4.59s.27-3.14.76-4.59l-7.98-6.19C.92 16.46 0 20.12 0 24c0 3.88.92 7.54 2.56 10.78l7.97-6.19z"></path><path fill="#34A853" d="M24 48c6.48 0 11.93-2.13 15.89-5.81l-7.73-6c-2.15 1.45-4.92 2.3-8.16 2.3-6.26 0-11.57-4.22-13.47-9.91l-7.98 6.19C6.51 42.62 14.62 48 24 48z"></path><path fill="none" d="M0 0h48v48H0z"></path></g></svg></div><span class="nsm7Bb-HzV7m-LgbsSe-BPrWId">Google 계정으로 로그인</span><span class="L6cTce" id="button-label">Google 계정으로 로그인</span></div></div></div><iframe src="https://accounts.google.com/gsi/button?type=standard&amp;shape=rectangular&amp;theme=outline&amp;text=signin_with&amp;size=large&amp;logo_alignment=left&amp;width=250&amp;client_id=283046868248-2c2kr4u1rsvbos5t3g8dpev5mh3sn4hg.apps.googleusercontent.com&amp;iframe_id=gsi_797779_966864&amp;as=bQQa7UfrSu%2BfqaDxiIqZJg" id="gsi_797779_966864" title="Google 계정으로 로그인 버튼" style="display: block; position: relative; top: 0px; left: 0px; height: 0px; width: 0px; border: 0px;"></iframe></div></div>
                        </div>
                    </div>
                </div>
            </div>`,
            showConfirmButton: false});
        }

        function findId(){
            Swal.fire({
                html : `<div id="find-content">
                <div id="find-title">
                    <div><img src="/thrifty/resources/images/main/icon/logo1.1.png" alt="로고이미지" width="60" height="60"></div>
                    <div>아이디 찾기</div>
                </div>
                <div id="find-form">
                    <form action="/login" method="post">
                        <div>
                            <div>
                                <div>이름</div>
                                <input type="text" name="userName" placeholder="이름">
                            </div>
                            <div>
                                <div>이메일</div>
                                <input type="email" name="email" placeholder="이메일">
                            </div>
                            <div id="btns">
                                <button id="findId-btn">확인</button>
                                <button type="button" id="findPwd-btn" onclick="findPwd();">비밀번호 찾기</button>
                            </div>
                        </div>
                        
                    </form>
                </div>
            </div>
            <button id="loginMenu-btn" onclick="login();">로그인 창으로</button>
        </div> `,
                showConfirmButton: false
            });
        }

        function findPwd(){
            Swal.fire({
                html : `<div id="find-content">
                <div id="find-title">
                    <div><img src="/thrifty/resources/images/main/icon/logo1.1.png" alt="로고이미지" width="60" height="60"></div>
                    <div>비밀번호 찾기</div>
                </div>
                <div id="find-form">
                    <form action="/login" method="post">
                        <div>
                            <div>
                                <div>아이디</div>
                                <input type="text" name="userId" placeholder="아이디">
                            </div>
                            <div>
                                <div>이메일</div>
                                <input type="email" name="email" placeholder="이메일">
                            </div>
                            <div id="btns">
                                <button id="findPwd-btn">확인</button>
                            </div>
                        </div>
                        
                    </form>
                </div>
            </div>
            <button id="loginMenu-btn" onclick="login();">로그인 창으로</button>
        </div>  `,
                showConfirmButton: false
            });
        }

        function enroll(){
            Swal.fire({
                html : `<div id="content">
                <div id="title">
                    <img src="/thrifty/resources/images/main/icon/logo1.1.png" alt="로고이미지" width="60" height="60">
                    <div>알뜰살뜰 회원가입</div>
                </div>
                <div id="enroll-form">
                    <form action="" class="scrollbar" method="post">
                        <table >
                            <tr>
                                <th class="title" colspan="2">아이디</th>
                            </tr>
                            <tr>
                                <td class="input">
                                    <input type="text" id="userId" name="userId">
                                </td>
                                <td>
                                    <button type="button">중복확인</button>
                                </td>
                            </tr>
                            <tr>
                                <td class="validate" colspan="2"></td>
                            </tr>
                            <tr>
                                <th class="title" colspan="2">비밀번호</th>
                            </tr>
                            <tr>
                                <td class="input">
                                    <input type="password" id="userPwd" name="userPwd">
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="validate" colspan="2"></td>
                            </tr>
                            <tr>
                                <th class="title" colspan="2">비밀번호 확인</th>
                            </tr>
                            <tr>
                                <td class="input">
                                    <input type="password" >
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="validate" colspan="2"></td>
                            </tr>
                            <tr>
                                <th class="title" colspan="2">이메일</th>
                            </tr>
                            <tr>
                                <td class="input">
                                    <input type="email" id="email" name="email">
                                </td>
                                <td>
                                    <button type="button">중복확인</button>
                                </td>
                            </tr>
                            <tr>
                                <td class="validate" colspan="2"></td>
                            </tr>
                            <tr>
                                <th class="title" colspan="2">닉네임</th>
                            </tr>
                            <tr>
                                <td class="input">
                                    <input type="text" id="nickName" name="nickName">
                                </td>
                                <td>
                                    <button type="button">중복확인</button>
                                </td>
                            </tr>
                            <tr>
                                <td class="validate" colspan="2"></td>
                            </tr>
                            <tr>
                                <th class="title" colspan="2">이름</th>
                            </tr>
                            <tr>
                                <td class="input">
                                    <input type="text" name="userName" id="userName">
                                </td>
                                <td></td>
                            </tr>      
                            <tr>
                                <td class="validate" colspan="2"></td>
                            </tr>
                            <tr>
                                <th class="title" colspan="2">연락처</th>
                            </tr>
                            <tr>
                                <td class="input">
                                    <input type="text" id="phone" name="phone">
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="validate" colspan="2"></td>
                            </tr>
                            <tr>
                                <th class="title" colspan="2">성별</th>
                            </tr>
                            <tr>
                                <td class="input">
                                    <input type="radio" name="gender" id="gender-m" value="M">
                                    <label for="gender-m">남</label>
                                    <input type="radio" name="gender" id="gender-f" value="F">
                                    <label for="gender-f">여</label>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="validate" colspan="2"></td>
                            </tr>
                            
                        </table>
                        <div class="title">약관동의</div>
                        <div id="enroll-term">
                            없으면 쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을 풍부하게 하는 온갖 과실이 어디 있으랴? 이상! 우리의 청춘이 가장 많이 품고 있는 이상! 이것이야말로 무한한 가치를 가진 것이다 사람은 크고 작고 간에 이상이 있음으로써 용감하고 굳세게 살 수 있는 것이다 석가는 무엇을 위하여 설산에서 고행을 하였으며 예수는 무엇을 위하여 광야에서 방황하였으며 공자는 무엇을 위하여 천하를 철환하였는가? 밥을 위하여서 옷을 위하여서 미인을 구하기 위하여서 그리하였는가? 아니다 그들은 커다란 이상 곧 만천하의 대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는

대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다 그러므로 그들은 길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은 현저하게 일월과 같은 예가 되려니와 그와 같지 못하다 할지라도 창공에 반짝이는 뭇 별과 같이 산야에 피어나는 군영과 같이 이상은 실로 인간의 부패를 방지하는 소금이라 할지니 인생에 가치를 주는 원질이 되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의 보배를 능히 품으며 그들의 이상은

되려니와 그와 같지 못하다 할지라도 창공에 반짝이는 뭇 별과 같이 산야에 피어나는 군영과 같이 이상은 실로 인간의 부패를 방지하는 소금이라 할지니 인생에 가치를 주는 원질이 되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의 보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한 교향악이다 뼈 끝에 스며들어 가는 열락의 소리다이것은 피어나기 전인 유소년에게서 구하지 못할 바이며 시들어 가는 노년에게서 구하지 못할 바이며 오직 우리 청춘에서만 구할 수 있는 것이다 청춘은 인생의 황금시대다 우리는 이 황금시대의 가치를 충분히 발휘하기 위하여 이
                        </div>
                        <div class="justify-end">
                            <input type="checkbox" id="term-checkbox">

                            <label for="term-checkbox">약관에 동의합니다</label>
                        </div>
                        <div class="justify-center" >
                            <button type="button"  id ="cancel-btn" onclick="login();">취소</button>
                            <button type="button" onclick="insertMember();" id="enroll-btn">회원가입</button>
                        </div>
                    </form>
                </div>
           </div>`,
                showConfirmButton: false
            });

        }

        function insertMember(){
            $.ajax({
                url : "/thrifty/member/enroll",
                method : "POST",
                data : {userId : $("input[name='userId']")[0].value,
                        userPwd : $("input[name='userPwd']")[0].value,
                        email : $("input[name='email']")[0].value,
                        nickName : $("input[name='nickName']")[0].value,
                        userName : $("input[name='userName']")[0].value,
                        phone : $("input[name='phone']")[0].value,
                        gender : $("input[name='gender']:checked")[0].value
                        },
                success : function(result){
                    alert("성공");
                }
            })
        }

        function init() {
            gapi.load('auth2', function() {
                gapi.auth2.init();
                options = new gapi.auth2.SigninOptionsBuilder();
                options.setPrompt('select_account');
                // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
                options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
                // 인스턴스의 함수 호출 - element에 로그인 기능 추가
                // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
                gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
            })
        }

        function onSignIn(googleUser) {
            var access_token = googleUser.getAuthResponse().access_token
            $.ajax({
                // people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
                url: 'https://people.googleapis.com/v1/people/me'
                // key에 자신의 API 키를 넣습니다.
                , data: {personFields:'birthdays', key:'', 'access_token': access_token}
                , method:'GET'
            })
            .done(function(e){
                //프로필을 가져온다.
                var profile = googleUser.getBasicProfile();
                console.log(profile)
            })
            .fail(function(e){
                console.log(e);
            })
        }
        function onSignInFailure(t){		
            console.log(t);
        }

        function googleLogin(){
            $('#GgCustomLogin').click();
        }
</script>

//구글 api 사용을 위한 스크립트
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
    
</body>
</html>
