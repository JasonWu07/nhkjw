webpackJsonp([26],{gse9:function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var l={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"table"},[a("div",{staticClass:"crumbs"},[a("el-breadcrumb",{attrs:{separator:"/"}},[a("el-breadcrumb-item",[a("i",{staticClass:"el-icon-lx-cascades"}),t._v(" 热门服务器")])],1)],1),t._v(" "),a("div",{staticClass:"container"},[a("div",{staticClass:"handle-box"},[a("el-button",{staticClass:"handle-del mr10",attrs:{type:"primary",icon:"delete"},on:{click:t.delAll}},[t._v("批量删除")]),t._v(" "),a("el-input",{staticClass:"handle-input mr10",attrs:{placeholder:"筛选关键词"},nativeOn:{keyup:function(e){return"button"in e||!t._k(e.keyCode,"enter",13,e.key,"Enter")?t.search(e):null}},model:{value:t.select_word,callback:function(e){t.select_word=e},expression:"select_word"}}),t._v(" "),a("el-button",{attrs:{type:"primary",icon:"search"},on:{click:t.search}},[t._v("搜索")]),t._v(" "),a("el-button",{attrs:{type:"primary",icon:"search"},on:{click:t.product}},[t._v("添加")])],1),t._v(" "),a("el-table",{staticStyle:{width:"100%"},attrs:{data:t.tableData,"row-class-name":t.tableRowClassName}},[a("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),t._v(" "),a("el-table-column",{attrs:{prop:"productname",label:"商品姓名",width:"180"}}),t._v(" "),a("el-table-column",{attrs:{prop:"remark",label:"商品属性",width:"180"}}),t._v(" "),a("el-table-column",{attrs:{prop:"price",label:"商品价格"}}),t._v(" "),a("el-table-column",{attrs:{prop:"cpumemory",label:"处理器核心"}}),t._v(" "),a("el-table-column",{attrs:{prop:"systemdisk",label:"处理器内存"}}),t._v(" "),a("el-table-column",{attrs:{prop:"publicnetworkip",label:"处理器IP"}}),t._v(" "),a("el-table-column",{attrs:{prop:"tips",label:"商品提示"}}),t._v(" "),a("el-table-column",{attrs:{fixed:"right",label:"操作",width:"100"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.handleDelete(e.$index,e.row.id)}}},[t._v("删除")]),t._v(" "),a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.tiaozhuan(e.row.id)}}},[t._v("编辑")])]}}])})],1)],1),t._v(" "),a("el-dialog",{attrs:{title:"提示",visible:t.delVisible,width:"300px",center:""},on:{"update:visible":function(e){t.delVisible=e}}},[a("div",{staticClass:"del-dialog-cnt"},[t._v("删除不可恢复，是否确定删除？")]),t._v(" "),a("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{on:{click:function(e){t.delVisible=!1}}},[t._v("取 消")]),t._v(" "),a("el-button",{attrs:{type:"primary"},on:{click:t.deleteRow}},[t._v("确 定")])],1)])],1)},staticRenderFns:[]};var s=a("C7Lr")({name:"basetable",data:function(){return{tableData:[],select_cate:"",select_word:"",id:"",delVisible:!1,idx:-1}},created:function(){this.getData()},watch:{$route:function(t,e){this.getData()}},methods:{tableRowClassName:function(t){t.row;var e=t.rowIndex;return 1===e?"warning-row":3===e?"success-row":""},handleDelete:function(t,e){this.idx=t,this.delVisible=!0},deleteRow:function(t){var e=this;t=this.tableData.splice(this.idx,1)[0].id,this.$http.post("http://localhost/nhkjw/index.php/Admin/index/productdel",{id:t},{emulateJSON:!0}).then(function(t){200===t.status?(e.tableData.splice(e.idx,1),e.$message.success("删除成功"),e.delVisible=!1,e.getData()):(e.$message.error("删除失败"),e.getData())})},tiaozhuan:function(t){this.$router.push({path:"/productmod/"+t})},getData:function(){var t=this;this.$http.post("http://localhost/nhkjw/index.php/Admin/index/product").then(function(e){t.tableData=e.body,200===e.status?t.tableData=e.body:(t.$message.error("获取失败"),t.$router.go(-1))})},delAll:function(){this.$message.error("不推荐使用批量删除")},search:function(){var t=this,e=this.select_word;this.$http.post("http://localhost/nhkjw/index.php/Admin/index/productword",{select_word:e},{emulateJSON:!0}).then(function(e){200===e.status?(t.tableData="",t.tableData=e.body):(t.$message.error("搜索失败"),t.getData())})},product:function(){this.$router.push({path:"/productadd"})}}},l,!1,function(t){a("jZKa")},"data-v-2be12c8a",null);e.default=s.exports},jZKa:function(t,e){}});