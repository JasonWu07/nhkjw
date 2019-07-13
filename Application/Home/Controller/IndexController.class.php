<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $this->display();
    }
    public function login(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');

        //I登录检测
        $userName=I('userName');
		$userPwd=I('userPwd');
		$userModel=M('User');
		$condition['userName']= $userName;
        $condition['userPwd']=md5($userPwd);
    	
        $user=$userModel->where($condition)->find();

		if($user){ 
            $_SESSION['userName'] = $userName;  //这里把用户信息存入session
            $data['content'] =$_SESSION;
            $data['status']  = 1;//状态判断
            $data['userphone']  = $user['userphone'];
            $data['userphoto']  = $user['userphoto'];
            $data['id']  = $user['id'];
            $this->ajaxReturn($data);               
            
		} else{
            $data['status']  = 0;//状态判断
            $this->ajaxReturn($data);               
	    }   
    }

    public function Producmodify(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $id=I('id');
        $userModel=M('product');
        $condition['productID']= $id;	//设定为传入id
        $user=$userModel->where($condition)->select();

        $userModelS=M('serverproductdateattribute');
        $condition['productID']= 1;	//设定为传入id
        $users=$userModelS->where($condition)->select();
        $data['product']=$user;
        $data['area']=$users;
        $this->ajaxReturn($data);                     
    }
    public function homeServerProduct(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        
        $userModel=M('serverproduct');
        $user=$userModel->where()->select();
        $this->ajaxReturn($user);                     
    }
    public function add(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');

        //接受传入的值,
        $productID=I('productID');
        $productName=I('productName');
        $productIntroduction=I('productIntroduction');

        $Introduction=I('Introduction');
        $classification=I('classification');
        $productAttributesID=I('productAttributesID');
        $productmodel=I('productmodel');
        $PRODUCTmodeltips=I('PRODUCTmodeltips');
        $modelprice=I('modelprice');
        $productMirror=I('productMirror');
        $mirrortips=I('mirrortips');
        $mirrorprice=I('mirrorprice');
        $Clouddisk=I('Clouddisk');
        $cloudprice=I('cloudprice');


        $Provider=I('Provider');
        $ProductLabel=I('ProductLabel');
        $productMirror=I('productMirror');
        $ProductSpecifications=I('ProductSpecifications');
        $SpecificationsPrice=I('SpecificationsPrice');
        $productDetails=I('productDetails');
        
        
        //插入数据库
        // 插入商品总表
        if($productID!="" &&  $productName!=""){
            $data['productID'] = $productID;
            $data['productName'] = $productName;
            $data['productIntroduction'] = $productIntroduction;
            $data['Introduction'] = $Introduction;
            $data['classification'] = $classification;

            $User = M('serverproduct');
            $User->data($data)->add();
        }

        if($productID!="" &&  $productAttributesID!="" && $productmodel!=""){
            $data['productID'] = $productID;
            $data['productAttributesID'] = $productAttributesID;
            $data['productmodel'] = $productmodel;
            $data['PRODUCTmodeltips'] = $PRODUCTmodeltips;
            $data['modelprice'] = $modelprice;
            $data['productMirror'] = $productMirror;
            $data['mirrortips'] = $mirrortips;
            $data['Clouddisk'] = $Clouddisk;
            $data['cloudprice'] = $cloudprice;
            

            $Users = M('serverproductattributes');
            $Users->data($data)->add();
        }

        if($productID!="" &&  $productAttributesID!="" && $Provider!=""){
            $data['productID'] = $productID;
            $data['productAttributesID'] = $productAttributesID;
            $data['Provider'] = $Provider;
            $data['ProductLabel'] = $ProductLabel;
            $data['ProductSpecifications'] = $ProductSpecifications;
            $data['SpecificationsPrice'] = $SpecificationsPrice;
            $data['productDetails'] = $productDetails;
            

            $Usersd = M('commoditydata');
            $Usersd->data($data)->add();
        }
        
       
        $userModel=M('product');
        $user=$userModel->where()->select();
        $this->ajaxReturn($user);           
    }

    public function  productUser(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');  

        $productSum=I('Productpwd');
        $userid=I('userid');

        $userName=I('userName');
        $date=I('date');
        $productName=I('productName');
        $Configuration=I('Configuration');
        $Quantity=I('Quantity');
        $cycle=I('cycle');
        $price=I('price');
        $time=I('time');

        $userModel=M('User');
        $condition['id']= $userid;
        $condition['userName']= $userName;
        $condition['userProductPwd']= $productSum;
        
        $user=$userModel->where($condition)->find();

        if($user){ 
            $data['status']  = 1;//状态判断   
            
            $data['userid'] = $userid;
            $data['userName'] = $userName;
            $data['data'] = $date;
            $data['productName'] = $productName;
            $data['Configuration'] = $Configuration;
            $data['Quantity'] = $Quantity;
            $data['cycle'] = $cycle;
            $data['price'] = $price;
            $data['time'] = $time;
            

            
            $Users = M('userorder');
            $Users->data($data)->add();
            $this->ajaxReturn($data); 

		} else{
            $data['status']  = 0;//状态判断
            $this->ajaxReturn($data);               
	    }   

    }
    public function productUserInquire(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $userid=I('userid');
        $userName=I('userName');
        $userModel = M('userorder');
        $condition['userid']= $userid;
        $condition['userName']= $userName;
        $user=$userModel->where($condition)->select();
        $this->ajaxReturn($user);               
    }
    public function DelproductUserInquire(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $delid=I('delid');
        $userModel = M('userorder');
       $userModel->delete($delid);
        $this->ajaxReturn($user);               
    }
     public function priducttowS(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        
        $goods=M('producttwo');
        $data['productID'] = I('id');
        $product = $goods->where($data)->select();

        $userModelS=M('serverproductdateattribute');
        $condition['productID']= 1;	//设定为传入id
        $users=$userModelS->where($condition)->select();
        $data['product']=$product;
        $data['area']=$users;
        $this->ajaxReturn($data);   
    }
    public function AddShopingcart(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        
        $userid=I('userid');
        $username=I('username');
        $id=I('id');
        $name=I('name');
        $Configuration=I('Configuration');
        $paymentMethod=I('paymentMethod');
        $cycle=I('cycle');
        $Quantity=I('Quantity');
        $Tariff=I('Tariff');
        $unitprice=I('unitprice');

        $data['userid'] = $userid;
        $data['userName'] = $username;
        $data['productid'] = $id;
        $data['productName'] = $name;
        $data['Configuration'] = $Configuration;
        $data['paymentMethod'] = $paymentMethod;
        $data['cycle'] = $cycle;
        $data['Quantity'] = $Quantity;
        $data['price'] = $Tariff;
        $data['unitprice'] = $unitprice;
        $Usersd = M('shopingcart');
        $Usersd->data($data)->add();
    }
    public function getProductCat(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');

        $userid=I('userid');
        $userName=I('userName');
        $userModel = M('shopingcart');
        $condition['userid']= $userid;
        $condition['userName']= $userName;
        $user=$userModel->where($condition)->select();
        $this->ajaxReturn($user);    
    }
    public function getProductCatS(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');

        $productSum=I('productpwd');
        $userid=I('userid');
        $userName=I('username');
        $usertime=I('usertime');
        $userModel=M('User');

        $condition['id']= $userid;
        $condition['userName']= $userName;
        $condition['userProductPwd']= $productSum;
        
        $user=$userModel->where($condition)->find();
        if($user){  
            $data['status']  = 1;//状态判断
            $sum=I('sum');
            foreach($sum as $v){
                $list['userid']= $userid;           
                $list['userName']= $userName;                     
                $list['productName']= $v['productname'];           
                $list['cycle']= $v['cycle'];           
                $list['Quantity']= $v['quantity'];           
                $list['Configuration']= $v['configuration'];           
                $list['price']= $v['price'];           
                $list['time']= $usertime;   
                $Usersd = M('userorder');
                $userS=$Usersd->data($list)->add(); 

            }             
            $this->ajaxReturn($data);     

		} else{
            $data['status']  = 0;//状态判断
            $this->ajaxReturn($data);               
	    }     

    }
    public function DelProductCat(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');

         $delid=I('delid');
        $userModel = M('shopingcart');
       $userModel->delete($delid);
        $this->ajaxReturn($userModel); 
    }

    public function modify(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');

        $id=I('id');
        $userModel=M('user');

        $condition['id']= $id;
        $user=$userModel->where($condition)->find();
        $this->ajaxReturn($user); 

    }
    public function modifyS(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');

        $user = M("user");
        //进入页面获取本来的图片删除
        $id=I('id');
        $condition['id']= $id;
        $userimg=$user->where($condition)->find();
        $frist = substr($userimg['userphoto'],1);//删除图片地址第一字符
        $pcc = $_SERVER['DOCUMENT_ROOT'].'/nhkjw'.$frist;//拼接字符串
        unlink($pcc);

        //接受前端数据
        $data['userPhone']=I('userPhone');   
        $image = $_POST["img_data"];
        $imageName = "25220_".date("His",time())."_".rand(1111,9999).'.png';
        if (strstr($image,",")){
        $image = explode(',',$image);
        $image = $image[1];
        }
        $path = "./Public/Uploads/".date("Ymd",time());
        if (!is_dir($path)){ //判断目录是否存在 不存在就创建
        mkdir($path,0777,true);
        }
        $imageSrc= $path."/". $imageName; //图片名字
        $r = file_put_contents($imageSrc, base64_decode($image));
        $data['userPhoto'] = $imageSrc;
    
        $at=$user->where($condition)->save($data);
   
        $users=$user->where($condition)->find();
        $this->ajaxReturn($users); //返回存入图片名字
    }
    public function Usermodify(){
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');

        $sum = I('sum');
       
        $data['userName']= $sum[UserPagename];
        $data['userMail']= $sum[userphoneEmail];
        $data['userPhone']= $sum[userphone];
        
        if($sum[userpwd] !=""){
            $data['userPwd']= md5($sum[userpwd]);
            
        }
        if($sum[PayPwd] !=""){
            $data['userProductPwd']= $sum[PayPwd];
        }
        $user = M("user");
        $condition['id']= $sum[id];
        $user->where($condition)->save($data);

        $userS=$user->where($condition)->find();

       
        
        $this->ajaxReturn($userS); //返回存入图片名字
        


    }

    public function ceshi(){
        $user=M('productlist');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function goumai(){
        $goods=M('productlist');
        $data['id'] = I('id');
        $at = $goods->where($data)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function yunshichang(){
        $user=M('software');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    
    public function register(){
        $data['userName'] = I('userName');
        $data['userMail'] = I('userMail');
        $userPwd = I('userPwd');
        $data['userPwd'] = md5($userPwd);
        $data['userPhone'] = I('userPhone');
        $user=M('user');
        $arr = $user->add($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        if($arr){
            $yes = '恭喜您注册成功';
            $this->ajaxReturn($yes);  
        }else{
            $no = '不好意思注册失败';
            $this->ajaxReturn($ok);  
        }
    }
    public function priducttow(){
        $goods=M('software');
        $data['id'] = I('id');
        $at = $goods->where($data)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function yanzheng(){
        $data = I('username');
        $user=M('user');
        $aa=$user->where("userName='$data'")->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($aa);
    }
}