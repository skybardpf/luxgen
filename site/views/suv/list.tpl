<link href="/public/site/css/style.suv.css" rel="stylesheet" type="text/css" /> 
<link href="/public/site/css/colorbox.css" rel="stylesheet" type="text/css" /> 
<link media="screen" href="/public/site/css/style.contentflow.css" rel="stylesheet" type="text/css" /> 
<script type="text/javascript" src="/public/site/js/jquery.colorbox.js"></script>
<script type="text/javascript" src="/public/site/js/jquery.headerNav.js"></script>
<script type="text/javascript" src="/public/site/js/jquery.headerSlide.js"></script>
<script type="text/javascript" src="/public/site/js/jquery.quickpaginate.js"></script>
<script type="text/javascript" src="/public/site/js/jquery.slides.js"></script>
<script type="text/javascript" src="/public/site/js/jquery.contentflow.js"></script>
<script type="text/javascript" src="/public/site/js/jquery.suv.js"></script>
<script type="text/javascript" src="/public/site/js/jquery.youtube.js"></script>
<script type="text/javascript" src="/public/site/js/CarModelMedia.js"></script>
<script type="text/javascript" src="/public/site/js/jquery.jget.js"></script>
<div class="HeaderSlide"> 
  <div class="SlideFrame"> 
    <ul class="Slide"> 
      <li class="SlideList SlideList01" style="opacity: 1; z-index: 5;"> 
        <img src="/public/site/img/KvImage.01.jpg" /></li> 
      <li class="SlideList SlideTab SlideList03" style="opacity: 0; z-index: 3;"> 
        <ul class="SlideListTab both"> 
          <li class="SlideTabList active">Изображения</li> 
          <li class="SlideTabList">Видео</li>
<!--
<li class="SlideTabDownLoad"><a href="download/suv/pdf/LUXGEN7 SUV Full Brochure_new.pdf" target="_blank" class="download">Catalog</a></li>
-->

        </ul> 
        <ul class="SlideTabContent">
<!--
圖片展示
-->

          <li class="SlideTabContentList" id="liPhoto" style="left: 0;">
              {section name=images loop=$imgs step=5}
              <ul class="SlideTabUL SlideTabPhotoUL both" rel="{$smarty.section.images.index}">
                  {section name=imge start=$smarty.section.images.index loop=$smarty.section.images.index+5}
                      <li rel="prettyPhoto[iframe]" href="/gallery/id/{$imgs[imge].id}?iframe=true&width=100%25&height=100%25" class="list">
                          <img src="{$imgs[imge].image|replace:'[dir]':'small'}" />
                          <div class="active png">
                              <ul class="Article">
                                  <li class="title">LUXGEN7 SUV</li>
                              </ul>
                          </div>
                      </li>
                  {/section}
              </ul>
              {/section}
            {*<ul class="SlideTabUL SlideTabPhotoUL both">
              <li rel="prettyPhoto[iframe]" href="/gallery/id/5?iframe=true&width=100%25&height=100%25" class="list listL">
                <img src="/public/site/img/upload/20121011184843146.jpg" /> 
                <div class="active png"> 
                  <ul class="Article"> 
                    <li class="title">LUXGEN7 SUV</li> 
                  </ul>
                </div>
              </li>
              <li rel="prettyPhoto[iframe]" href="/gallery/id/6?iframe=true&width=100%25&height=100%25" class="list listL">
                <img src="/public/site/img/upload/20121011184809146.jpg" /> 
                <div class="active png"> 
                  <ul class="Article"> 
                    <li class="title">LUXGEN7 SUV</li> 
                  </ul>
                </div>
              </li> 
              <li rel="prettyPhoto[iframe]" href="/gallery/id/9?iframe=true&width=100%25&height=100%25" class="list">
                <img src="/public/site/img/upload/20121011184736061.jpg" /> 
                <div class="active png"> 
                  <ul class="Article"> 
                    <li class="title">LUXGEN7 SUV</li> 
                  </ul></div></li> 
              <li rel="prettyPhoto[iframe]" href="/gallery/id/10?iframe=true&width=100%25&height=100%25" class="list">
                <img src="/public/site/img/upload/20121011184706792.jpg" /> 
                <div class="active png"> 
                  <ul class="Article"> 
                    <li class="title">LUXGEN7 SUV</li> 
                  </ul></div></li> 
              <li rel="prettyPhoto[iframe]" href="/gallery/id/11?iframe=true&width=100%25&height=100%25" class="list">
                <img src="/public/site/img/upload/20121011184626331.jpg" /> 
                <div class="active png"> 
                  <ul class="Article"> 
                    <li class="title">LUXGEN7 SUV</li> 
                  </ul></div></li> 
            </ul> 
            <ul class="SlideTabUL SlideTabPhotoUL both" style="display: none;"> 
              <li rel="prettyPhoto[iframe]" href="/gallery/id/12?iframe=true&width=100%25&height=100%25" class="list listL">
                <img src="/public/site/img/upload/20121011183611631.jpg" /> 
                <div class="active png"> 
                  <ul class="Article"> 
                    <li class="title">LUXGEN7 SUV</li> 
                  </ul></div></li> 
              <li rel="prettyPhoto[iframe]" href="/gallery/id/13?iframe=true&width=100%25&height=100%25" class="list listL">
                <img src="/public/site/img/upload/20121011183636674.jpg" /> 
                <div class="active png"> 
                  <ul class="Article"> 
                    <li class="title">LUXGEN7 SUV</li> 
                  </ul></div></li> 
              <li rel="prettyPhoto[iframe]" href="/gallery/id/14?iframe=true&width=100%25&height=100%25" class="list">
                <img src="/public/site/img/upload/20121011183216894.jpg" /> 
                <div class="active png"> 
                  <ul class="Article"> 
                    <li class="title">LUXGEN7 SUV</li> 
                  </ul></div></li> 
            </ul> *}
            <div class="JQpaper"></div></li>
