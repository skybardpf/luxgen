<div class="feedback">
	<h2>Тест-драйв</h2>
	{if $success_send}
		Ваша заявка принята. В ближайшее время мы с вами свяжемся. <br>
		<a href="/">Вернуться на главную</a>
	{else}
		<span class="title">Пожалуйста, заполните форму, чтобы поучаствовать в тест-драйве автомобиля LUXGEN.
		Мы обязательно свяжемся с вами.</span>
		{form name='test_drive'}
		<table class="test_drive_form">
			{foreach from=$forms_elements.test_drive item=test_drive_elem}
				{if $test_drive_elem.name == 'start_time'}
					<tr>
						<td width="240px" style="vertical-align: top;">{label name=$test_drive_elem.name}{if $test_drive_elem.req}<span style="color: red">*</span> {/if}</td>
						<td width="400px">
							{if $errors}
								{foreach from=$errors item=error key=key}
									{if $key == $test_drive_elem.name}
										<span style="color: red; font-size: 11px;">{$error}</span><br>
									{/if}
								{/foreach}
							{/if}
							с {input name=$test_drive_elem.name class=$validators }
				{elseif $test_drive_elem.name == 'end_time'}
						{label name=$test_drive_elem.name}{if $test_drive_elem.req} {/if}
						{input name=$test_drive_elem.name class=$validators }</td>
					</tr>
				{else}
				<tr>
					<td width="240px" style="vertical-align: top;">{label name=$test_drive_elem.name}{if $test_drive_elem.req}<span style="color: red">*</span> {/if}</td>
					<td width="400px">
					{if $errors}
						{foreach from=$errors item=error key=key}
							{if $key == $test_drive_elem.name}
								<span style="color: red; font-size: 11px;">{$error}</span>
							{/if}
						{/foreach}
					{/if}
						{input name=$test_drive_elem.name class=$validators }</td>
				</tr>
				{/if}
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

