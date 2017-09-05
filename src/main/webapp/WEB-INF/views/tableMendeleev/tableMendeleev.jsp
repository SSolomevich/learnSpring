<%--
  Created by IntelliJ IDEA.
  User: 15
  Date: 28.08.2017
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            /* width: 80%;  Ширина таблицы */
            color: black; /* Цвет текста */
            border-spacing: 0; /* Расстояние между ячейками */
            border-collapse: collapse; /* Убираем двойные границы между ячейками */
            background: white; /* Цвет фона таблицы */
            border: 1px solid white; /* Рамка вокруг таблицы */
        }
        th {
            background: white; /* Цвет фона ячеек */
            padding: 0; /* Поля вокруг текста */
            border: 1px solid black;
            font-size: 24pt;
        }
        td {
            width: 3em;
            padding: 0; /* Поля вокруг текста */
            border: 1px solid black;
            text-align: center;
            font-size: 16pt;
        }

        button {
            display: inline-block;
            width: 5em;
            height: 5em;
            line-height: 2em;
            vertical-align: middle;

            user-select: none;
            color: rgb(0,0,0);
            outline: none;
            border: 1px solid rgba(0,0,0,.4);
            border-top-color: rgba(0,0,0,.3);
            border-radius: 2px;
            background: linear-gradient(rgb(255,255,255), rgb(240,240,240));
            box-shadow:
                    0 0 3px rgba(0,0,0,0) inset,
                    0 1px 1px 1px rgba(255,255,255,.2),
                    0 -1px 1px 1px rgba(0,0,0,0);
            transition: .2s ease-in-out;
        }
        button:hover:not(:active) {
            box-shadow:
                    0 0 3px rgba(0,0,0,0) inset,
                    0 1px 1px 1px rgba(0,255,255,.5),
                    0 -1px 1px 1px rgba(0,255,255,.5);
        }
        button:active {
            background: linear-gradient(rgb(250,250,250), rgb(235,235,235));
            box-shadow:
                    0 0 3px rgba(0,0,0,.5) inset,
                    0 1px 1px 1px rgba(255,255,255,.4),
                    0 -1px 1px 1px rgba(0,0,0,.1);
        }

        p {

        }
        p.one {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-weight: normal;
            font-size: 9pt;
            text-align: left;
            line-height: 50%;
            margin-top: 0.2em; /* Отступ сверху */
            margin-bottom: 0.1em; /* Отступ снизу */
            margin-left: -0.4em;
        }
        p.two {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-weight: 900;
            font-size: 20pt;;
            text-align: right;
            line-height: 50%;
            margin-top: 0.1em; /* Отступ сверху */
            margin-bottom: 0.4em; /* Отступ снизу */
            margin-right: -0.2em;
        }
        p.three {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-weight: normal;
            font-size: 8pt;
            text-align: right;
            line-height: 80%;
            margin-top: 0.2em; /* Отступ сверху */
            margin-bottom: 0.3em; /* Отступ снизу */
            margin-right: -0.2em;
        }
        p.f {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-weight: 900;
            font-size: 12pt;;
            text-align: center;
            line-height: 50%;
            margin-top: 0.1em; /* Отступ сверху */
            margin-bottom: 0.1em; /* Отступ снизу */
            /*margin-right: -0.2em;*/
        }
        td.white{
            /*border-color: white black;*/
            border-style: none;
            border-bottom-color: white;
            border-left-color: white;
            border-top-color: white;
        }
    </style>