<!--
線上影片
-->

          <li class="SlideTabContentList" style="left: -980px;"> 
            <ul class="SlideTabUL SlideTabMediaUL both" id="ulMedia"> 
              <div class="JQpaper"></div>
            </ul></li> 
        </ul></li> 
    </ul></div></div> 
<div class="subNav both"> 
  <ul class="subNavUL"> 
    <li class="NavList NavNum png">Передовые технологии</li> 
    <li class="NavList NavNum png">Внешний вид</li> 
    <li class="NavList NavNum png">Интерьер</li> 
    <li class="NavList NavNum png">Ходовые качества</li> 
    <li class="NavList NavNum png">Качество</li> 
    <li class="NavList NavNum png">Безопасность</li> 
    {*<li class="NavList NavNum png">Цвета и комплектации</li> *}
    <li class="NavList NavSlide png">Галерея</li> 
  </ul></div> 
<div class="mainContent"> 
  <div class="cont Technology"> 
    <ul> 
      <li class="titleFrame both"> 
        <h3 class="title">Передовые технологии</h3><span class="tools"><a class="FB" href="javascript:;">FB</a><a class="print" href="javascript:print();">печать</a></span></li> 
      <li class="videoFrame"> 
        <img src="/public/site/img/technology/technology.image.jpg" /></li> 
      <li class="ContData both"> 
        <ul class="technologyUL both"> 
          <li class="technologyList"> 
            <section class="Section"> 
              <h3 class="title title02">Side View<span class="ENFont">+</span></h3> 
              <p>При включении указателя поворота система контроля слепых зон Side View+ автоматически выводит на дисплей видеоизображение соответствующей зоны для повышения безопасности при смене полосы движения.</p></section> 
            <div youtube="hQ-N5_zjRlM" class="media youtubeMediaList">
              <img src="/public/site/img/technology.01.jpg" /><span class="playMask"></span></div></li> 
          <li class="technologyList technologyCenter"> 
            <section class="Section"> 
              <h3 class="title title02">Eagle View<span class="ENFont">+</span></h3> 
              <p>При движении со скоростью менее 20 км/ч система кругового обзора Eagle View+ выводит на экран изображения объектов, находящихся в радиусе 2 метров от автомобиля. Используя панель контроля THINK+, водитель может вывести полноразмерное изображение, подаваемое одной из четырех камер наблюдения. Помимо этого образы с камер заднего вида могут демонстрироваться с динамическим наложением вспомогательной парковочной разметки.</p></section> 
            <div youtube="DAG4MK76XBU" class="media youtubeMediaList">
              <img src="/public/site/img/technology.02.jpg" /><span class="playMask"></span></div></li> 
          <li class="technologyList"> 
            <section class="Section"> 
              <h3 class="title title03">Night Vision<span class="ENFont">+</span></h3> 
              <p>Система ночного видения Night Vision+ со встроенной высокочувствительной CCD-камерой увеличивает видимость при движении в темноте на 100 метров впереди и 40 метров в поперечной зоне охвата, фиксируя дорожную ситуацию на мониторе в салоне автомобиля.</p></section> 
            <div youtube="eeVKR0Zkp-I" class="media youtubeMediaList">
              <img src="/public/site/img/technology.03.jpg" /><span class="playMask"></span></div></li> 
        </ul> 
        <ul class="technologyUL both"> 
          <li class="technologyList"> 
            <section class="Section"> 
              <h3 class="title title04">LDWS<span class="ENFont">+</span></h3> 
              <p>Система распознавания дорожной разметки LDWS+ автоматически активизируется на скорости выше 60 км/ч и сканирует дорогу перед автомобилем, определяя местонахождение разделительных полос. Системы визуального и аудио оповещения включаются в случае значительного приближения к разделительным полосам без включения поворотных сигналов. </p></section> 
            <div youtube="AIoWX1cQEZg" class="media youtubeMediaList">
              <img src="/public/site/img/technology.04.jpg" /><span class="playMask"></span></div></li>
