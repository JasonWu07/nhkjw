webpackJsonp([12],{"/o2i":function(e,r,t){"use strict";Object.defineProperty(r,"__esModule",{value:!0});var a=t("L7Pj"),o=t.n(a),l={data:function(){return{ruleForm:{genus:"",softwareName:"",softwareExplain:"",softwarePrice:"",softwareTitle:"",softwareProvide:"",softwareLabel:"",softwareDetails:"",softwarePicture:""},rules:{genus:[{required:!0,message:"请输入软件环境归属",trigger:"blur"}],softwareName:[{required:!0,message:"请输入软件环境名称",trigger:"blur"}],softwareExplain:[{required:!0,message:"请输入软件环境说明",trigger:"blur"}],softwarePrice:[{required:!0,message:"请输入软件环境价格",trigger:"blur"}],softwareTitle:[{required:!0,message:"请输入软件环境标题",trigger:"blur"}],softwareProvide:[{required:!0,message:"请输入软件环境提供",trigger:"blur"}],softwareLabel:[{required:!0,message:"请输入软件环境标签",trigger:"blur"}],softwareDetails:[{required:!0,message:"请输入软件环境详情",trigger:"blur"}]}}},created:function(){o()(function(){o()("#img_select").change(function(){var e=this.files[0],r=new FileReader;r.readAsDataURL(e),r.onload=function(e){o()("#img").attr("src",this.result),o()("#img_data").val(this.result)}})})},methods:{submitForm:function(e){var r=this;this.$refs[e].validate(function(e){if(e){var t=r.ruleForm.genus,a=r.ruleForm.softwareName,l=r.ruleForm.softwareExplain,s=r.ruleForm.softwarePrice,i=r.ruleForm.softwareTitle,u=r.ruleForm.softwareProvide,m=r.ruleForm.softwareLabel,n=r.ruleForm.softwareDetails,f=o()("#img_data").val();r.$http.post("http://localhost/nhkjw/index.php/Admin/index/tableadd",{genus:t,softwareName:a,softwareExplain:l,softwarePrice:s,softwareTitle:i,softwareProvide:u,softwareLabel:m,softwareDetails:n,img_data:f},{emulateJSON:!0}).then(function(e){if(200!==e.status)return r.$message.error("添加失败"),!1;r.$message.success("添加成功"),r.$router.go(-1)})}})},resetForm:function(e){this.$refs[e].resetFields()}}},s={render:function(){var e=this,r=e.$createElement,t=e._self._c||r;return t("el-form",{ref:"ruleForm",staticClass:"demo-ruleForm",attrs:{model:e.ruleForm,rules:e.rules,"label-width":"120px"}},[t("el-form-item",{attrs:{label:"软件环境归属",prop:"genus"}},[t("el-input",{model:{value:e.ruleForm.genus,callback:function(r){e.$set(e.ruleForm,"genus",r)},expression:"ruleForm.genus"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"软件环境名称",prop:"softwareName"}},[t("el-input",{model:{value:e.ruleForm.softwareName,callback:function(r){e.$set(e.ruleForm,"softwareName",r)},expression:"ruleForm.softwareName"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"软件环境说明",prop:"softwareExplain"}},[t("el-input",{model:{value:e.ruleForm.softwareExplain,callback:function(r){e.$set(e.ruleForm,"softwareExplain",r)},expression:"ruleForm.softwareExplain"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"软件环境价格",prop:"softwarePrice"}},[t("el-input",{model:{value:e.ruleForm.softwarePrice,callback:function(r){e.$set(e.ruleForm,"softwarePrice",r)},expression:"ruleForm.softwarePrice"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"软件环境标题",prop:"softwareTitle"}},[t("el-input",{model:{value:e.ruleForm.softwareTitle,callback:function(r){e.$set(e.ruleForm,"softwareTitle",r)},expression:"ruleForm.softwareTitle"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"软件环境提供",prop:"softwareProvide"}},[t("el-input",{model:{value:e.ruleForm.softwareProvide,callback:function(r){e.$set(e.ruleForm,"softwareProvide",r)},expression:"ruleForm.softwareProvide"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"软件环境标签",prop:"softwareLabel"}},[t("el-input",{model:{value:e.ruleForm.softwareLabel,callback:function(r){e.$set(e.ruleForm,"softwareLabel",r)},expression:"ruleForm.softwareLabel"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"软件环境详情",prop:"softwareDetails"}},[t("el-input",{model:{value:e.ruleForm.softwareDetails,callback:function(r){e.$set(e.ruleForm,"softwareDetails",r)},expression:"ruleForm.softwareDetails"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"软件环境图片",prop:"softwarePicture"}},[t("div",[t("input",{attrs:{type:"hidden",name:"img_data",id:"img_data"}}),e._v(" "),t("input",{attrs:{type:"file",id:"img_select",accept:"image/*"}})])]),e._v(" "),t("el-form-item",[t("el-button",{attrs:{type:"primary"},on:{click:function(r){e.submitForm("ruleForm")}}},[e._v("立即创建")]),e._v(" "),t("el-button",{on:{click:function(r){e.resetForm("ruleForm")}}},[e._v("重置")])],1)],1)},staticRenderFns:[]};var i=t("C7Lr")(l,s,!1,function(e){t("M2Mt")},"data-v-85663fde",null);r.default=i.exports},M2Mt:function(e,r){}});