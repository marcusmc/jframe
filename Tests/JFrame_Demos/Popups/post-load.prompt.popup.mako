<!DOCTYPE html>
<html>
	<head>
		<title>Post-load prompt popup</title>
	</head>
	<body>
		% if post_vars:
			<div class="jframe_padded">
				You submitted the following values:
				<ul>
					% for post_var, val in post_vars:
					 <li>${post_var}: ${val}</li>
					% endfor
				</ul>
			</div>
		% else:
		<!-- test_runner_no_wrapper -->
		<div class="prompt_popup">
				I'm a post-load prompt. Enter a value please.
				<form action="?project=jframe_demos&path=/Popups/post-load.prompt.popup.mako" method="post" style="margin: 6px 0px 0px;">
					<input type="text" name="prompt_value"/>
					<input type="submit" class="jframe-hidden" name="submit"/>
				</form>
		</div>
		% endif
	</body>
</html>
