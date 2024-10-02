
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Custom Language Translator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        textarea {
            width: 100%;
            height: 100px;
        }
        button {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1>Custom Language Translator</h1>
    <textarea id="inputText" placeholder="Enter custom language text here..."></textarea>
    <button onclick="translate()">Translate</button>
    <h2>Translation:</h2>
    <textarea id="outputText" readonly></textarea>

    <script>
        function translate() {
            const inputText = document.getElementById("inputText").value;
            let translatedText = ""; // Store the translation without spaces

            // Process the input text
            for (let i = 0; i < inputText.length; i++) {
                const char = inputText[i];

                if (char === "u") {
                    translatedText += "spacetime";
                } else if (char === "e") {
                    translatedText += "existence";
                } else if (char === "a") {
                    translatedText += "something";
                } else if (char === "i") {
                    translatedText += "everything";
                } else if (char === "<" && inputText[i + 1] === ",") {
                    translatedText += "you"; // You with comma represents opposite
                    i++; // Skip the comma
                } else if (char === "!") {
                    translatedText += "position";
                } else if (char === "/") {
                    translatedText += "speaking";
                } else if (char === "+") {
                    translatedText += "addition";
                } else if (char === "-") {
                    translatedText += "previous"; // Previous word is a verb
                } else if (char === "o") {
                    translatedText += "1"; // Normal is binary 1
                } else if (char === "0") {
                    translatedText += "0"; // Opposite is represented as 0
                } else if (char === ",") {
                    translatedText += "0"; // Comma represents opposite
                } else if (char === ".") {
                    if (inputText[i + 1] === "^") {
                        translatedText += "P"; // Positive emotion
                        i++; // Skip the caret
                    } else if (inputText[i + 1] === "<") {
                        translatedText += "N"; // Negative emotion
                        i++; // Skip the caret
                    } else {
                        translatedText += "."; // Emotion
                    }
                } else if (char === ">") {
                    translatedText += "amount"; // Amount
                } else {
                    translatedText += char; // Default to the original character
                }
            }

            document.getElementById("outputText").value = translatedText;
        }
    </script>
</body>
</html>
