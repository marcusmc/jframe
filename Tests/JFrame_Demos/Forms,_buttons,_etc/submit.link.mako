<!DOCTYPE html>
<html>
	<head>
		<title>Submit Links</title>
	</head>
	<body>
		<p>Click either submit button to update the box below. The box should have an ajax spinner and then update with the content in the button.</p>

		<form action="?project=jframe_demos&path=/Forms,_buttons,_etc/submit.link.mako" method="post" style="margin: 6px 0px 0px;">
			<input type="submit" name="button" value="fetch html (button 1)"/>
			<input type="submit" name="button" value="fetch html (button 2)"/>
			<a class="jframe-submit_form" data-extra-data="{'link':'fetch html (link 1)'}">fetch html (link 1)</a>
			<a class="jframe-submit_form" data-extra-data="{'link':'fetch html (link 2)'}">fetch html (link 2)</a>
		</form>

		<div style="position: relative; margin-top: 10px">
			<div id="update" style="padding: 10px; width: 400px; border: 1px solid black; height: 150px; overflow:hidden;">
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
					this box should get new text when you click the input above.
				% endif
			</div>
		</div>

		<script src="/depender/build?require=Widgets/Behavior.FormRequest,More/Spinner"></script>
		<script>
		new Behavior().apply(document.body);
		</script>

	</body>
</html>
