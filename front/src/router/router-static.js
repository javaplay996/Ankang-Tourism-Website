import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import youke from '@/views/modules/youke/list'
    import techanquxiaodingdan from '@/views/modules/techanquxiaodingdan/list'
    import diqu from '@/views/modules/diqu/list'
    import jingdianxinxi from '@/views/modules/jingdianxinxi/list'
    import discussjiudianxinxi from '@/views/modules/discussjiudianxinxi/list'
    import jiudianxinxi from '@/views/modules/jiudianxinxi/list'
    import jiudiandingdan from '@/views/modules/jiudiandingdan/list'
    import shengqu from '@/views/modules/shengqu/list'
    import storeup from '@/views/modules/storeup/list'
    import techan from '@/views/modules/techan/list'
    import jingdiangoupiaodingdan from '@/views/modules/jingdiangoupiaodingdan/list'
    import techandingdan from '@/views/modules/techandingdan/list'
    import discussjingdianxinxi from '@/views/modules/discussjingdianxinxi/list'
    import lvyouxianlu from '@/views/modules/lvyouxianlu/list'
    import messages from '@/views/modules/messages/list'
    import discusstechan from '@/views/modules/discusstechan/list'
    import jiudianquxiaodingdan from '@/views/modules/jiudianquxiaodingdan/list'
    import shiqu from '@/views/modules/shiqu/list'
    import goupiaoquxiaodingdan from '@/views/modules/goupiaoquxiaodingdan/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '旅游新闻公告',
        component: news
      }
      ,{
	path: '/youke',
        name: '游客',
        component: youke
      }
      ,{
	path: '/techanquxiaodingdan',
        name: '特产取消订单',
        component: techanquxiaodingdan
      }
      ,{
	path: '/diqu',
        name: '地区',
        component: diqu
      }
      ,{
	path: '/jingdianxinxi',
        name: '景点信息',
        component: jingdianxinxi
      }
      ,{
	path: '/discussjiudianxinxi',
        name: '酒店信息评论',
        component: discussjiudianxinxi
      }
      ,{
	path: '/jiudianxinxi',
        name: '酒店信息',
        component: jiudianxinxi
      }
      ,{
	path: '/jiudiandingdan',
        name: '酒店订单',
        component: jiudiandingdan
      }
      ,{
	path: '/shengqu',
        name: '省区',
        component: shengqu
      }
      ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
      ,{
	path: '/techan',
        name: '特产',
        component: techan
      }
      ,{
	path: '/jingdiangoupiaodingdan',
        name: '景点购票订单',
        component: jingdiangoupiaodingdan
      }
      ,{
	path: '/techandingdan',
        name: '特产订单',
        component: techandingdan
      }
      ,{
	path: '/discussjingdianxinxi',
        name: '景点信息评论',
        component: discussjingdianxinxi
      }
      ,{
	path: '/lvyouxianlu',
        name: '旅游线路',
        component: lvyouxianlu
      }
      ,{
	path: '/messages',
        name: '留言板管理',
        component: messages
      }
      ,{
	path: '/discusstechan',
        name: '特产评论',
        component: discusstechan
      }
      ,{
	path: '/jiudianquxiaodingdan',
        name: '酒店取消订单',
        component: jiudianquxiaodingdan
      }
      ,{
	path: '/shiqu',
        name: '市区',
        component: shiqu
      }
      ,{
	path: '/goupiaoquxiaodingdan',
        name: '购票取消订单',
        component: goupiaoquxiaodingdan
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
