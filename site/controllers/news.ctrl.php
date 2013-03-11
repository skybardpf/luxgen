<?php
class NewsController extends Site_Controller
{
    public function actionDefault(){ 
        zf::addCSS('reset', '/public/site/css/reset.css');
        zf::addCSS('style', '/public/site/css/style.css');
        zf::addCSS('style.timeline', '/public/site/css/style.timeline.css');
        zf::addCSS('style.template', '/public/site/css/style.template.css');
        if ($this->app->request->id) {
            return $this->Show($this->app->request->id);
        }
        $cond = $years = $ind = array();
        if (!empty($_GET['year'])) {
            $cond['where']['!raw1'] = "DATE_FORMAT(created, '%Y') = '{$_GET['year']}'";
        }
        $cond['order'] = array('created' => 'DESC');
        if (empty($_GET['year'])) {
            $cond['limit'] = 6;
        }
        $month = array(
            'Jan' => 'Янв.', 'Feb' => 'Фев.', 'Mar' => 'Мар.', 'Apr' => 'Апр.', 'Jun' => 'Июн.', 'Jul' => 'Июл.', 
            'Aug' => 'Авг.', 'Sep' => 'Сен.', 'Oct' => 'Окт.', 'Nov' => 'Нояб.', 'Dec' => 'Дек.',
        );
        debug::add_log("<b>Вытаскиваем новости</b>");
        $news = $this->model('news')->getList('news', 'site', $cond);
        if (!empty($news)) {
            foreach($news as &$new) {
                $sid = date('n', strtotime($new['created'])); 
                /*debug::dump($sid);
                debug::dump($new['created']);*/
                if (!isset($ind[$sid])) {
                    $ind[$sid] = $sid;               
                    $new['sid'] = $sid;
                    $mon = date('M', strtotime($new['created']));
                    $new['mon'] = $month[$mon];
                    $new['monthcont'] = $new['sid'] - 1;
                }
            }
            unset($new);
        }
        $tmpyears = $this->model('news')->getList('news', array('created'));
        if (!empty($tmpyears)) {
            foreach($tmpyears as $year) {
                $year = date('Y', strtotime($year['created']));
                $years[$year] = $year;
            }
        }
        $this->page->years = $years;
        
        $this->page->news = $news;
        
        $this->page->content = $this->renderView('list');
//        debug::dump($years);
        $this->loadView('main',null);
    }
    
    public function Show(){ 
        $this->page->new = $new = $this->model('news')->GetByCond(
            'news', 
            'site', 
            array(
                'where' => array(
                    'id' => $this->app->request->id,
                ),
            )
        );
        if (!empty($_GET['year'])) {
            $this->page->year_get = $_GET['year'];
        }
        $tmpyears = $this->model('news')->getList('news', array('created'));
        if (!empty($tmpyears)) {
            foreach($tmpyears as $year) {
                $year = date('Y', strtotime($year['created']));
                $years[$year] = $year;
            }
        }
        $this->page->years = $years;
        $this->page->content = $this->renderView('list');
        //debug::dump($imgs);
        $this->loadView('main',null);
    }
}