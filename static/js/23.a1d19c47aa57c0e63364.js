webpackJsonp([23],{eMRC:function(r,e,t){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var o={render:function(){var r=this,e=r.$createElement,t=r._self._c||e;return t("el-form",{ref:"ruleForm",staticClass:"demo-ruleForm",attrs:{model:r.ruleForm,rules:r.rules,"label-width":"100px"}},[t("el-form-item",{attrs:{label:"产品id",prop:"productID"}},[t("el-input",{model:{value:r.ruleForm.productID,callback:function(e){r.$set(r.ruleForm,"productID",e)},expression:"ruleForm.productID"}})],1),r._v(" "),t("el-form-item",{attrs:{label:"产品属性id",prop:"productAttributesID"}},[t("el-input",{model:{value:r.ruleForm.productAttributesID,callback:function(e){r.$set(r.ruleForm,"productAttributesID",e)},expression:"ruleForm.productAttributesID"}})],1),r._v(" "),t("el-form-item",{attrs:{label:"提供商",prop:"provider"}},[t("el-input",{model:{value:r.ruleForm.provider,callback:function(e){r.$set(r.ruleForm,"provider",e)},expression:"ruleForm.provider"}})],1),r._v(" "),t("el-form-item",{attrs:{label:"商品标签",prop:"productlabel"}},[t("el-input",{model:{value:r.ruleForm.productlabel,callback:function(e){r.$set(r.ruleForm,"productlabel",e)},expression:"ruleForm.productlabel"}})],1),r._v(" "),t("el-form-item",{attrs:{label:"商品规格",prop:"ProductSpecifications"}},[t("el-input",{model:{value:r.ruleForm.ProductSpecifications,callback:function(e){r.$set(r.ruleForm,"ProductSpecifications",e)},expression:"ruleForm.ProductSpecifications"}})],1),r._v(" "),t("el-form-item",{attrs:{label:"规格价格",prop:"SpecificationsPrice"}},[t("el-input",{model:{value:r.ruleForm.SpecificationsPrice,callback:function(e){r.$set(r.ruleForm,"SpecificationsPrice",e)},expression:"ruleForm.SpecificationsPrice"}})],1),r._v(" "),t("el-form-item",{attrs:{label:"镜像图片",prop:"productMirrortIMG"}},[t("el-input",{model:{value:r.ruleForm.productMirrortIMG,callback:function(e){r.$set(r.ruleForm,"productMirrortIMG",e)},expression:"ruleForm.productMirrortIMG"}})],1),r._v(" "),t("el-form-item",{attrs:{label:"商品详情",prop:"productDetails"}},[t("el-input",{model:{value:r.ruleForm.productDetails,callback:function(e){r.$set(r.ruleForm,"productDetails",e)},expression:"ruleForm.productDetails"}})],1),r._v(" "),t("el-form-item",[t("el-button",{attrs:{type:"primary"},on:{click:function(e){r.submitForm("ruleForm")}}},[r._v("立即创建")]),r._v(" "),t("el-button",{on:{click:function(e){r.resetForm("ruleForm")}}},[r._v("重置")])],1)],1)},staticRenderFns:[]};var i=t("C7Lr")({data:function(){return{ruleForm:{productID:"",productAttributesID:"",provider:"",productlabel:"",ProductSpecifications:"",SpecificationsPrice:"",productMirrortIMG:"",productDetails:""},rules:{productID:[{required:!0,message:"请输入产品id",trigger:"blur"}],productAttributesID:[{required:!0,message:"请输入产品属性id",trigger:"blur"}],provider:[{required:!0,message:"请输入提供商",trigger:"blur"}],productlabel:[{required:!0,message:"请输入商品标签",trigger:"blur"}],ProductSpecifications:[{required:!0,message:"请输入商品规格",trigger:"blur"}],SpecificationsPrice:[{required:!0,message:"请输入规格价格",trigger:"blur"}],productMirrortIMG:[{message:"请输入镜像图片",trigger:"blur"}],productDetails:[{message:"请输入商品详情",trigger:"blur"}]}}},methods:{submitForm:function(r){var e=this;this.$refs[r].validate(function(r){if(r){var t=e.ruleForm.productID,o=e.ruleForm.productAttributesID,i=e.ruleForm.provider,u=e.ruleForm.productlabel,l=e.ruleForm.ProductSpecifications,c=e.ruleForm.SpecificationsPrice,s=e.ruleForm.productMirrortIMG,a=e.ruleForm.productDetails;e.$http.post("http://localhost/nhkjw/index.php/Admin/index/commoditydataadd",{productID:t,productAttributesID:o,provider:i,productlabel:u,ProductSpecifications:l,SpecificationsPrice:c,productMirrortIMG:s,productDetails:a},{emulateJSON:!0}).then(function(r){if(200!==r.status)return e.$message.error("添加失败"),!1;e.$message.success("添加成功"),e.$router.go(-1)})}})},resetForm:function(r){this.$refs[r].resetFields()}}},o,!1,function(r){t("i3tj")},"data-v-3a86a56c",null);e.default=i.exports},i3tj:function(r,e){}});