<!--
<li class="technologyList"><section class="Section"><h4>EPB</h4><p>LUXGEN7 SUV is equipped with the four-mode EPB system developed by KÜSTER in Germany, which in turn significantly improves safety as compared to traditional parking brakes. The EPB system is capable of inserting a maximum braking force of 1,320N with just a push of a button. </p></section><section class="Section"><h4>Auto Park</h4><p>The EPB will automatically engage after the ignition has been switched off.</p></section><section class="Section"><h4>Take Off Assistant</h4><p>The EPB automatically disengages when the driver steps on the throttle to prevent the vehicle from rolling backwards when driving up a slope from standstill.</p></section><section class="Section"><h4>Dynamic Braking</h4><p>The EPB will automatically insert the maximum braking force possible without locking up the wheels to safety stop a vehicle in an emergency.</p></section><section class="Section"><h4>Child Protection Function</h4><p>The EPB will only disengage when the brake pedal has been depressed to prevent accidental release of the parking brakes.</p></section><div class="media youtubeMediaList"><img src="/public/site/img/technology.05.jpg" /><div class="youtubeMedia"></div></div></li>
-->
        </ul></li> 
    </ul></div> 
  <div class="cont Exterior"> 
    <ul> 
      <li class="titleFrame both"> 
        <h3 class="title">Внешний вид</h3></li> 
      <li youtube="IMrR0ArWuyc" class="videoFrame youtubeMediaList">
        <img src="/public/site/img/exterior.image.jpg" /><span class="playMask"></span></li> 
      <li class="ContData"> 
        <ul class="both"> 
          <li rel="prettyPhoto[iframe]" href="/gallery/id/15?iframe=true&width=100%25&height=100%25" class="photoList photoLeft">
            <img src="/public/site/img/exterior.01.jpg" /> 
            <div class="infoFrame" style="display: none;"> 
              <ul class="infoUL">
<!--
li class="info">17” 渦輪葉片鋁合金輪圈</li
-->
                <li class="data">Боковые зеркала с электроприводом и светодиодными указателями поворотов</li>
              </ul></div></li> 
          <li rel="prettyPhoto[iframe]" href="/gallery/id/16?iframe=true&width=100%25&height=100%25" class="photoList photoLeft photoRight">
            <img src="/public/site/img/exterior.02.jpg" /> 
            <div class="infoFrame" style="display: none;"> 
              <ul class="infoUL">
<!--
li class="info">鷹眼前衛式頭燈</li
-->
                <li class="data">Ксеноновые фары</li> 
              </ul></div></li> 
          <li rel="prettyPhoto[iframe]" href="/gallery/id/17?iframe=true&width=100%25&height=100%25" class="photoList photoLeft" style="width: 326px;">
            <img src="/public/site/img/exterior.03.jpg" /> 
            <div class="infoFrame" style="display: none;"> 
              <ul class="infoUL">
