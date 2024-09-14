
var projectName = '安康旅游网站';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '景点信息',
	url: './pages/jingdianxinxi/list.html'
}, 
{
	name: '旅游线路',
	url: './pages/lvyouxianlu/list.html'
}, 
{
	name: '酒店信息',
	url: './pages/jiudianxinxi/list.html'
}, 
{
	name: '特产',
	url: './pages/techan/list.html'
}, 

{
	name: '旅游新闻公告',
	url: './pages/news/list.html'
},
{
	name: '留言反馈',
	url: './pages/messages/list.html'
}
]

var adminurl =  "http://localhost:8080/springboot073x3/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"游客","menuJump":"列表","tableName":"youke"}],"menu":"游客管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"景点信息","menuJump":"列表","tableName":"jingdianxinxi"}],"menu":"景点信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"省区","menuJump":"列表","tableName":"shengqu"}],"menu":"省区管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"市区","menuJump":"列表","tableName":"shiqu"}],"menu":"市区管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"地区","menuJump":"列表","tableName":"diqu"}],"menu":"地区管理"},{"child":[{"buttons":["查看"],"menu":"旅游线路","menuJump":"列表","tableName":"lvyouxianlu"}],"menu":"旅游线路管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"酒店信息","menuJump":"列表","tableName":"jiudianxinxi"}],"menu":"酒店信息管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"特产","menuJump":"列表","tableName":"techan"}],"menu":"特产管理"},{"child":[{"buttons":["查看","审核","删除","修改"],"menu":"景点购票订单","menuJump":"列表","tableName":"jingdiangoupiaodingdan"}],"menu":"景点购票订单管理"},{"child":[{"buttons":["查看","审核","删除","修改"],"menu":"购票取消订单","menuJump":"列表","tableName":"goupiaoquxiaodingdan"}],"menu":"购票取消订单管理"},{"child":[{"buttons":["查看","删除","修改","审核"],"menu":"酒店订单","menuJump":"列表","tableName":"jiudiandingdan"}],"menu":"酒店订单管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"酒店取消订单","menuJump":"列表","tableName":"jiudianquxiaodingdan"}],"menu":"酒店取消订单管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"特产订单","menuJump":"列表","tableName":"techandingdan"}],"menu":"特产订单管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"特产取消订单","menuJump":"列表","tableName":"techanquxiaodingdan"}],"menu":"特产取消订单管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"buttons":["查看"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"旅游新闻公告","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","购票","查看评论"],"menu":"景点信息列表","menuJump":"列表","tableName":"jingdianxinxi"}],"menu":"景点信息模块"},{"child":[{"buttons":["查看"],"menu":"旅游线路列表","menuJump":"列表","tableName":"lvyouxianlu"}],"menu":"旅游线路模块"},{"child":[{"buttons":["查看","查看评论","预约下单"],"menu":"酒店信息列表","menuJump":"列表","tableName":"jiudianxinxi"}],"menu":"酒店信息模块"},{"child":[{"buttons":["查看","查看评论","购买"],"menu":"特产列表","menuJump":"列表","tableName":"techan"}],"menu":"特产模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"旅游线路","menuJump":"列表","tableName":"lvyouxianlu"}],"menu":"旅游线路管理"},{"child":[{"buttons":["查看","支付","取消订单","删除"],"menu":"景点购票订单","menuJump":"列表","tableName":"jingdiangoupiaodingdan"}],"menu":"景点购票订单管理"},{"child":[{"buttons":["查看","删除"],"menu":"购票取消订单","menuJump":"列表","tableName":"goupiaoquxiaodingdan"}],"menu":"购票取消订单管理"},{"child":[{"buttons":["查看","删除","支付","取消订单"],"menu":"酒店订单","menuJump":"列表","tableName":"jiudiandingdan"}],"menu":"酒店订单管理"},{"child":[{"buttons":["查看","删除"],"menu":"酒店取消订单","menuJump":"列表","tableName":"jiudianquxiaodingdan"}],"menu":"酒店取消订单管理"},{"child":[{"buttons":["查看","支付","删除","取消订单"],"menu":"特产订单","menuJump":"列表","tableName":"techandingdan"}],"menu":"特产订单管理"},{"child":[{"buttons":["查看","删除"],"menu":"特产取消订单","menuJump":"列表","tableName":"techanquxiaodingdan"}],"menu":"特产取消订单管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看","购票","查看评论"],"menu":"景点信息列表","menuJump":"列表","tableName":"jingdianxinxi"}],"menu":"景点信息模块"},{"child":[{"buttons":["查看"],"menu":"旅游线路列表","menuJump":"列表","tableName":"lvyouxianlu"}],"menu":"旅游线路模块"},{"child":[{"buttons":["查看","查看评论","预约下单"],"menu":"酒店信息列表","menuJump":"列表","tableName":"jiudianxinxi"}],"menu":"酒店信息模块"},{"child":[{"buttons":["查看","查看评论","购买"],"menu":"特产列表","menuJump":"列表","tableName":"techan"}],"menu":"特产模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"游客","tableName":"youke"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
