<script type="text/javascript">
		//<![CDATA[
			function selected_text(a,b,c){if (c==0) b.value = a.value; else b.value = b.value + "/" + a.value;}
		//]]>
</script>
<form name="edit_software" method="post"
	action="admin_content.php?module=content&class={$Content_Class}&type=software&function={$Content_Function}">
<div style="text-align: left; padding-top: 5px;">所属栏目：{$Content_ClassName}<input
	type="hidden" name="parent_class" value="{$Content_Class}" /></div>
<div style="text-align: left; padding-top: 5px;">软件名称：<input
	class="textinput4" type="text" name="software_name"
	value="{$Content_Name}" /><input type="hidden" name="id"
	value="{$Content_ID}" /></div>
<div style="text-align: left; padding-top: 5px;">软件类型：<input
	class="textinput4" type="text" name="software_type"
	value="{$Software_Type}" /><select class="select2" name="type_select"
	onChange="selected_text(document.edit_software.type_select,document.edit_software.software_type,0)">
	{$Software_TypeOptions}
</select></div>
<div style="text-align: left; padding-top: 5px;">软件作者：<input
	class="textinput4" type="text" name="software_producer"
	value="{$Software_Producer}" /></div>
<div style="text-align: left; padding-top: 5px;">推荐程度：<select
	name="software_grade">
	{$Software_GradeOptions}
</select></div>
<div style="text-align: left; padding-top: 5px;">软件语言：<input
	class="textinput4" type="text" name="software_language"
	value="{$Software_Language}" /><select class="select2"
	name="language_select"
	onChange="selected_text(document.edit_software.language_select,document.edit_software.software_language,0)">
	{$Software_LangOptions}
</select></div>
<div style="text-align: left; padding-top: 5px;">软件大小：<input
	class="textinput4" type="text" name="software_size"
	value="{$Software_Size}" /><select class="select2" name="size_unit">
	{$Software_UnitOptions}
</select></div>
<div style="text-align: left; padding-top: 5px;">运行环境：<input
	class="textinput5" type="text" name="software_environment"
	value="{$Software_Env}" /></div>
<div style="text-align: left; padding-top: 5px;">软件地址：<input
	class="textinput4" type="text" name="software_add"
	value="{$Content_Addr}" /> <input type="button" value="选择"
	class="button1"
	onclick="window.open('admin_editor_uploadlist.php','选择文件','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=600, height=500')" /></div>
<div style="text-align: left; padding-top: 5px;"><input type="hidden"
	name="software_HTML" value="yes" /><textarea class="textarea1"
	name="software_text">{$Content_Text}</textarea><script
	type="text/javascript" src="ckeditor/ckeditor.js"></script><script
	type="text/javascript">
		//<![CDATA[
			function setAddr(addr){document.edit_software.software_add.value=addr;}
			CKEDITOR.replace("software_text");
		//]]>
		</script></div>
<div style="text-align: center; padding-top: 5px;"><input type="submit"
	class="button1" value="保存" /> <input type="button" class="button1"
	value="返回"
	onclick="window.location='admin_content.php?module=content&class={$Content_Class}'" /></div>
</form>
