# Markdown | CommonMark

## Официальная документация

- [Изучите Markdown за 60 сек (en)](https://commonmark.org/help/)
- [10 минутный урок (en)](https://commonmark.org/help/tutorial/)
- Стандартная, однозначная синтаксическая [спецификация для Markdown](https://spec.commonmark.org/)

## Краткая помощь на русском

<html>
  <style>
    .code-block {
        background: #F1F1F1;
        border: 1px solid #E1E1E1;
        border-radius: 4px;
        font-size: 90%;
        padding: .2rem .5rem;
        font-family: 'Roboto Mono', 'Monaco', 'Menlo', 'Ubuntu Mono', 'Consolas', 'source-code-pro', monospace;
    }    
  </style>
  <table>
    <thead>
      <tr>
        <th>Образец</th>
        <th>Или</th>
        <th>&hellip; Результат</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>*Курсив*</td>
        <td>_Курсив_</td>
        <td><em>Курсив</em></td>
      </tr>
      <tr>
        <td>**Жирный**</td>
        <td>__Жирный__</td>
        <td><strong>Жирный</strong></td>
      </tr>
      <tr>
        <td>
          # Заголовок 1
        </td>
        <td>
          Заголовок 1<br />
          =========
        </td>
        <td>
          <h1 class="smaller-h1">Заголовок 1</h1>
        </td>
      </tr>
      <tr>
        <td>
          ## Заголовок 2
        </td>
        <td>
          Заголовок 2<br />
          ---------
        </td>
        <td>
          <h2 class="smaller-h2">Заголовок 2</h2>
        </td>
      </tr>
      <tr>
        <td>
          [Текст ссылки](http://a.com)
        </td>
        <td>
          [Текст ссылки][1]<br />
          &#8942;<br />
          [1]: http://b.org
        </td>
        <td><a href="https://commonmark.org/">Текст ссылки</a></td>
      </tr>
      <tr>
        <td>
          ![Image alt](http://url/a.png)
        </td>
        <td>
          ![Image alt][1]<br />
          &#8942;<br />
          [1]: http://url/b.jpg
        </td>
        <td>
          <img src="images/markdown.png" width="36" height="36" alt="Image alt" />
        </td>
      </tr>
      <tr>
        <td>
          &gt; Блок цитаты
        </td>
        <td>
          &nbsp;
        </td>
        <td>
          <blockquote>Блок цитаты</blockquote>
        </td>
      </tr>
      <tr>
        <td>
          <p>
            * Элемент списка 1<br />
            * Элемент списка 2<br />
            * Элемент списка 3
          </p>
        </td>
        <td>
          <p>
            - Элемент списка 1<br />
            - Элемент списка 2<br />
            - Элемент списка 3<br />
          </p>
        </td>
        <td>
          <ul>
            <li>Элемент списка 1</li>
            <li>Элемент списка 2</li>
            <li>Элемент списка 3</li>
          </ul>
        </td>
      </tr>
      <tr>
        <td>
          <p>
            1. Первый<br />
            2. Второй<br />
            3. Третий
          </p>
        </td>
        <td>
          <p>
            1) Первый<br />
            2) Второй<br />
            3) Третий
          </p>
        </td>
        <td>
          <ol>
            <li>Первый</li>
            <li>Второй</li>
            <li>Третий</li>
          </ol>
        </td>
      </tr>
      <tr>
        <td>
          Горизонтальная линия<br />
          <br />
          ---
        </td>
        <td>
          Горизонтальная линия<br />
          <br />
          ***
        </td>
        <td>
          Горизонтальная линия
          <hr />
        </td>
      </tr>
      <tr>
        <td>
          `Встроенный код` с обратными кавычками
        </td>
        <td>
          &nbsp;
        </td>
        <td>
          <code>Встроенный код</code> с обратными кавычками
        </td>
      </tr>
      <tr>
        <td>
          ```<br />
          # блок кода<br />
          с '3-мя обратными кавычками'<br />
          или<br />
          с 'отступом в 4 пробела'<br />
          ```
        </td>
        <td>
          <span style="color: #888;">····</span># блок кода<br />
          <span style="color: #888;">····</span>с '3-мя обратными кавычками'<br />
          <span style="color: #888;">····</span>или<br />
          <span style="color: #888;">····</span>с 'отступом в 4 пробела'
        </td>
        <td>
          <div class="code-block">
            # блок кода
            <br /> с '3-мя обратными кавычками'
            <br /> или
            <br /> с 'отступом в 4 пробела'
          </div>
        </td>
      </tr>
    </tbody>
  </table>
</html>