<!--
li class="info">航太動力學LED尾燈</li
-->
                <li class="data">Светодиодные указатели поворотов</li> 
              </ul></div></li> 
          <li rel="prettyPhoto[iframe]" href="/gallery/id/18?iframe=true&width=100%25&height=100%25" class="photoList photoLeft photoCenter" style="width: 326px;">
            <img src="/public/site/img/exterior.04.jpg" /> 
            <div class="infoFrame" style="display: none;"> 
              <ul class="infoUL">
<!--
li class="info">銀箭型方向燈</li
-->
                <li class="data">Крышка багажного отделения с электроприводом</li> 
              </ul></div></li> 
          <li rel="prettyPhoto[iframe]" href="/gallery/id/19?iframe=true&width=100%25&height=100%25" class="photoList photoLeft" style="width: 326px;">
            <img src="/public/site/img/exterior.05.jpg" /> 
            <div class="infoFrame" style="display: none;"> 
              <ul class="infoUL">
<!--
li class="info">銀箭型方向燈</li
-->
                <li class="data">Люк с электроприводом</li> 
              </ul></div></li> 
        </ul></li> 
    </ul></div> 
  <div class="cont Interior"> 
    <ul> 
      <li class="titleFrame both"> 
        <h3 class="title">Интерьер</h3><span class="tools"><a class="FB" href="javascript:;">FB</a><a class="print" href="javascript:print();">print</a></span></li> 
      <li class="videoFrame"> 
        <img src="/public/site/img/interior.image.jpg" /> 
        <ul class="videoFramebox"> 
          <li><span rel="prettyPhoto[iframe]" href="http://youtu.be/riopHimIIVE?iframe=true&width=100%&height=100%" class="mediaHref">Информационно-развлекательные системы</span></li>
          <li><span rel="prettyPhoto[iframe]" href="http://youtu.be/N6KKIctsLHI?iframe=true&width=100%&height=100%" class="mediaHref">Уникальное противоугонное сидение</span></li>
        </ul></li> 
      <li class="ContData both"> 
        <div id="contentFlow" class="ContentFlow"> 
          <div style="display: none;" class="loadIndicator"> 
            <div class="indicator">&nbsp;</div></div> 
          <div style="visibility: visible; height: 471px; margin-bottom: -110.667px;" class="flow"> 
            <div href="/gallery/id/20?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_01_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Интеллектуальный ключ доступа i-Key+</h4> 
                <p>Система интеллектуального ключа i-Key+ позволяет запирать и отпирать замки дверей и дверь багажного отделения, а также включать и выключать зажигание, не доставая ключ из сумочки или кармана</p></section></div> 
            <div href="/gallery/id/21?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_02_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Кнопка пуска и остановки двигателя</h4> 
                <p>Нажмите педаль тормоза и удерживайте кнопку «Engine Start» для запуска двигателя.</p></section></div> 
            <div href="/gallery/id/22?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_03_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Динамик в боковой части спинки сиденья водителя</h4> 
                <p>В спинке сидения водителя на уровне плеча установлен дополнительный динамик, благодаря которому становится возможным воспроизведение голосовых инструкции системы LUXGEN THINK+ без прерывания звука основной аудиосистемы.</p></section></div> 
            <div href="/gallery/id/23?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_04_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>USB-разъем в передних сиденьях/Разъем AUX-In/Разъем AV-In/Электрические розетки</h4> 
                <p>Электророзетки с напряжением 110/220 В переменного тока и 12 В постоянного тока для питания дополнительных внешних электронных устройств мощностью до 100 Вт.</p></section></div> 
            <div href="/gallery/id/24?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_05_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Светодиодные лампы для чтения над передними сиденьями, многофункциональное вещевое отделение</h4> 
                <p>&nbsp;</p></section></div> 
            <div href="/gallery/id/25?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_06_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Вентиляционные решетки системы кондиционирования для пассажиров заднего сидения</h4> 
                <p>&nbsp;</p></section></div> 
            <div href="/gallery/id/26?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_07_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Ручки дверей с отделкой высококачественной кожей</h4> 
                <p>&nbsp;</p></section></div> 
            <div href="/gallery/id/27?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_08_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Система климат-контроля с цифровым управлением</h4> 
                <p>&nbsp;</p></section></div> 
            <div href="/gallery/id/28?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_09_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Высококонтрастная комбинация приборов, выполненная в аэрокосмическом стиле</h4> 
                <p>&nbsp;</p></section></div> 
            <div href="/gallery/id/29?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_10_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Интеллектуальные сиденья с функцией защиты от кражи</h4> 
                <p>&nbsp;</p></section></div> 
            <div href="/gallery/id/30?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_11_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Кнопка «PTG ON» управления электроприводом двери багажного отделения</h4> 
                <p>&nbsp;</p></section></div> 
            <div href="/gallery/id/31?iframe=true&width=100%&height=100%" rel="prettyPhoto[iframe]" class="item">
              <img src="/public/site/img/cars/suv/interior/suv_12_s.jpg" class="content" /> 
              <section class="caption"> 
                <h4>Сиденье водителя с электрическим приводом и функцией памяти</h4> 
                <p>Сиденье водителя может регулироваться по восьми параметрам. Оно оснащается двумя блоками памяти, регулируемой пневматической поясничной поддержкой, функцией массажа, а также функциями обогрева и вентиляции.</p></section></div></div> 
          <div class="globalCaption"> 
            <section class="caption"> 
              <h4>Ручки дверей с отделкой высококачественной кожей</h4> 
              <p>&nbsp;</p></section></div> 
          <div style="margin-bottom: 3px; visibility: visible;" class="scrollbar"> 
            <div style="left: 249.273px; top: 0;" class="slider"> 
              <div style="width: 0; left: 18px;" class="position">7</div></div></div> 
          <div class="mouseoverCheckElement">&nbsp;</div></div></li> 
    </ul></div> 
  <div class="cont Power"> 
    <ul> 
      <li class="titleFrame both"> 
        <h3 class="title">Ходовые качества</h3><span class="tools"><a class="FB" href="javascript:;">FB</a><a class="print" href="javascript:print();">print</a></span></li> 
      <li class="ContData"> 
        <div class="ConSlides"> 
          <ul class="ConSlidesUL" style="overflow: hidden; position: relative; display: block;">
