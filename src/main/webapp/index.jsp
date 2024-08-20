<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Basic Calculator</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
        }
        .calculator {
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 200px;
        }
        .display {
            background-color: #222;
            color: #fff;
            padding: 10px;
            text-align: right;
            font-size: 1.5em;
            border-bottom: 1px solid #ccc;
        }
        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
        }
        .button {
            background-color: #eee;
            border: 1px solid #ccc;
            padding: 20px;
            text-align: center;
            font-size: 1.2em;
            cursor: pointer;
        }
        .button.operator {
            background-color: #f0ad4e;
            color: white;
        }
        .button.operator:hover {
            background-color: #ec971f;
        }
        .button:hover {
            background-color: #ddd;
        }
        .button:active {
            background-color: #ccc;
        }
    </style>
</head>
<body>
    <div class="calculator">
        <div class="display" id="display">0</div>
        <div class="buttons">
            <div class="button" onclick="clearDisplay()">C</div>
            <div class="button" onclick="appendCharacter('/')">/</div>
            <div class="button" onclick="appendCharacter('*')">*</div>
            <div class="button operator" onclick="appendCharacter('-')">-</div>
            <div class="button" onclick="appendCharacter('7')">7</div>
            <div class="button" onclick="appendCharacter('8')">8</div>
            <div class="button" onclick="appendCharacter('9')">9</div>
            <div class="button operator" onclick="appendCharacter('+')">+</div>
            <div class="button" onclick="appendCharacter('4')">4</div>
            <div class="button" onclick="appendCharacter('5')">5</div>
            <div class="button" onclick="appendCharacter('6')">6</div>
            <div class="button operator" onclick="calculate()">=</div>
            <div class="button" onclick="appendCharacter('1')">1</div>
            <div class="button" onclick="appendCharacter('2')">2</div>
            <div class="button" onclick="appendCharacter('3')">3</div>
            <div class="button" onclick="appendCharacter('0')" style="grid-column: span 2;">0</div>
        </div>
    </div>

    <script>
        function clearDisplay() {
            document.getElementById('display').innerText = '0';
        }

        function appendCharacter(character) {
            let display = document.getElementById('display');
            if (display.innerText === '0') {
                display.innerText = character;
            } else {
                display.innerText += character;
            }
        }

        function calculate() {
            let display = document.getElementById('display');
            try {
                display.innerText = eval(display.innerText);
            } catch {
                display.innerText = 'Error';
            }
        }
    </script>
</body>
</html>

