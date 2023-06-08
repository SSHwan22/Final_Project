const urlParams = new URL(location.href).searchParams;

const urlPath = new URL(location.href).pathname;
const lasturlPath = urlPath.substring(urlPath.lastIndexOf('/')+1);

let currentTab = "";

//검색 후 페이징 처리
const urlSearchVal = urlParams.get('search');
if(urlSearchVal != ''){
        $.each($('.pagination a'), function(index, item){
                let paginate_location = $(item).attr('href');
                $(item).attr('href', paginate_location+"&search="+urlSearchVal);
            });
}

//검색 요청
$('.table_search_btn').on('click', function(){
    const searchVal = $('input[name=table_search]').val();

    if(searchVal != ''){
        urlParams.set('search', searchVal);
        location.href =  lasturlPath+"?"+urlParams.toString();
    }
});

//member 상태변경 ajax
$(".member-status-dropdown").on('click', function(){
    
    const statusVal =  $(this).val();
    const userNo = $(this).parents('tr').children('input[type=hidden]').val();
    const userId = $(this).parents('tr').children('.member-userId').html();

    $.ajax({
        url: "member/status/update",
        data: {
                statusVal,
                userNo
            },
        dataType: "text", 
        success: function(result){
            console.log(result);
            alert(userId+result);
            location.reload();
            
        }
        });
    });

if(lasturlPath == 'member'){
    const urlParamTab = urlParams.get('tab');

    switch(urlParamTab){
        case 'all':
            currentTab = 'member-all';
        break;
        case 'active':
            currentTab = 'member-active';
        break;
        case 'suspend':
            currentTab = 'member-suspend';
        break;
        case 'banned':
            currentTab = 'member-banned';
        break;
    }
}else{
    let tabArr = $('.nav-tabs').children('.nav-item').children('.nav-link');

    
    $.each($(tabArr), function(index, item){
        let tabId = $(item).attr('id');
        if(tabId == urlParams.get('catUNo')){
            currentTab = tabId;
        };
    });

}

$('.nav-tabs').children('.nav-item').children('#'+currentTab).addClass('active');