<!--
ConSlidesList 01
-->

            <li class="ConSlidesList ConSlidesList01"> 
              <h5 class="title">Ходовые качества</h5> 
              <ul class="ConSlidesInfoFrame both"> 
                <li class="ConSlidesInfo"> 
                  <section class="Section"> 
                    <h4>Двигатель MEFI TURBO 2.2</h4> 
                    <p>2,2-литровый двигатель с турбонаддувом развивает номинальную мощность 175 л.с. и максимальный крутящий момент 275 Нм, с легкостью демонстрируя возможности, характерные для трехлитровых атмосферных силовых агрегатов. Новый мотор с корпусными деталями из алюминиевого сплава весит всего 135 кг, что примерно на 13 % меньше, чем у двигателей с близким рабочим объемом. Облегченная, высокопрочная конструкция силового агрегата, отличающаяся быстрым отводом тепла, разработана в соответствии с последними тенденциями моторостроения. <span rel="prettyPhoto[iframe]" href="http://youtu.be/z_eKBDu_j_w?iframe=true&width=100%&height=100%" class="mediaHref mediaHrefBK">Производительность двигателя</span></p></section></li>
              </ul></li> 
            <li class="ConSlidesList ConSlidesList02"> 
              <h5 class="title">Ходовые качества</h5> 
              <ul class="ConSlidesInfoFrame both"> 
                <li class="ConSlidesInfo"> 
                  <section class="Section"> 
                    <h4>Турбонагнетатель Garrett</h4> 
                    <p>Компания Garrett, крупнейший поставщик турбин автомобильных двигателей и признанный эксперт в своей области, разработала турбонагнетатель специально для использования в автомобилях марки LUXGEN. В результате точной настройки и высокого качества продукции Garrett двигатель LUXGEN MEFI TURBO 2.2 способен развивать максимальный крутящий момент 275 Нм в диапазоне 2500–4000 об/мин.</p></section></li> 
                <li class="ConSlidesMedia"><span class="spanMedia"></span> 
                  <img src="/public/site/img/cars/suv/power.02.jpg" /></li> 
              </ul></li> 
            <li class="ConSlidesList ConSlidesList04"> 
              <h5 class="title">Ходовые качества</h5> 
              <ul class="ConSlidesInfoFrame both"> 
                <li class="ConSlidesInfo"> 
                  <section class="Section"> 
                    <h4>Пятиступенчатая адаптивная автоматическая трансмиссия</h4> 
                    <p>В интеллектуальном электронном блоке управления коробкой передач предусмотрено 10 режимов; блок непрерывно следит за выбранной передачей, оборотами двигателя, скоростью движения автомобиля и сигналами, получаемыми от системы стабилизации, для определения наиболее благоприятного момента переключения передач. Дополнительные шесть самонастраивающихся режимов автоматически адаптируются к индивидуальному стилю вождения и программируются, оптимизируя алгоритм переключения. <span rel="prettyPhoto[iframe]" href="http://youtu.be/6rz0D-9j8mc?iframe=true&width=100%&height=100%" class="mediaHref">Трансмиссия</span></p></section></li>
                <li class="ConSlidesMedia"><span class="spanMedia"></span> 
                  <img src="/public/site/img/cars/suv/power.04.jpg" /></li> 
              </ul></li> 
            <li class="ConSlidesList ConSlidesList05"> 
              <h5 class="title">Ходовые качества</h5> 
              <ul class="ConSlidesInfoFrame both"> 
                <li class="ConSlidesInfo"> 
                  <section class="Section"> 
                    <h4>Настройка шасси в европейском стиле</h4> 
                    <p>Шасси кроссовера LUXGEN7 разработано при содействии двух общепризнанных экспертов в данной области - компаний Magna и Prodrive. Благодаря их усилиям в кроссовере LUXGEN7 удалось добиться гармоничного сочетания безопасности, компактности, по-европейски отточенной управляемости и высокого уровня комфорта. <span rel="prettyPhoto[iframe]" href="http://youtu.be/F2Z7b8AsoDQ?iframe=true&width=100%&height=100%" class="mediaHref mediaHrefBK">Система шасси</span></p></section></li>
              </ul></li> 
            <li class="ConSlidesList ConSlidesList06"> 
              <h5 class="title">Ходовые качества</h5> 
              <ul class="ConSlidesInfoFrame both"> 
                <li class="ConSlidesInfo"> 
                  <section class="Section"> 
                    <h4>Интеллектуальная система полного привода с тремя режимами</h4> 
                    <p>Кроссовер LUXGEN7 оснащается активной муфтой, способной мгновенно изменять соотношение крутящего момента для получения оптимального распределения между передней и задней осями. Интеллектуальная система полного привода позволяет переключаться между тремя режимами работы:передний привод, режим автоматического подключения полного привода, режим полного привода с межосевой блокировкой. Автомобиль также оснащается антиблокировочной системой (ABS), электронным распределением тормозного усилия (EBD), противобуксовочной системой (TCS) и электронным контролем курсовой устойчивости (ESC) для снижения вероятности заносов и потери сцепления колес с дорогой. <span rel="prettyPhoto[iframe]" href="http://youtu.be/flgs7V14dwA?iframe=true&width=100%&height=100%" class="mediaHref">SUV 4WD</span></p></section></li>
              </ul></li>
