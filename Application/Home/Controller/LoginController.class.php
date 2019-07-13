<?php
namespace Home\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
        $this->display();
    }
    public function login(){
		//I登录检测
		$userName=I('username');
		$userPwd=I('password');
		$userModel=M('user');
		$condition['username']= $userName;
		$condition['password']=md5($userPwd);
		

		echo $userName;

		$user=$userModel->where($condition)->find();
		
		if($user){
			// session("cuname",$user['username']);
			// session("cuid",$user['id']);
			// session("studentid",$user['studentid']);
			// session("email",$user['email']);
			// session("phone",$user['phone']);
			// $this->success("登陆成功，欢迎您的到来",U("Index/index"));
			$this->ajaxReturn($yes); 

		} else{
			$this->error("登陆失败！请仔细检查是否输入有误");
		}
	}   
}