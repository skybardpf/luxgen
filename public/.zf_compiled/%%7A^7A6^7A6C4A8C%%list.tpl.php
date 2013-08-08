<?php /* Smarty version 2.6.25, created on 2013-08-08 19:41:44
         compiled from /home/le/projects/luxgen-dealer/public/../site/views/news/list.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'loadview', '/home/le/projects/luxgen-dealer/public/../site/views/news/list.tpl', 27, false),array('modifier', 'date_format', '/home/le/projects/luxgen-dealer/public/../site/views/news/list.tpl', 57, false),array('modifier', 'replace', '/home/le/projects/luxgen-dealer/public/../site/views/news/list.tpl', 60, false),)), $this); ?>

<div class="midWrap">
    <div class="HeaderSlide"></div>
    <div class="subNav subNavFixed both">
        <ul class="subNavUL both">
            <li class="NavList png<?php if (! $this->_supers['get']['year']): ?> selected<?php endif; ?>"><a href="/news/">Последние</a></li>
            <?php if ($this->_tpl_vars['years']): ?>
                <?php $_from = $this->_tpl_vars['years']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['year']):
?>
                    <li class="NavList png<?php if ($this->_supers['get']['year'] == $this->_tpl_vars['year']): ?> selected<?php endif; ?>"><a href="/news/?year=<?php echo $this->_tpl_vars['year']; ?>
"><?php echo $this->_tpl_vars['year']; ?>
</a></li>
                <?php endforeach; endif; unset($_from); ?>
            <?php endif; ?>
            <li class="NavList png"><a href="/press/">Пресса о нас</a></li>
        </ul>
        <span class="subNavMask"></span>
    </div>
    <div class="mainContent">
        <div class="cont Technology">
            <div class="both titleFrame">
                <h3 class="title">Новости</h3>
                <span id="chooseFont" class="tools">
                    <a rel="fontSmall" href="#" class="fontDecrease">Маленький</a>
                    <a rel="fontNormal" href="#" class="fontReset">Средний</a>
                    <a rel="fontLarge" href="#" class="fontIncrease">Большой</a>
                </span>
            </div>
            <?php if ($this->_tpl_vars['request']['id']): ?>
                <?php echo smarty_function_loadview(array('name' => 'news/show'), $this);?>

            <?php else: ?>
                <div>
                    <ul class="ContMonth both">
                        <li sid="1" class="month MonthBtn"><span class="month01">1</span></li>
                        <li sid="2" class="month MonthBtn"><span class="month02">2</span></li>
                        <li sid="3" class="month MonthBtn"><span class="month03">3</span></li>
                        <li sid="4" class="month MonthBtn"><span class="month04">4</span></li>
                        <li sid="5" class="month MonthBtn"><span class="month05">5</span></li>
                        <li sid="6" class="month MonthBtn"><span class="month06">6</span></li>
                        <li sid="7" class="month MonthBtn"><span class="month07">7</span></li>
                        <li sid="8" class="month MonthBtn"><span class="month08">8</span></li>
                        <li sid="9" class="month MonthBtn"><span class="month09">9</span></li>
                        <li sid="10" class="month MonthBtn"><span class="month10">10</span></li>
                        <li sid="11" class="month MonthBtn"><span class="month11">11</span></li>
                        <li sid="12" class="month MonthBtn"><span class="month12">12</span></li>
                    </ul>
                </div>
                <div id="contentFont" class="fontNormal">
                    <div class="ContData">
                        <?php if ($this->_tpl_vars['news']): ?>
                            <ul class="ContTimeline both">
                                <?php $_from = $this->_tpl_vars['news']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['i'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['i']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['new']):
        $this->_foreach['i']['iteration']++;
?>
                                    <li class="ContTimelineList">
                                        <?php if ($this->_tpl_vars['new']['sid']): ?>
                                            <span sid="<?php echo $this->_tpl_vars['new']['sid']; ?>
" class="TimelineYear" id="monthcont<?php echo $this->_tpl_vars['new']['monthcont']; ?>
"><?php echo $this->_tpl_vars['new']['mon']; ?>
</span>
                                        <?php endif; ?>
                                        <ul class="TimelineBox">
                                            <a href="/news/id/<?php echo $this->_tpl_vars['new']['id']; ?>
/<?php if ($this->_supers['get']['year']): ?>?year=<?php echo $this->_supers['get']['year']; ?>
<?php endif; ?>">
                                                <li class="ContTimelineTop">
                                                    <time class="TimelineDate"><?php echo ((is_array($_tmp=$this->_tpl_vars['new']['created'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y.%m.%d') : smarty_modifier_date_format($_tmp, '%Y.%m.%d')); ?>
</time>
                                                    <h5 class="TimelineTitle"><?php echo $this->_tpl_vars['new']['title']; ?>
</h5>
                                                </li>
                                                <li><img src="<?php echo ((is_array($_tmp=$this->_tpl_vars['new']['image'])) ? $this->_run_mod_handler('replace', true, $_tmp, '[dir]', 'small') : smarty_modifier_replace($_tmp, '[dir]', 'small')); ?>
"></li>
                                            </a>
                                        </ul>
                                    </li>
                                <?php endforeach; endif; unset($_from); ?>
                            
                        </ul>
                        <?php endif; ?>
                    </div>
                </div>
            <?php endif; ?>
        </div>
        <div id="topBtn" class="topBtn" style="display: none;">
            <span> </span>
        </div>
    </div>
</div>