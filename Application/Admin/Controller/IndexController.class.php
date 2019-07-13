<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        // $this->show('欢迎访问南华科技网后台管理系统');
        $this->display();
    }
    public function login(){
        $data["adminName"] = I('name');
        $a = I('pwd');
        $data["adminPwd"] = md5('$a');
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $admin = D('admin');
        $at=$admin->where($data)->find();
        if($at){
            session('username',$data["adminName"]);  
            $user = session('username');
            $this->ajaxReturn($user);
        }  else {
            $data = "";
            $this->ajaxReturn($data);
        }
    }
    public function shop(){
        $user=M('software');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function mod(){
        $goods=M('software');
        $data['id'] = I('id');
        $at = $goods->where($data)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function mody(){
        $goods=M('software');
        $data['genus'] = I('genus');
        $data['softwareName'] = I('softwareName');
        $data['softwareExplain'] = I('softwareExplain');
        $data['softwarePrice'] = I('softwarePrice');
        $data['softwareTitle'] = I('softwareTitle');
        $data['softwareProvide'] = I('softwareProvide');
        $data['softwareLabel'] = I('softwareLabel');
        $data['softwareDetails'] = I('softwareDetails');
        $pic = I('softwarePicture');
        $pcc = $_SERVER['DOCUMENT_ROOT'].'/nhkjw'.$pic;
        unlink($pcc);
        $id=I('id');
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
        $data['softwarePicture'] = $imageSrc;
        $at=$goods->where("id= '$id'")->save($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function del(){
        $id=I('id');
        $pic=I('pic');
        $goods=D('software');
        $pcc = $_SERVER['DOCUMENT_ROOT'].'/nhkjw'.$pic;
        unlink($pcc);
        $at=$goods->delete($id);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function shopcate(){
        $goods=D('software');
        $genus=I('genus');
        $at = $goods->where("genus='$genus'")->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function shopword(){
        $goods=D('software');
        $genus=I('select_cate');
        $word=I('select_word');
        $map['genus'] =array('like','%'.$genus.'%');
        $map['softwareName'] =array('like','%'.$word.'%');
        $at = $goods->where($map)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function tableadd(){
        $user = D("software");
        $data['genus'] = I('genus');
        $data['softwareName'] = I('softwareName');
        $data['softwareExplain'] = I('softwareExplain');
        $data['softwarePrice'] = I('softwarePrice');
        $data['softwareTitle'] = I('softwareTitle');
        $data['softwareProvide'] = I('softwareProvide');
        $data['softwareLabel'] = I('softwareLabel');
        $data['softwareDetails'] = I('softwareDetails');
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
        $data['softwarePicture'] = $imageSrc;
        $at = $user->add($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function product(){
        $user=M('productlist');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function productdel(){
        $id=I('id');
        $goods=D('productlist');
        $at=$goods->delete($id);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function productmod(){
        $goods=M('productlist');
        $data['id'] = I('id');
        $at = $goods->where($data)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function productmody(){
        $goods=M('productlist');
        $id=I('id');
        $data['productName'] = I('productName');
        $data['remark'] = I('remark');
        $data['cpuMemory'] = I('cpuMemory');
        $data['publicNetworkIP'] = I('publicNetworkIP');
        $data['systemDisk'] = I('systemDisk');
        $data['price'] = I('price');
        $data['Tips'] = I('Tips');
        $at=$goods->where("id= '$id'")->save($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function productword(){
        $goods=D('productlist');
        $word=I('select_word');
        $map['productName'] =array('like','%'.$word.'%');
        $at = $goods->where($map)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function prodadd(){
        $user = D("productlist");
        $data['productName'] = I('productName');
        $data['remark'] = I('remark');
        $data['cpuMemory'] = I('cpuMemory');
        $data['publicNetworkIP'] = I('publicNetworkIP');
        $data['systemDisk'] = I('systemDisk');
        $data['price'] = I('price');
        $data['Tips'] = I('Tips');
        $at = $user->add($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function usercat(){
        $user=M('user');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function userdel(){
        $id=I('id');
        $goods=D('user');
        $at=$goods->delete($id);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }    
    public function usermod(){
        $goods=M('user');
        $data = I('id');
        $at = $goods->where("id='$data'")->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function usermody(){
        $user = M("user");
        $data['userName']=I('userName');
        $data['userPwd']=I('userPwd');
        $data['userPhone']=I('userPhone');
        $data['userMail']=I('userMail');
        $pic = I('userphoto');
        $pcc = $_SERVER['DOCUMENT_ROOT'].'/nhkjw'.$pic;
        unlink($pcc);
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
        $id=I('id');
        $at=$user->where("id= '$id'")->save($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function useradd(){
        $user = D("user");
        $data['userName'] = I('userName');
        $data['userPwd'] = I('userPwd');
        $data['userPhone'] = I('userPhone');
        $data['userMail'] = I('userMail');
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
        $at = $user->add($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function userquery(){
        $goods=M('user');
        $data = I('name');
        $map['userName'] =array('like','%'.$data.'%');
        $at = $goods->where($map)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function admincat(){
        $user=M('admin');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function admindel(){
        $id=I('id');
        $goods=D('admin');
        $at=$goods->delete($id);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    } 
    public function commoditydata(){
        $user=M('commoditydata');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function commoditydatadel(){
        $id=I('id');
        $goods=D('commoditydata');
        $at=$goods->where("id='$id'")->delete();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function commoditydataquery(){
        $goods=D('commoditydata');
        $id=I('select_word');
        $map['id'] =array('like','%'.$id.'%');
        $at = $goods->where($map)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function commoditydataadd(){
        $user = D("commoditydata");
        $data['productID'] = I('productID');
        $data['productAttributesID'] = I('productAttributesID');
        $data['provider'] = I('provider');
        $data['productlabel'] = I('productlabel');
        $data['ProductSpecifications'] = I('ProductSpecifications');
        $data['SpecificationsPrice'] = I('SpecificationsPrice');
        $data['productMirrortIMG'] = I('productMirrortIMG');
        $data['productDetails'] = I('productDetails');
        $at = $user->add($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function Commoditydatamod(){
        $goods=M('commoditydata');
        $data['id'] = I('id');
        $at = $goods->where($data)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function Commoditydatamody(){
        $goods=M('commoditydata');
        $id=I('id');
        $data['productID'] = I('productID');
        $data['productAttributesID'] = I('productAttributesID');
        $data['provider'] = I('provider');
        $data['productlabel'] = I('productlabel');
        $data['ProductSpecifications'] = I('ProductSpecifications');
        $data['SpecificationsPrice'] = I('SpecificationsPrice');
        $data['productMirrortIMG'] = I('productMirrortIMG');
        $data['productDetails'] = I('productDetails');
        $at=$goods->where("id= '$id'")->save($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproduct(){
        $user=M('serverproduct');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductdel(){
        $id=I('id');
        $goods=D('serverproduct');
        $at=$goods->where("id='$id'")->delete();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductquery(){
        $goods=D('serverproduct');
        $name=I('select_word');
        $map['productName'] =array('like','%'.$name.'%');
        $at = $goods->where($map)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductadd(){
        $user = D("serverproduct");
        $data['productName'] = I('productName');
        $data['productID'] = I('productID');
        $data['productIntroduction'] = I('productIntroduction');
        $data['productRenewalfee'] = I('productRenewalfee');
        $data['selected'] = I('selected');
        $data['Introduction'] = I('Introduction');
        $data['classification'] = I('classification');
        $at = $user->add($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductmod(){
        $goods=M('serverproduct');
        $data['id'] = I('id');
        $at = $goods->where($data)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductmody(){
        $goods=M('serverproduct');
        $data['productName'] = I('productName');
        $data['productIntroduction'] = I('productIntroduction');
        $data['productRenewalfee'] = I('productRenewalfee');
        $data['selected'] = I('selected');
        $data['Introduction'] = I('Introduction');
        $data['classification'] = I('classification');
        $id=I('id');
        $at=$goods->where("id= '$id'")->save($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductattributes(){
        $user=M('serverproductattributes');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductattributesdel(){
        $id=I('id');
        $goods=D('serverproductattributes');
        $at=$goods->where("id='$id'")->delete();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductattributesquery(){
        $goods=D('serverproductattributes');
        $name=I('select_word');
        $map['productmodel'] =array('like','%'.$name.'%');
        $at = $goods->where($map)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductattributesmod(){
        $goods=M('serverproductattributes');
        $data['id'] = I('id');
        $at = $goods->where($data)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductattributesmody(){
        $goods=M('serverproductattributes');
        $data['productID'] = I('productID');
        $data['productAttributesID'] = I('productAttributesID');
        $data['productmodel'] = I('productmodel');
        $data['productMirror'] = I('productMirror');
        $data['Clouddisk'] = I('Clouddisk');
        $data['PRODUCTmodeltips'] = I('PRODUCTmodeltips');
        $data['mirrortips'] = I('mirrortips');
        $data['modelprice'] = I('modelprice');
        $data['mirrorprice'] = I('mirrorprice');
        $data['cloudprice'] = I('cloudprice');
        $data['productMirrortIMG'] = I('productMirrortIMG');
        $id=I('id');
        $at=$goods->where("id= '$id'")->save($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($data);
    }
    public function serverproductattributesadd(){
        $user = D("serverproductattributes");
        $data['productID'] = I('productID');
        $data['productAttributesID'] = I('productAttributesID');
        $data['productmodel'] = I('productmodel');
        $data['productMirror'] = I('productMirror');
        $data['Clouddisk'] = I('Clouddisk');
        $data['PRODUCTmodeltips'] = I('PRODUCTmodeltips');
        $data['mirrortips'] = I('mirrortips');
        $data['modelprice'] = I('modelprice');
        $data['mirrorprice'] = I('mirrorprice');
        $data['cloudprice'] = I('cloudprice');
        $data['productMirrortIMG'] = I('productMirrortIMG');
        $at = $user->add($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductdateattribute(){
        $user=M('serverproductdateattribute');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductdateattributedel(){
        $id=I('id');
        $goods=D('serverproductdateattribute');
        $at=$goods->where("id='$id'")->delete();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductdateattributequery(){
        $goods=D('serverproductdateattribute');
        $name=I('name');
        $map['productarea'] =array('like','%'.$name.'%');
        $at = $goods->where($map)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductdateattributemod(){
        $goods=M('serverproductdateattribute');
        $data['id'] = I('id');
        $at = $goods->where($data)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function serverproductdateattributemody(){
        $goods=M('serverproductdateattribute');
        $data['productID'] = I('productID');
        $data['productarea'] = I('productarea');
        $data['ctareaprice'] = I('ctareaprice');
        $data['productMirror'] = I('productMirror');
        $data['Duration'] = I('Duration');
        $data['Durationprice'] = I('Durationprice');
        $id=I('id');
        $at=$goods->where("id= '$id'")->save($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($data);
    }
    public function serverproductdateattributeadd(){
        $user = D("serverproductdateattribute");
        $data['productID'] = I('productID');
        $data['productarea'] = I('productarea');
        $data['ctareaprice'] = I('ctareaprice');
        $data['Duration'] = I('Duration');
        $data['Durationprice'] = I('Durationprice');
        $at = $user->add($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function shopingcart(){
        $user=M('shopingcart');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function shopingcartquery(){
        $goods=D('shopingcart');
        $name=I('name');
        $map['userName'] =array('like','%'.$name.'%');
        $at = $goods->where($map)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function shopingcartcat(){
        $goods=D('shopingcart');
        $id=I('id');
        $at = $goods->where("id= '$id'")->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function userorder(){
        $user=M('userorder');
        $at = $user->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function userorderdel(){
        $id=I('id');
        $goods=D('userorder');
        $at=$goods->where("id='$id'")->delete();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function userorderquery(){
        $goods=D('userorder');
        $name=I('name');
        $map['id'] =array('like','%'.$name.'%');
        $at = $goods->where($map)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function userordermod(){
        $goods=M('userorder');
        $data['id'] = I('id');
        $at = $goods->where($data)->select();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
    public function userordermody(){
        $goods=M('userorder');
        $data['userid'] = I('userid');
        $data['userName'] = I('userName');
        $data['data'] = I('data');
        $data['productName'] = I('productName');
        $data['cycle'] = I('cycle');
        $data['Quantity'] = I('Quantity');
        $data['Configuration'] = I('Configuration');
        $data['price'] = I('price');
        $data['time'] = I('time');
        $id=I('id');
        $at=$goods->where("id= '$id'")->save($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($data);
    }
    public function userorderadd(){
        $user = D("userorder");
        $data['userid'] = I('userid');
        $data['userName'] = I('userName');
        $data['productName'] = I('productName');
        $data['data'] = I('data');
        $data['cycle'] = I('cycle');
        $data['Quantity'] = I('Quantity');
        $data['Configuration'] = I('Configuration');
        $data['price'] = I('price');
        $data['time'] = I('time');
        $at = $user->add($data);
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT');
        $this->ajaxReturn($at);
    }
}