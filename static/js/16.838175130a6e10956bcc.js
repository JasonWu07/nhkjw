webpackJsonp([16],{"75UF":function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"table"},[a("div",{staticClass:"crumbs"},[a("el-breadcrumb",{attrs:{separator:"/"}},[a("el-breadcrumb-item",[a("i",{staticClass:"el-icon-lx-cascades"}),t._v(" 管理员查看")])],1)],1),t._v(" "),a("div",{staticClass:"container"},[a("el-table",{staticStyle:{width:"100%"},attrs:{data:t.tableData,"row-class-name":t.tableRowClassName}},[a("el-table-column",{attrs:{prop:"adminname",label:"管理员姓名",width:"180"}}),t._v(" "),a("el-table-column",{attrs:{prop:"adminpwd",label:"管理员密码",width:"180"}}),t._v(" "),a("el-table-column",{attrs:{fixed:"right",label:"操作",width:"100"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.handleDelete(e.$index,e.row.id)}}},[t._v("删除")]),t._v(" "),a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.tiaozhuan(e.row.id)}}},[t._v("编辑")])]}}])})],1)],1),t._v(" "),a("el-dialog",{attrs:{title:"提示",visible:t.delVisible,width:"300px",center:""},on:{"update:visible":function(e){t.delVisible=e}}},[a("div",{staticClass:"del-dialog-cnt"},[t._v("删除不可恢复，是否确定删除？")]),t._v(" "),a("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{on:{click:function(e){t.delVisible=!1}}},[t._v("取 消")]),t._v(" "),a("el-button",{attrs:{type:"primary"},on:{click:t.deleteRow}},[t._v("确 定")])],1)])],1)},staticRenderFns:[]};var s=a("C7Lr")({name:"basetable",data:function(){return{url:"./static/vuetable.json",tableData:[],cur_page:1,multipleSelection:[],select_cate:"",select_word:"",del_list:[],id:"",is_search:!1,editVisible:!1,delVisible:!1,form:{name:"",date:"",address:""},idx:-1}},created:function(){this.getData()},computed:{},methods:{tableRowClassName:function(t){t.row;var e=t.rowIndex;return 1===e?"warning-row":3===e?"success-row":""},handleDelete:function(t,e){this.idx=t,this.delVisible=!0},deleteRow:function(t){t=this.tableData.splice(this.idx,1)[0].id,this.$http.post("http://localhost/nhkjw/index.php/Admin/index/admindel",{id:t},{emulateJSON:!0}).then(function(t){t.body}),this.tableData.splice(this.idx,1),this.$message.success("删除成功"),this.delVisible=!1,this.getData()},tiaozhuan:function(t){this.$message.success("权限不够，不可修改管理员信息"),this.delVisible=!1},getData:function(){var t=this;this.$http.post("http://localhost/nhkjw/index.php/Admin/index/admincat").then(function(e){t.tableData=e.body})}}},i,!1,function(t){a("WJxR")},"data-v-6c0c4a33",null);e.default=s.exports},WJxR:function(t,e){}});