</head>
<body>
<form:form  action="elementDescription" name="Li">
<table >
    <tr><th colspan="18">Группы</th></tr>
    <tr><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td bordercolor="white">12</td><td bordercolor="white">13</td><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td></tr>

    <tr>
        <td><button type="submit" name="atomicN" value="1"><p class="one">1</p><p class="two">H</p><p class="three">Водород</p><p class="three">1,00794</p></button></td>
        <td colspan="16" class="white"></td>
        <td><button type="submit" name="atomicN" value="2"><p class="one">2</p><p class="two">He</p><p class="three">Гелий</p><p class="three">4,00260</p></button></td>
    </tr>

    <tr>
        <td><button type="submit" name="atomicN" value="3"><p class="one">3</p><p class="two">Li</p><p class="three">Литий</p><p class="three">6,941</p> </button></td>
        <td><button type="submit" name="atomicN" value="4"><p class="one">4</p><p class="two">Be</p><p class="three">Бериллий</p><p class="three">9.01218</p></button></td>
        <td colspan="10" class="white" bgcolor="white"></td>
        <td><button type="submit" name="atomicN" value="5"><p class="one">5</p><p class="two">B</p><p class="three">Бор</p><p class="three">10.811</p></button></td>
        <td><button type="submit" name="atomicN" value="6"><p class="one">6</p><p class="two">С</p><p class="three">Углерод</p><p class="three">12.011</p></button></td>
        <td><button type="submit" name="atomicN" value="7"><p class="one">7</p><p class="two">N</p><p class="three">Азот</p><p class="three">14.0067</p></button></td>
        <td><button type="submit" name="atomicN" value="8"><p class="one">8</p><p class="two">О</p><p class="three">Кислород</p><p class="three">15.9994</p></button></td>
        <td><button type="submit" name="atomicN" value="9"><p class="one">9</p><p class="two">F</p><p class="three">Фтор</p><p class="three">18.998403</p></button></td>
        <td><button type="submit" name="atomicN" value="10"><p class="one">10</p><p class="two">Ne</p><p class="three">Неон</p><p class="three">20.179</p></button></td>
    </tr>

    <tr>
        <td><button type="submit" name="atomicN" value="11"><p class="one">11</p><p class="two">Na</p><p class="three">Натрий</p><p class="three">22.98977</p></button></td>
        <td><button type="submit" name="atomicN" value="12"><p class="one">12</p><p class="two">Mg</p><p class="three">Магний</p><p class="three">24.305</p></button></td></td>
        <td colspan="10" class="white" ></td>
        <td><button type="submit" name="atomicN" value="13"><p class="one">13</p><p class="two">Al</p><p class="three">Алюминий</p><p class="three">26.98154</p></button></td>
        <td><button type="submit" name="atomicN" value="14"><p class="one">14</p><p class="two">Si</p><p class="three">Кремний</p><p class="three">28.0855</p></button></td>
        <td><button type="submit" name="atomicN" value="15"><p class="one">15</p><p class="two">P</p><p class="three">Фосфор</p><p class="three">30.97376</p></button></td>
        <td><button type="submit" name="atomicN" value="16"><p class="one">16</p><p class="two">S</p><p class="three">Сера</p><p class="three">32.066</p></button></td>
        <td><button type="submit" name="atomicN" value="17"><p class="one">17</p><p class="two">Cl</p><p class="three">Хлор</p><p class="three">35.453</p></button></td>
        <td><button type="submit" name="atomicN" value="18"><p class="one">18</p><p class="two">Ar</p><p class="three">Аргон</p><p class="three">39.948</p></button></td>
    </tr>

    <tr>
        <td><button type="submit" name="atomicN" value="19"><p class="one">19</p><p class="two">K</p><p class="three">Калий</p><p class="three">39.0983</p></button></td>
        <td><button type="submit" name="atomicN" value="20"><p class="one">20</p><p class="two">Са</p><p class="three">Кальций</p><p class="three">40.078</p></button></td>
        <td><button type="submit" name="atomicN" value="21"><p class="one">21</p><p class="two">Sc</p><p class="three">Скандий</p><p class="three">44.95591</p></button></td>
        <td><button type="submit" name="atomicN" value="22"><p class="one">22</p><p class="two">Ti</p><p class="three">Титан</p><p class="three">47.88</p></button></td>
        <td><button type="submit" name="atomicN" value="23"><p class="one">23</p><p class="two">V</p><p class="three">Ванадий</p><p class="three">50.9415</p></button></td>
        <td><button type="submit" name="atomicN" value="24"><p class="one">24</p><p class="two">Cr</p><p class="three">Хром</p><p class="three">51.9961</p></button></td>
        <td><button type="submit" name="atomicN" value="25"><p class="one">25</p><p class="two">Mn</p><p class="three">Марганец</p><p class="three">54.9380</p></button></td>
        <td><button type="submit" name="atomicN" value="26"><p class="one">26</p><p class="two">Fe</p><p class="three">Железо</p><p class="three">55.847</p></button></td>
        <td><button type="submit" name="atomicN" value="27"><p class="one">27</p><p class="two">Co</p><p class="three">Кобальт</p><p class="three">58.9332</p></button></td>
        <td><button type="submit" name="atomicN" value="28"><p class="one">28</p><p class="two">Ni</p><p class="three">Никель</p><p class="three">58.69</p></button></td>
        <td><button type="submit" name="atomicN" value="29"><p class="one">29</p><p class="two">Cu</p><p class="three">Медь</p><p class="three">63.546</p></button></td>
        <td><button type="submit" name="atomicN" value="30"><p class="one">30</p><p class="two">Zn</p><p class="three">Цинк</p><p class="three">65.39</p></button></td>
        <td><button type="submit" name="atomicN" value="31"><p class="one">31</p><p class="two">Ga</p><p class="three">Галий</p><p class="three">69.723</p></button></td>
        <td><button type="submit" name="atomicN" value="32"><p class="one">32</p><p class="two">Ge</p><p class="three">Германий</p><p class="three">72.59</p></button></td>
        <td><button type="submit" name="atomicN" value="33"><p class="one">33</p><p class="two">As</p><p class="three">Мышьяк</p><p class="three">74.9216</p></button></td>
        <td><button type="submit" name="atomicN" value="34"><p class="one">34</p><p class="two">Se</p><p class="three">Селен</p><p class="three">78.96</p></button></td>
        <td><button type="submit" name="atomicN" value="35"><p class="one">35</p><p class="two">Br</p><p class="three">Бром</p><p class="three">79.904</p></button></td>
        <td><button type="submit" name="atomicN" value="36"><p class="one">36</p><p class="two">Kr</p><p class="three">Криптон</p><p class="three">83.80</p></button></td>
    </tr>

    <tr>
        <td><button type="submit" name="atomicN" value="37"><p class="one">37</p><p class="two">Rb</p><p class="three">Рубидий</p><p class="three">85.47</p></button></td>
        <td><button type="submit" name="atomicN" value="38"><p class="one">38</p><p class="two">Sr</p><p class="three">Стронций</p><p class="three">87.62</p></button></td>
        <td><button type="submit" name="atomicN" value="39"><p class="one">39</p><p class="two">Y</p><p class="three">Иттрий</p><p class="three">88.9059</p></button></td>
        <td><button type="submit" name="atomicN" value="40"><p class="one">40</p><p class="two">Zr</p><p class="three">Цирконий</p><p class="three">91.224</p></button></td>
        <td><button type="submit" name="atomicN" value="41"><p class="one">41</p><p class="two">Nb</p><p class="three">Ниобий</p><p class="three">92.9064</p></button></td>
        <td><button type="submit" name="atomicN" value="42"><p class="one">42</p><p class="two">Mo</p><p class="three">Молибден</p><p class="three">95.94</p></button></td>
        <td><button type="submit" name="atomicN" value="43"><p class="one">43</p><p class="two">Tc</p><p class="three">Технеций</p><p class="three">97.9072</p></button></td>
        <td><button type="submit" name="atomicN" value="44"><p class="one">44</p><p class="two">Ru</p><p class="three">Рутений</p><p class="three">101.07</p></button></td>
        <td><button type="submit" name="atomicN" value="45"><p class="one">45</p><p class="two">Rh</p><p class="three">Родий</p><p class="three">102.9055</p></button></td>
        <td><button type="submit" name="atomicN" value="46"><p class="one">46</p><p class="two">Pd</p><p class="three">Палладий</p><p class="three">106.42</p></button></td>
        <td><button type="submit" name="atomicN" value="47"><p class="one">47</p><p class="two">Ag</p><p class="three">Серебро</p><p class="three">107.8682</p></button></td>
        <td><button type="submit" name="atomicN" value="48"><p class="one">48</p><p class="two">Cd</p><p class="three">Кадмий</p><p class="three">112.41</p></button></td>
        <td><button type="submit" name="atomicN" value="49"><p class="one">49</p><p class="two">In</p><p class="three">Индий</p><p class="three">114.82</p></button></td>
        <td><button type="submit" name="atomicN" value="50"><p class="one">50</p><p class="two">Sn</p><p class="three">Олово</p><p class="three">118.710</p></button></td>
        <td><button type="submit" name="atomicN" value="51"><p class="one">51</p><p class="two">Sb</p><p class="three">Сурьма</p><p class="three">121.7</p></button></td>
        <td><button type="submit" name="atomicN" value="52"><p class="one">52</p><p class="two">Te</p><p class="three">Теллур</p><p class="three">127.6</p></button></td>
        <td><button type="submit" name="atomicN" value="53"><p class="one">53</p><p class="two">I</p><p class="three">Иод</p><p class="three">126.9045</p></button></td>
        <td><button type="submit" name="atomicN" value="54"><p class="one">54</p><p class="two">Xe</p><p class="three">Ксенон</p><p class="three">131.29</p></button></td>
    </tr>

    <tr>
        <td><button type="submit" name="atomicN" value="55"><p class="one">55</p><p class="two">Cs</p><p class="three">Цезий</p><p class="three">132.9054</p></button></td>
        <td><button type="submit" name="atomicN" value="56"><p class="one">56</p><p class="two">Ba</p><p class="three">Барий</p><p class="three">137.33</p></button></td>
        <td><p class="f">57-71</p></td>
        <td><button type="submit" name="atomicN" value="72"><p class="one">72</p><p class="two">Hf</p><p class="three">Гафний</p><p class="three">178.49</p></button></td>
        <td><button type="submit" name="atomicN" value="73"><p class="one">73</p><p class="two">Ta</p><p class="three">Тантал</p><p class="three">180.9479</p></button></td>
        <td><button type="submit" name="atomicN" value="74"><p class="one">74</p><p class="two">W</p><p class="three">Вольфрам</p><p class="three">183.85</p></button></td>
        <td><button type="submit" name="atomicN" value="75"><p class="one">75</p><p class="two">Re</p><p class="three">Рений</p><p class="three">186.207</p></button></td>
        <td><button type="submit" name="atomicN" value="76"><p class="one">76</p><p class="two">Os</p><p class="three">Осмий</p><p class="three">190.2</p></button></td>
        <td><button type="submit" name="atomicN" value="77"><p class="one">77</p><p class="two">Ir</p><p class="three">Иридий</p><p class="three">192.22</p></button></td>
        <td><button type="submit" name="atomicN" value="78"><p class="one">78</p><p class="two">Pt</p><p class="three">Платина</p><p class="three">195.08</p></button></td>
        <td><button type="submit" name="atomicN" value="79"><p class="one">79</p><p class="two">Au</p><p class="three">Золото</p><p class="three">196.9665</p></button></td>
        <td><button type="submit" name="atomicN" value="80"><p class="one">80</p><p class="two">Hg</p><p class="three">Ртуть</p><p class="three">200.59</p></button></td>
        <td><button type="submit" name="atomicN" value="81"><p class="one">81</p><p class="two">Tl</p><p class="three">Таллий</p><p class="three">204.383</p></button></td>
        <td><button type="submit" name="atomicN" value="82"><p class="one">82</p><p class="two">Pb</p><p class="three">Свинец</p><p class="three">207.2</p></button></td>
        <td><button type="submit" name="atomicN" value="83"><p class="one">83</p><p class="two">Bi</p><p class="three">Висмут</p><p class="three">208.9804</p></button></td>
        <td><button type="submit" name="atomicN" value="84"><p class="one">84</p><p class="two">Po</p><p class="three">Полоний</p><p class="three">208.9824</p></button></td>
        <td><button type="submit" name="atomicN" value="85"><p class="one">85</p><p class="two">At</p><p class="three">Астат</p><p class="three">209.9871</p></button></td>
        <td><button type="submit" name="atomicN" value="86"><p class="one">86</p><p class="two">Rn</p><p class="three">Радон</p><p class="three">222.0176</p></button></td>
    </tr>

    <tr>
        <td><button type="submit" name="atomicN" value="87"><p class="one">87</p><p class="two">Fr</p><p class="three">Франций</p><p class="three">223.0197</p></button></td>
        <td><button type="submit" name="atomicN" value="88"><p class="one">88</p><p class="two">Ra</p><p class="three">Радий</p><p class="three">226.0254</p></button></td>
        <td><p class="f">89-103</p></td>
        <td><button type="submit" name="atomicN" value="104"><p class="one">104</p><p class="two">Rf</p><p class="three">Резерфордий</p><p class="three">261</p></button></td>
        <td><button type="submit" name="atomicN" value="105"><p class="one">105</p><p class="two">Db</p><p class="three">Дубний</p><p class="three">268</p></button></td>
        <td><button type="submit" name="atomicN" value="106"><p class="one">106</p><p class="two">Sg</p><p class="three">Сиборгий</p><p class="three">271</p></button></td>
        <td><button type="submit" name="atomicN" value="107"><p class="one">107</p><p class="two">Bh</p><p class="three">Борий</p><p class="three">267</p></button></td>
        <td><button type="submit" name="atomicN" value="108"><p class="one">108</p><p class="two">Hs</p><p class="three">Хассий</p><p class="three">269</p></button></td>
        <td><button type="submit" name="atomicN" value="109"><p class="one">109</p><p class="two">Mt</p><p class="three">Метнерий</p><p class="three">267</p></button></td>
        <td><button type="submit" name="atomicN" value="110"><p class="one">110</p><p class="two">Ds</p><p class="three">Дармштадтий</p><p class="three">281</p></button></td>
        <td><button type="submit" name="atomicN" value="111"><p class="one">111</p><p class="two">Rg</p><p class="three">Рентгений</p><p class="three">281</p></button></td>
        <td><button type="submit" name="atomicN" value="112"><p class="one">112</p><p class="two">Cn</p><p class="three">Коперниций</p><p class="three">285</p></button></td>
        <td><button type="submit" name="atomicN" value="113"><p class="one">113</p><p class="two">Nh</p><p class="three">Нихоний</p><p class="three">286</p></button></td>
        <td><button type="submit" name="atomicN" value="114"><p class="one">114</p><p class="two">Fl</p><p class="three">Флеровий</p><p class="three">289</p></button></td>
        <td><button type="submit" name="atomicN" value="115"><p class="one">115</p><p class="two">Mc</p><p class="three">Московий</p><p class="three">289</p></button></td>
        <td><button type="submit" name="atomicN" value="116"><p class="one">116</p><p class="two">Lv</p><p class="three">Ливерморий</p><p class="three">293</p></button></td>
        <td><button type="submit" name="atomicN" value="117"><p class="one">117</p><p class="two">Ts</p><p class="three">Теннессин</p><p class="three">294</p></button></td>
        <td><button type="submit" name="atomicN" value="118"><p class="one">118</p><p class="two">Og</p><p class="three">Оганесон</p><p class="three">294</p></button></td>
    </tr>

    <tr>
        <td colspan="18" class="white" width="40em" height="40em"></td>
    </tr>

    <tr>
        <td colspan="3" class="white" ></td>
        <td><button type="submit" name="atomicN" value="57"><p class="one">57</p><p class="two">La</p><p class="three">Лантан</p><p class="three">138.9055</p></button></td>
        <td><button type="submit" name="atomicN" value="58"><p class="one">58</p><p class="two">Ce</p><p class="three">Цезий</p><p class="three">140.116</p></button></td>
        <td><button type="submit" name="atomicN" value="59"><p class="one">59</p><p class="two">Pr</p><p class="three">Празеодим</p><p class="three">140.9077</p></button></td>
        <td><button type="submit" name="atomicN" value="60"><p class="one">60</p><p class="two">Nd</p><p class="three">Неодим</p><p class="three">144.24</p></button></td>
        <td><button type="submit" name="atomicN" value="61"><p class="one">61</p><p class="two">Pm</p><p class="three">Прометий</p><p class="three">144.9128</p></button></td>
        <td><button type="submit" name="atomicN" value="62"><p class="one">62</p><p class="two">Sm</p><p class="three">Самарий</p><p class="three">150.36</p></button></td>
        <td><button type="submit" name="atomicN" value="63"><p class="one">63</p><p class="two">Eu</p><p class="three">Европий</p><p class="three">151.96</p></button></td>
        <td><button type="submit" name="atomicN" value="64"><p class="one">64</p><p class="two">Gd</p><p class="three">Гадолиний</p><p class="three">157.25</p></button></td>
        <td><button type="submit" name="atomicN" value="65"><p class="one">65</p><p class="two">Tb</p><p class="three">Тербий</p><p class="three">159.9254</p></button></td>
        <td><button type="submit" name="atomicN" value="66"><p class="one">66</p><p class="two">Dy</p><p class="three">Дубний</p><p class="three">162.50</p></button></td>
        <td><button type="submit" name="atomicN" value="67"><p class="one">67</p><p class="two">Ho</p><p class="three">Гольмий</p><p class="three">164.9304</p></button></td>
        <td><button type="submit" name="atomicN" value="68"><p class="one">68</p><p class="two">Er</p><p class="three">Эрбий</p><p class="three">167.26</p></button></td>
        <td><button type="submit" name="atomicN" value="69"><p class="one">69</p><p class="two">Tm</p><p class="three">Тулий</p><p class="three">168.9342</p></button></td>
        <td><button type="submit" name="atomicN" value="70"><p class="one">70</p><p class="two">Yb</p><p class="three">Иттербий</p><p class="three">173.04</p></button></td>
        <td><button type="submit" name="atomicN" value="71"><p class="one">71</p><p class="two">Lu</p><p class="three">Лютеций</p><p class="three">174.967</p></button></td>
    </tr>
    <tr>
        <td colspan="3" class="white" ></td>
        <td><button type="submit" name="atomicN" value="89"><p class="one">89</p><p class="two">Ac</p><p class="three">Актиний</p><p class="three">227.0278</p></button></td>
        <td><button type="submit" name="atomicN" value="90"><p class="one">90</p><p class="two">Th</p><p class="three">Торий</p><p class="three">232.0381</p></button></td>
        <td><button type="submit" name="atomicN" value="91"><p class="one">91</p><p class="two">Pa</p><p class="three">Протактиний</p><p class="three">231.0359</p></button></td>
        <td><button type="submit" name="atomicN" value="92"><p class="one">92</p><p class="two">U</p><p class="three">Уран</p><p class="three">238.0289</p></button></td>
        <td><button type="submit" name="atomicN" value="93"><p class="one">93</p><p class="two">Np</p><p class="three">Нептуний</p><p class="three">237.0482</p></button></td>
        <td><button type="submit" name="atomicN" value="94"><p class="one">94</p><p class="two">Pu</p><p class="three">Плутоний</p><p class="three">244.0642</p></button></td>
        <td><button type="submit" name="atomicN" value="95"><p class="one">95</p><p class="two">Am</p><p class="three">Америций</p><p class="three">243.0614</p></button></td>
        <td><button type="submit" name="atomicN" value="96"><p class="one">96</p><p class="two">Cm</p><p class="three">Кюрий</p><p class="three">247.0703</p></button></td>
        <td><button type="submit" name="atomicN" value="97"><p class="one">97</p><p class="two">Bk</p><p class="three">Берклий</p><p class="three">247.0703</p></button></td>
        <td><button type="submit" name="atomicN" value="98"><p class="one">98</p><p class="two">Cf</p><p class="three">Калифорний</p><p class="three">251.0796</p></button></td>
        <td><button type="submit" name="atomicN" value="99"><p class="one">99</p><p class="two">Es</p><p class="three">Эйнштейний</p><p class="three">252.0828</p></button></td>
        <td><button type="submit" name="atomicN" value="100"><p class="one">100</p><p class="two">Fm</p><p class="three">Фермий</p><p class="three">257.0951</p></button></td>
        <td><button type="submit" name="atomicN" value="101"><p class="one">101</p><p class="two">Md</p><p class="three">Менделевий</p><p class="three">258.0986</p></button></td>
        <td><button type="submit" name="atomicN" value="102"><p class="one">102</p><p class="two">No</p><p class="three">Нобелий</p><p class="three">259.1009</p></button></td>
        <td><button type="submit" name="atomicN" value="103"><p class="one">103</p><p class="two">Lr</p><p class="three">Лоуренсий</p><p class="three">260.1054</p></button></td>
    </tr>



</table>
</form:form>
</body>
</body>
</html>