<!--
ConSlidesList 02
-->
<!--
ConSlidesList 03
-->
<!--
<li class="ConSlidesList ConSlidesList03"><h5 class="title">Performance</h5><ul class="ConSlidesInfoFrame both"><li class="ConSlidesInfo"><section class="Section"><h4>NVH極靜音工程 來自頂級造車工藝</h4><p>LUXGEN全新導入引擎新科技，以「塑化對稱進氣歧管」及「塑化平衡軸齒輪」提升引擎運轉時靜肅性</p></section></li></ul></li>
-->
<!--
ConSlidesList 04
-->
<!--
ConSlidesList 05
-->
<!--
ConSlidesList 06
-->

          </ul> 
          <ul class="ConSlidesBtn"> 
            <li class="prev">пред</li> 
            <li class="next">след</li> 
          </ul></div></li> 
    </ul></div> 
  <div class="cont Quality"> 
    <ul> 
      <li class="titleFrame both"> 
        <h3 class="title">Качество</h3><span class="tools"><a class="FB" href="javascript:;">FB</a><a class="print" href="javascript:print();">print</a></span></li> 
      <li youtube="KcRAJk7aT_s" class="videoFrame youtubeMediaList">
        <img src="/public/site/img/quality.image.jpg" /><span class="playMask"></span></li> 
      <li class="ContData both"> 
        <ul class="qualityUL both"> 
          <li class="qualityList"> 
            <section class="Section"> 
              <h4></h4> 
              <p>Низкотемпературные ходовые испытания проходили в условиях сверхнизких температур в северных районах Китая.</p></section> 
            <div class="media"> 
              <img src="/public/site/img/quality.01.jpg" /></div></li> 
          <li class="qualityList qualityListCenter"> 
            <section class="Section"> 
              <h4></h4> 
              <p>Проводились испытания и в условиях высокогорья на высотах <span class="HL">5500–6000</span> м над уровнем моря (на горе Куньлунь).</p></section>
            <div class="media"> 
              <img src="/public/site/img/quality.02.jpg" /></div></li> 
          <li class="qualityList"> 
            <section class="Section"> 
              <h4></h4> 
              <p>Высокотемпературные испытания, а также тесты на воздействие пыли (песка) проходили в условиях жаркого климата Турфана, Китай <span class="HL">(47 ℃)</span>.</p></section> 
            <div class="media"> 
              <img src="/public/site/img/quality.03.jpg" /></div></li> 
        </ul></li> 
    </ul></div> 
  <div class="cont Safety"> 
    <ul> 
      <li class="titleFrame both"> 
        <h3 class="title">Безопасность</h3><span class="tools"><a class="FB" href="javascript:;">FB</a><a class="print" href="javascript:print();">print</a></span></li> 
      <li class="ContData"> 
        <div class="ConSlides"> 
          <ul class="ConSlidesUL">
