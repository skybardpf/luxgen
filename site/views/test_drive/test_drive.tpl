<div style="position: absolute; top: 100px;">
	<h2 style="color: black;">Тест-драйв</h2>
	{if $success_send}
		<a href="/">Ваша заявка принята. В ближайшее время наши менеджеры свяжутся с Вами.</a>
	{else}
		<span>Пожалуйста, заполните форму, чтобы поучаствовать в тест-драйве автомобиля LUXGEN.
		Мы обязательно свяжемся с вами.</span>
		{form name='test_drive'}
		<table class="test_drive_form">
			{if $errors}
				{foreach from=$errors item=error}
					<tr>
						<td></td>
						<td style="color: red;">{$error}</td>
					</tr>
				{/foreach}
			{/if}
			{foreach from=$forms_elements.test_drive item=test_drive_elem}
				<tr>
					<td width="240px" style="vertical-align: top;">{label name=$test_drive_elem.name}{if $test_drive_elem.req}<span style="color: red">*</span> {/if}</td>
					<td width="400px">{input name=$test_drive_elem.name class=$validators }</td>
				</tr>
			{/foreach}
			<tr>
				<td></td>
				<td><input class="test_drive_button" type="submit" value="Отправить"></td>
			</tr>
		</table>
		{closeformgroup}
		</form>
	{/if}
</div>

