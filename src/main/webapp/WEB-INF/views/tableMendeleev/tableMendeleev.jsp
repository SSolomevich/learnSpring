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
            border: 1px solid #000; /* Рамка вокруг таблицы */
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
        td.white{
            /*border-color: white black;*/
            border-style: none;
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
        <td colspan="10" class="white" ></td>
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



</table>
</form:form>
</body>
</body>
</html>