<!--
ConSlidesList 01
-->

            <li class="ConSlidesList ConSlidesList01"> 
              <h5 class="title">Безопасность</h5> 
              <ul class="ConSlidesInfoFrame both"> 
                <li class="ConSlidesInfo"> 
                  <section class="Section"> 
                    <h4>Фирменная система безопасности HRSS</h4> 
                    <p>Благодаря особо жесткой структуре кузова HRSS (High Rigidity Safety Structure) каркас LUXGEN7 SUV способен эффективно отводить энергию удара от салона автомобиля, повышая тем самым уровень безопасности пассажиров. <span rel="prettyPhoto[iframe]" href="http://youtu.be/n5BQu1dzHcM?iframe=true&width=100%&height=100%" class="mediaHref mediaHrefBK">Безопасность</span></p></section></li>
              </ul></li> 
            <li class="ConSlidesList ConSlidesList02"> 
              <h5 class="title">Безопасность</h5> 
              <ul class="ConSlidesInfoFrame both"> 
                <li class="ConSlidesInfo"> 
                  <section class="Section"> 
                    <h4>6 подушек безопасности</h4> 
                    <p>Помимо обычных двухстадийных подушек безопасности для переднего пассажира и водителя, в некоторых модификациях устанавливаются двухстадийные боковые подушки и надувные шторки для наиболее полной и эффективной защиты в салоне автомобиля.</p></section></li> 
              </ul></li> 
            <li class="ConSlidesList ConSlidesList03"> 
              <h5 class="title">Безопасность</h5> 
              <ul class="ConSlidesInfoFrame both"> 
                <li class="ConSlidesInfo"> 
                  <section class="Section"> 
                    <h4>Система BOS+</h4> 
                    <p>При одновременном получении сигналов от педалей газа и тормоза система BOS+ снижает мощность двигателя для повышения эффективности замедления движения.</p></section> 
                  <section class="Section"> 
                    <h4>Противобуксовочная система (TSC)</h4> 
                    <p>Система TCS повышает устойчивость автомобиля при разгоне и на поворотах.</p></section> 
                  <section class="Section"> 
                    <h4>Система помощи при экстренном торможении (BAS)</h4> 
                    <p>В случае экстренного торможения система BAS обеспечивает максимальное замедление работы двигателя для сохранения тормозного пути. </p></section></li> 
              </ul></li> 
            <li class="ConSlidesList ConSlidesList04"> 
              <h5 class="title">Безопасность</h5> 
              <ul class="ConSlidesInfoFrame both"> 
                <li class="ConSlidesInfo"> 
                  <ul class="both"> 
                    <li class="ConSlidesInfoList"> 
                      <section class="Section"> 
                        <h4>Антиблокировочная система (ABS)</h4> 
                        <p>Антиблокировочная система предотвращает блокировку колес, сохраняя управляемость автомобиля при экстренном торможении.</p></section><span class="media"> 
                        <img src="/public/site/img/cars/suv/safety.03.1.jpg" /></span></li> 
                    <li class="ConSlidesInfoList"> 
                      <section class="Section"> 
                        <h4>Электронная система распределения тормозного усилия (EBD)</h4> 
                        <p>Используя данные, получаемые от датчиков скорости вращения колес системы ABS, электронная система EBD измеряет разницу скорости вращения передних и задних колес и перераспределяет тормозные усилия между ними.</p></section><span class="media"> 
                        <img src="/public/site/img/cars/suv/safety.03.2.jpg" /></span></li> 
                    <li class="ConSlidesInfoList"> 
                      <section class="Section"> 
                        <h4>Электронная система курсовой устойчивости (ESC)</h4> 
                        <p>Электронная система стабилизации ESC уменьшает вероятность недостаточного или избыточного поворота.</p></section><span class="media"> 
                        <img src="/public/site/img/cars/suv/safety_suv.jpg" /></span></li> 
                  </ul></li> 
              </ul></li>
