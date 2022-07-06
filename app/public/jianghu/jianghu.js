
/*
    ########################################################
    ### 页面js ###
    ########################################################
*/

// Ajax默认配置
$.ajaxSetup({
    data: {csrfmiddlewaretoken: '{{ csrf_token }}' },
});

// 视频iframe域名白名单
var iframe_whitelist = '{{ iframe_whitelist }}'.split(',')

// 展开文档页左边菜单
function openDocMenu(){
    $(".vt-backdrop").addClass("open");
    $(".jianghu-doc-sidebar").addClass('open');
};
// 收起文档页左边菜单
function closeDocMenu(){
    $(".jianghu-doc-sidebar").removeClass('open');
};
// 展开文档页大纲
function openDocAside(){
    $(".vt-backdrop").addClass("open");
    $(".jianghu-doc-contentDoc-aside").addClass('open');
};
// 收起文档页大纲
function closeDocAside(){
    $(".jianghu-doc-contentDoc-aside").removeClass('open');
};
// 关闭遮罩
function closeBackdrop(){
    $(".vt-backdrop").removeClass("open");
    closeDocMenu()
    closeDocAside()
};
// 展开mobile navBarMenus
function openNavBarMenus(){
    closeUserCenter()
    $("html").css("overflow","hidden"); 
    $(".jianghu-toggleNavBarMenus-closeIcon").css("display","block"); 
    $(".jianghu-toggleNavBarMenus-menuIcon").css("display","none"); 
    $("#jianghu-header-mobile-navBarMenus").addClass('open');
    $("#jianghu-mobile-toggle-navBarMenus").addClass('is-active');
};
// 收起mobile navBarMenus
function closeNavBarMenus(){
    $("html").css("overflow","auto"); 
    $(".jianghu-toggleNavBarMenus-closeIcon").css("display","none"); 
    $(".jianghu-toggleNavBarMenus-menuIcon").css("display","block"); 
    $("#jianghu-header-mobile-navBarMenus").removeClass('open');
    $("#jianghu-mobile-toggle-navBarMenus").removeClass('is-active');
};
// 展开mobile userCenter
function openUserCenter(){
    closeNavBarMenus()
    $("html").css("overflow","hidden"); 
    $(".jianghu-toggleUserCenter-closeIcon").css("display","block"); 
    $(".jianghu-toggleUserCenter-userIcon").css("display","none"); 
    $("#jianghu-header-mobile-userCenter").addClass('open');
    $("#jianghu-mobile-toggle-userCenter").addClass('is-active');
};
// 收起mobile userCenter
function closeUserCenter(){
    $("html").css("overflow","auto"); 
    $(".jianghu-toggleUserCenter-closeIcon").css("display","none"); 
    $(".jianghu-toggleUserCenter-userIcon").css("display","block"); 
    $("#jianghu-header-mobile-userCenter").removeClass('open');
    $("#jianghu-mobile-toggle-userCenter").removeClass('is-active');
};
// 生成文档大纲
function generateSidebar(){
     // 遍历文章中的所有标题
     var allHeaders = []
     var content = document.querySelector('.jianghu-markdown')
     for(var i = 1;i < 7; i++){
        allHeaders.push.apply(allHeaders,content.querySelectorAll('h' + i))
     }
    //  标题分组
     let groupAllHeaders = []
     allHeaders.forEach(h => {
         if(h.localName === 'h1' || h.localName === 'h2'){
            groupAllHeaders.push(h);
         }else if(h.localName === 'h3'){
            let parentH = groupAllHeaders[groupAllHeaders.length - 1];
            if(parentH){
                parentH.childH = parentH.childH ? parentH.childH.concat(h) : [h]
            }
         }
     })
     // 生成html
     var sidebar = ''
     groupAllHeaders.forEach(h => {
        sidebar += ' <li class="nav-item">'
        sidebar += ' <a class="nav-link jianghu-doc-contentDoc-aside-outline-link" href="#' + h.id + '">' + h.innerText + '</a>'
        if(h.childH){
            sidebar += '<ul class="nav flex-column ps-3">'
            h.childH.forEach(childH => {
                sidebar += '<li class="nav-item">'
                sidebar += '<a class="nav-link jianghu-doc-contentDoc-aside-outline-link" href="#' + childH.id + '">' + childH.innerText + '</a>'
                sidebar += '</li>'
            })
            sidebar += '</ul>'
        }
        sidebar += ' </li>'
     })
     $('#jianghu-doc-contentDoc-aside-menu').empty().html(sidebar)
}
// 显示success alert
function showSuccessAlert(msg){
    var temp = '<div class="alert alert-success fade alert-fixed show" role="alert">'      
        temp += '<i class="fas fa-check-circle me-3"></i>'
        temp += msg
        temp += '</div>'
    $('body').append(temp);
    setTimeout(()=>{
        $('.alert-success').remove()
    }, 2000)
}
// 显示fail alert
function showFailAlert(msg){
    var temp = '<div class="alert alert-danger fade alert-fixed show" role="alert">'      
        temp += '<i class="fas fa-times-circle me-3"></i>'
        temp += msg
        temp += '</div>'
    $('body').append(temp);
    setTimeout(()=>{
        $('.alert-danger').remove()
    }, 2000)
}
// 显示loading
function showLoading(){
    var temp = '<div class="spinner-border" role="status"><span class="visually-hidden">Loading...</span></div>'
    $('body').append(temp);
    $(".vt-backdrop").addClass("open light");
    $(".vt-backdrop").attr("closeable", "false");
}
// 删除loading
function hideLoading(){
    $('.spinner-border').remove()
    $(".vt-backdrop").removeClass("open light");
    $(".vt-backdrop").removeAttr("closeable");
}
$(function(){
    // 生成当前网页链接
    $("input[name=current_url]").val(document.URL)
    // 切换侧边栏
    $("#jianghu-mobile-toggle-docMenu").click(openDocMenu);
    // 切换大纲
    $("#jianghu-mobile-toggle-docAside").click(openDocAside);
    // 切换mobile navBarMenus
    $("#jianghu-mobile-toggle-navBarMenus").click(function(){
        if($(this).hasClass('is-active')){
            closeNavBarMenus()
        }else{
            openNavBarMenus()
        }
    });
    // 切换mobile userCenter
    $("#jianghu-mobile-toggle-userCenter").click(function(){
        if($(this).hasClass('is-active')){
            closeUserCenter()
        }else{
            openUserCenter()
        }
    });
    // 关闭遮罩
    $(".vt-backdrop").click(() => {
        if($(".vt-backdrop").attr("closeable") !== "false"){
            closeBackdrop()
        }
    });
});











