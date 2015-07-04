<!DOCTYPE html>
<html>
<head>
    <title>设置时间控件</title>
    <meta charset="utf-8">
</head>
<body>

<link rel="stylesheet" type="text/css" href="./timepicker/css/jquery-ui.css" />
<script type="text/javascript" src="./timepicker/js/jquery.min.js"></script>
<script type="text/javascript" src="./timepicker/js/jquery-ui.js"></script>
<script type="text/javascript" src="./timepicker/js/jquery-ui-slide.min.js"></script>
<script type="text/javascript" src="./timepicker/js/timepicker.js"></script>
<div style="margin-left:30px;text-align:center;">
<h1>设置秒杀时间</h1>

<input type="text" id="starttime" name="starttime" value="" readonly="readonly" class="input_a"/>&nbsp;－
<input type="text" id="endtime" name="endtime" value="" readonly="readonly" class="input_a"/>

<script type="text/javascript" >
$(document).ready(function()
{
	$('#starttime').datetimepicker({
	    showSecond: true,
	    timeFormat: 'hh:mm:ss'
    });
	$('#endtime').datetimepicker({
	    showSecond: true,
	    timeFormat: 'hh:mm:ss'
    });
});

</script>
</body>
</html>