<!--
ConSlidesList 02
-->
<!--
ConSlidesList 03
-->
<!--
ConSlidesList 04
-->

          </ul> 
          <ul class="ConSlidesBtn"> 
            <li class="prev">пред</li> 
            <li class="next">след</li> 
          </ul></div></li> 
    </ul></div> 
  <div class="cont CarStyle">
        {*<ul>
          <li class="titleFrame both">
            <h3 class="title">Цвета и комплектации</h3><span class="tools"><a class="FB" href="javascript:;">FB</a><a class="print" href="javascript:print();">print</a></span></li>
          <li class="ContData">
            <ul>
              <li class="media">

                <object width="980" height="551" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">

                <param name="movie" value="/public/site/swf/colors.swf" />

                <param name="quality" value="high" />

                <param name="menu" value="false" />

                <param name="wmode" value="transparent" />

                <param name="play" value="true" />

                <param name="loop" value="true" />

                <param name="scale" value="noborder" />

                <param name="devicefont" value="false" />

                <param name="salign" value="" />

                <param name="allowScriptAccess" value="sameDomain" />

                <param name="flashVars" value="model=suv" /><embed src="/public/site/swf/colors.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" quality="high" menu="false" wmode="transparent" play="true" loop="true" scale="noborder" devicefont="false" allowscriptaccess="sameDomain" flashvars="model=suv" height="551" width="980"></object>
              </li>
              <li class="carOther">
                <ul>
                  <li class="CarColor">
                    <ul>
                      <li>Интерьер</li>
                      <li class="list both"><span rel="prettyPhoto[iframe]" href="http://www.luxgen-motor.com/colorbox/suv/ColorBox01.html?iframe=true&width=100%&height=100%" class="image">
                          <img src="/public/site/img/cars/suv/interior/black_s.jpg" /></span><span rel="prettyPhoto[iframe]" href="http://www.luxgen-motor.com/colorbox/suv/ColorBox02.html?iframe=true&width=100%&height=100%" class="image">
                          <img src="/public/site/img/cars/suv/interior/yellow_s.jpg" /></span></li>
                    </ul></li>
    <!--
    <li class="outfit"><a href="download/suv/table/table.zip">Specs</a></li>
    -->
    <!--
    <li class="outfit"><a href="download/suv/pdf/LUXGEN7_SUV.pdf" target="_blank">Brochure</a></li>
    -->

                </ul></li>
            </ul></li>
        </ul>*}
    </div>

  <div id="topBtn" class="topBtn" style="display: none;">
      <span> </span>
  </div>