webpackJsonp([10],{KHMy:function(e,r){},PuEE:function(e,r,t){"use strict";Object.defineProperty(r,"__esModule",{value:!0});var a=t("L7Pj"),l=t.n(a),o={data:function(){var e=this;return{ruleForm:{name:"",pass:"",checkPass:"",phone:"",mail:"",photo:"",image:""},rules:{name:[{required:!0,message:"请输入用户名称",trigger:"blur"},{min:1,max:10,message:"长度在 1 到 10 个字符",trigger:"blur"}],pass:[{required:!0,validator:function(r,t,a){""===t?a(new Error("请输入密码")):(""!==e.ruleForm.checkPass&&e.$refs.ruleForm.validateField("checkPass"),a())},trigger:"blur"}],checkPass:[{required:!0,validator:function(r,t,a){""===t?a(new Error("请再次输入密码")):t!==e.ruleForm.pass?a(new Error("两次输入密码不一致!")):a()},trigger:"blur"}],phone:[{required:!0,message:"请输入用户手机",trigger:"blur"},{min:11,max:11,message:"长度为11位的手机号",trigger:"blur"}],mail:[{required:!0,message:"请输入用户邮箱",trigger:"blur"}]}}},created:function(){l()(function(){l()("#img_select").change(function(){var e=this.files[0],r=new FileReader;r.readAsDataURL(e),r.onload=function(e){l()("#img").attr("src",this.result),l()("#img_data").val(this.result)}})})},methods:{submitForm:function(e){var r=this;this.$refs[e].validate(function(e){if(e){var t=l()("#img_data").val(),a=r.ruleForm.name,o=r.ruleForm.checkPass,s=r.ruleForm.phone,i=r.ruleForm.mail,u=r.ruleForm.photo;r.$http.post("http://localhost/nhkjw/index.php/Admin/index/useradd",{userName:a,userPwd:o,userPhone:s,userMail:i,userPhoto:u,img_data:t},{enctype:"multipart/form-data"},{emulateJSON:!0}).then(function(e){if(200!==e.status)return r.$message.error("添加失败"),!1;r.$message.success("添加成功"),r.$router.go(-1)})}})},resetForm:function(e){this.$refs[e].resetFields()}}},s={render:function(){var e=this,r=e.$createElement,t=e._self._c||r;return t("el-form",{ref:"ruleForm",staticClass:"demo-ruleForm",attrs:{model:e.ruleForm,rules:e.rules,enctype:"multipart/form-data","label-width":"100px"}},[t("el-form-item",{attrs:{label:"用户名称",prop:"name"}},[t("el-input",{model:{value:e.ruleForm.name,callback:function(r){e.$set(e.ruleForm,"name",r)},expression:"ruleForm.name"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"密码",prop:"pass"}},[t("el-input",{attrs:{type:"password",autocomplete:"off"},model:{value:e.ruleForm.pass,callback:function(r){e.$set(e.ruleForm,"pass",r)},expression:"ruleForm.pass"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"确认密码",prop:"checkPass"}},[t("el-input",{attrs:{type:"password",autocomplete:"off"},model:{value:e.ruleForm.checkPass,callback:function(r){e.$set(e.ruleForm,"checkPass",r)},expression:"ruleForm.checkPass"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"用户手机",prop:"phone"}},[t("el-input",{model:{value:e.ruleForm.phone,callback:function(r){e.$set(e.ruleForm,"phone",r)},expression:"ruleForm.phone"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"用户邮箱",prop:"mail"}},[t("el-input",{model:{value:e.ruleForm.mail,callback:function(r){e.$set(e.ruleForm,"mail",r)},expression:"ruleForm.mail"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"用户头像",prop:"photo"}},[t("div",[t("input",{attrs:{type:"hidden",name:"img_data",id:"img_data"}}),e._v(" "),t("input",{attrs:{type:"file",id:"img_select",accept:"image/*"}})])]),e._v(" "),t("el-form-item",[t("el-button",{attrs:{type:"primary"},on:{click:function(r){e.submitForm("ruleForm")}}},[e._v("立即创建")]),e._v(" "),t("el-button",{on:{click:function(r){e.resetForm("ruleForm")}}},[e._v("重置")])],1)],1)},staticRenderFns:[]};var i=t("C7Lr")(o,s,!1,function(e){t("KHMy")},"data-v-8f163930",null);r.default=i.exports}});