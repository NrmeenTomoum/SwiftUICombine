# SwiftUICombine
This is my first trier for SwiftUI and Cobine 
Implement MVVM with Combine in SwiftUI


https://user-images.githubusercontent.com/19241793/163470688-872e08e3-3e6a-45f5-9481-811d190ff154.mov

# streaming-markdown-parser

Please read this entire page.

## Task
Your task is to build a streaming Markdown parser. 

Imagine that ChatGPT/Claude/Cursor is streaming in chunks of Markdown text. You're writing the logic for parsing and styling that text on the fly.

Please try to get the parsing logic for inline codeblocks (e.g. `print("hello world")`) and codeblocks (e.g. ```print("hello world")```) working. If you still have time after, please tackle other markdown elements (headings, italics, bold, lists).

Your code goes in `src/MarkdownParser.ts`. You should edit the last method. The starter code streams in the raw markdown with no parsing and no styling.

## Instructions for running:

```
npm install
npm run build
```

Then open `dist/index.html` in your browser

Then, to enable hot reloading:
```
npm run dev
```

## Requirements
1. Your parser should be optimistic. When you see the start of an inline code block or code block, you should immediately style the element accordingly.
    - E.g. you should immediately display  `print("hello wor` instead of "\`print("hello wor."
2. While the text is streamed in, the user should be able to select the text that has already been streamed in and copy it (i.e. you cannot replace the entire HTML DOM every time).

As a reminder, please try to get inline codeblocks and codeblocks working. These are single backticks and triple backticks. You should ignore italics, bold, headings, etc. until you've finished this.

## What we care about

You will be evaluated on:
  * Did you submit something in time?
  * How much did you get done in the alotted time? Were you on the right track? Did you get inline codeblocks and codeblocks working? 

We do NOT care about:
  * Your HTML/CSS/web skills
    * Don't worry about the styling, focus on the parsing code and make sure inline codeblocks and codeblocks are visually differentiated on the screen in some way
  * Code quality (mostly)
    * Please choose fast over clean 
  * Big o notation performance 
  * Getting every single edge case 
    * That said, you should handle the fact that tokens can split the triple backticks. And that there can be multiple state transitions within one token (e.g. backtick, word, backtick, word, tripple backtick is a valid token)

## Other notes
* You do not need any fancy algorithms or data structures for this. This problem is meant to be relatively straightforward, and your code's efficiency doesn't matter.
* Feel free to use the Internet and an AI autocomplete (e.g. Cursor Tab, Copilot). Please do not use any frontier models (sonnet, 4o, o1, etc.). 
* Don't import any dependencies.
